using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

using System.IO;
using System.Drawing.Printing;
using System.IO.Ports;
using ChronoTerminal.Properties;
using System.Threading;

namespace ChronoTerminal
{
    public partial class frmMain : Form
    {
        int rxState = 0;
        string[] Desc = new string [6];
        string user = "";
        string ExprDate = "";
        int s = 0;
        int rxRes;
        int rxChn;
        byte[] cmd = new byte[3];
        int[] exprTime = new int[200];
        int[] sMinimum = new int[6];
        int[] sMaximum = new int[6];
        int[] sRef = new int[6];
        float [] sJitter = new float[6];
        float exprJitter = 1000000000;
        int exprTotSys = 0;
        int PrintingPages = 0;
        double TotPages;
        int ColToPrint;
        TextBox[] txtSignatures = new TextBox[5];
        CheckBox[] chkSignatures = new CheckBox[5];
        bool ActiveMode = false;

        ExprSettings stng = ExprSettings.Default;
        public frmMain()
        {
            stng.Reload();
            
            InitializeComponent();
            // Set the Paper Size Settings Default to A4, Portrait
            PaperSize ps = new PaperSize();
            ps.RawKind = (int)PaperKind.A4;
            docPrint.DefaultPageSettings.PaperSize = ps;
            docPrint.DefaultPageSettings.Landscape = false;
            // Initialze the Component Values
            txtChannelUsed.Text = stng.TotChannels;
            txtTotSystems.Text = stng.TotSystems;
            txtTestName.Text = stng.TestName;
            txtDetLot.Text = stng.DetLot;
            txtFu.Text = stng.FU;
            txtSig1.Text = stng.Sig1;
            txtSig2.Text = stng.Sig2;
            txtSig3.Text = stng.Sig3;
            txtSig4.Text = stng.Sig4;
            txtSig5.Text = stng.Sig5;
            chkSig1.Checked = stng.ChkSig1;
            chkSig2.Checked = stng.ChkSig2;
            chkSig3.Checked = stng.ChkSig3;
            chkSig4.Checked = stng.ChkSig4;
            chkSig5.Checked = stng.ChkSig5;
            user = stng.user;

            // Determain if the list of com port names has changed since last checked
            string selected = RefreshComPortList(cmbPortName.Items.Cast<string>(), cmbPortName.SelectedItem as string, comport.IsOpen);
            
            // If there was an update, then update the control showing the user the list of port names
            if (!String.IsNullOrEmpty(selected))
            {
                cmbPortName.Items.Clear();
                cmbPortName.Items.AddRange(OrderedPortNames());
                cmbPortName.SelectedItem = selected;
            }
            
            // If it is still avalible, select the last com port used
            if (cmbPortName.Items.Contains(stng.PortName)) cmbPortName.Text = stng.PortName;
            else if (cmbPortName.Items.Count > 0) cmbPortName.SelectedIndex = cmbPortName.Items.Count - 1;
            else
            {
                MessageBox.Show(this, "There are no COM Ports detected on this computer.\nPlease install a COM Port and restart this app.", "No COM Ports Installed", MessageBoxButtons.OK, MessageBoxIcon.Error);
                this.Close();
            }
            // Make Array of Check Box and Text Boxes for Signatures
            txtSignatures[0] = txtSig1;
            txtSignatures[1] = txtSig2;
            txtSignatures[2] = txtSig3;
            txtSignatures[3] = txtSig4;
            txtSignatures[4] = txtSig5;
            chkSignatures[0] = chkSig1;
            chkSignatures[1] = chkSig2;
            chkSignatures[2] = chkSig3;
            chkSignatures[3] = chkSig4;
            chkSignatures[4] = chkSig5;
            InputBoxResult test =  InputBox.Show ("Enter the User Name for the Experiment \n i.e. the title for the printing","User Name",user);
            if (test.ReturnCode == DialogResult.OK)
            {
                user = test.Text;
            }
        }
        private string[] OrderedPortNames()
        {
            // Just a placeholder for a successful parsing of a string to an integer
            int num;

            // Order the serial port names in numberic order (if possible)
            return SerialPort.GetPortNames().OrderBy(a => a.Length > 3 && int.TryParse(a.Substring(3), out num) ? num : 0).ToArray();
        }

        private string RefreshComPortList(IEnumerable<string> PreviousPortNames, string CurrentSelection, bool PortOpen)
        {
            // Create a new return report to populate
            string selected = null;

            // Retrieve the list of ports currently mounted by the operating system (sorted by name)
            string[] ports = SerialPort.GetPortNames();

            // First determain if there was a change (any additions or removals)
            bool updated = PreviousPortNames.Except(ports).Count() > 0 || ports.Except(PreviousPortNames).Count() > 0;

            // If there was a change, then select an appropriate default port
            if (updated)
            {
                // Use the correctly ordered set of port names
                ports = OrderedPortNames();

                // Find newest port if one or more were added
                string newest = SerialPort.GetPortNames().Except(PreviousPortNames).OrderBy(a => a).LastOrDefault();

                // If the port was already open... (see logic notes and reasoning in Notes.txt)
                if (PortOpen)
                {
                    if (ports.Contains(CurrentSelection)) selected = CurrentSelection;
                    else if (!String.IsNullOrEmpty(newest)) selected = newest;
                    else selected = ports.LastOrDefault();
                }
                else
                {
                    if (!String.IsNullOrEmpty(newest)) selected = newest;
                    else if (ports.Contains(CurrentSelection)) selected = CurrentSelection;
                    else selected = ports.LastOrDefault();
                }
            }

            // If there was a change to the port list, return the recommended default selection
            return selected;
        }
        private void RefreshComPortList()
        {
            // Determain if the list of com port names has changed since last checked
            string selected = RefreshComPortList(cmbPortName.Items.Cast<string>(), cmbPortName.SelectedItem as string, comport.IsOpen);

            // If there was an update, then update the control showing the user the list of port names
            if (!String.IsNullOrEmpty(selected))
            {
                cmbPortName.Items.Clear();
                cmbPortName.Items.AddRange(OrderedPortNames());
                cmbPortName.SelectedItem = selected;
            }
        }
        
        private void mnuFileOpen_Click(object sender, EventArgs e)
        {
            dlgOpen.InitialDirectory = @"C:\Watts A Loan";

            if (dlgOpen.ShowDialog() == DialogResult.OK)
            {
                FileStream fs = new FileStream(this.dlgOpen.FileName,
                       FileMode.Open, FileAccess.Read, FileShare.Read);
                BinaryReader br = new BinaryReader(fs);

                txtChannelUsed.Text = br.ReadString ();
                txtTotSystems.Text  = br.ReadString ();
                txtTestName.Text  = br.ReadString ();
                txtDetLot.Text  = br.ReadString ();
                txtFu.Text  = br.ReadString ();
                ExprDate = br.ReadString();
                txtSig1.Text  = br.ReadString ();
                txtSig2.Text  = br.ReadString ();
                txtSig3.Text = br.ReadString (); 
                txtSig4.Text  = br.ReadString ();
                txtSig5.Text  = br.ReadString ();
                chkSig1.Checked = br.ReadBoolean ();
                chkSig2.Checked = br.ReadBoolean ();
                chkSig3.Checked = br.ReadBoolean ();
                chkSig4.Checked = br.ReadBoolean ();
                chkSig5.Checked = br.ReadBoolean ();
                int sFromFile = br.ReadInt32 ();
                for (int i = 0; i < sFromFile; i++)
                    Desc[i] = br.ReadString ();
                s = 0;
                for (int i = 0; i < (32 * sFromFile); i++)
                {
                    exprTime[i] = br.ReadInt32 ();
                    if(i%32 == 31)  UpdateResults ();
                }
                br.Close();
                fs.Close();
            }

        }

        private void mnuFileSave_Click(object sender, EventArgs e)
        {
            // Display the Save dialog box and find out if the user clicked OK
            if (dlgSave.ShowDialog() == DialogResult.OK)
            {
                // Create a new file using the name of the Save dialog box
                FileStream fs = new FileStream(dlgSave.FileName,
                           FileMode.Create, FileAccess.Write, FileShare.Write);
                BinaryWriter br = new BinaryWriter(fs);

                // Write each value in the file
                br.Write(txtChannelUsed.Text);
                br.Write(txtTotSystems.Text);
                br.Write(txtTestName.Text);
                br.Write(txtDetLot.Text);
                br.Write(txtFu.Text);
                br.Write(ExprDate);
                br.Write(txtSig1.Text);
                br.Write(txtSig2.Text);
                br.Write(txtSig3.Text);
                br.Write(txtSig4.Text);
                br.Write(txtSig5.Text);
                br.Write(chkSig1.Checked);
                br.Write(chkSig2.Checked);
                br.Write(chkSig3.Checked);
                br.Write(chkSig4.Checked);
                br.Write(chkSig5.Checked);

                br.Write(s);
                for (int i = 0; i < s; i++)
                    br.Write(Desc[i]);
                for (int i = 0; i < (32 * s); i++)
                {
                    br.Write (exprTime [i]);
                }

                br.Close();
                fs.Close();
            }

        }
        private void PrintColumn(System.Drawing.Printing.PrintPageEventArgs ee,int Col)
        {
            int rPos = 0;
            // Print the Column Header
            System.Drawing.Font fnt = new Font("Verdana", 12, FontStyle.Regular );
            ee.Graphics.DrawString(Desc[Col ], fnt,Brushes.Black, 35 + (Col%2)*57, 27);
            ee.Graphics.DrawString("Interval       Diff:", fnt, Brushes.Black, 38 + (Col % 2) * 57, 32);
            fnt = new Font("Courier New", 12, FontStyle.Regular);
            // Print the Colum Body
            for (int i = 0; i < int.Parse(txtChannelUsed.Text); i++)
            {
                rPos = 40 + i * 7;
                if (exprTime[i+Col*32] == 0)
                {
                    ee.Graphics.DrawString("OVERFLOW ", fnt, Brushes.Black, 33 + (Col % 2) * 57, rPos);
                    ee.Graphics.DrawString("OVERFLOW ", fnt, Brushes.Black, 62 + (Col % 2) * 57, rPos);
                }
                else
                {
                    if (exprTime[i + Col * 32] == sMinimum[Col] || exprTime[i + Col * 32] == sMaximum[Col])
                        fnt = new Font("Courier New", 12, FontStyle.Bold);
                    ee.Graphics.DrawString(exprTime[i + Col * 32].ToString("000000000"), fnt, Brushes.Black, 33 + (Col % 2) * 57, rPos);
                    ee.Graphics.DrawString((exprTime[i + Col * 32] - sMinimum[Col]).ToString("000000000"), fnt, Brushes.Black, 62 + (Col % 2) * 57, rPos);
                    fnt = new Font("Courier New", 12, FontStyle.Regular );
                }
            }
            // Print the System Jitter
            rPos = rPos + 7;
            ee.Graphics.DrawString("Jitter: ±" + sJitter[Col].ToString("0.0"), fnt, Brushes.Black, 33 + (Col % 2) * 57, rPos);

        }
        private void OfficialUse(System.Drawing.Printing.PrintPageEventArgs ee)
        {
            System.Drawing.Font fnt = new Font("Times New Roman", 12, FontStyle.Regular);
            ee.Graphics.DrawString("Test:", fnt,Brushes.Black, 146, 40);
            ee.Graphics.DrawString("Lot#:", fnt, Brushes.Black, 146, 50);
            ee.Graphics.DrawString("FU#:", fnt, Brushes.Black, 146, 60);
            ee.Graphics.DrawString("Jitter:", fnt, Brushes.Black, 146, 70);
            ee.Graphics.DrawString("Date:", fnt, Brushes.Black, 146, 80);

            fnt = new Font("Courier New", 12, FontStyle.Regular     );
            ee.Graphics.DrawString(txtTestName.Text, fnt, Brushes.Black, 176 - ee.Graphics.MeasureString(txtTestName.Text, fnt).Width/2, 40);
            ee.Graphics.DrawString(txtDetLot.Text, fnt, Brushes.Black, 176 - ee.Graphics.MeasureString(txtDetLot.Text, fnt).Width / 2, 50);
            ee.Graphics.DrawString(txtFu.Text, fnt, Brushes.Black, 176 - ee.Graphics.MeasureString(txtFu.Text, fnt).Width / 2, 60);
            ee.Graphics.DrawString(txtMainJitter.Text, fnt, Brushes.Black, 176 - ee.Graphics.MeasureString(txtMainJitter.Text, fnt).Width / 2, 70);
            ee.Graphics.DrawString(ExprDate , fnt, Brushes.Black, 176 - ee.Graphics.MeasureString("01-FEB-11", fnt).Width / 2, 80);
            // draw horizontal line as underlines
            ee.Graphics.DrawLine(new Pen(Color.Black, 0.25f), 158, 44, 193, 44);
            ee.Graphics.DrawLine(new Pen(Color.Black, 0.25f), 158, 54, 193, 54);
            ee.Graphics.DrawLine(new Pen(Color.Black, 0.25f), 158, 64, 193, 64);
            ee.Graphics.DrawLine(new Pen(Color.Black, 0.25f), 158, 74, 193, 74);
            ee.Graphics.DrawLine(new Pen(Color.Black, 0.25f), 158, 84, 193, 84);
            // draw signature lines and text
            fnt = new Font("Times New Roman", 10, FontStyle.Italic   );
            for (int i=0;i<5;i++)
            {
                if(chkSignatures [i].Checked )
                {
                    ee.Graphics.DrawLine(new Pen(Color.Black, 0.25f), 154, 125+i*25, 184, 125+i*25);
                    ee.Graphics.DrawString(txtSignatures [i].Text ,fnt,Brushes.Black, 
                        169 - ee.Graphics.MeasureString (txtSignatures [i].Text,fnt).Width/2,
                        126+i*25);
                }
                
            }
        }
        private void PageSetup(System.Drawing.Printing.PrintPageEventArgs ee, int PageNo)
        {
            // Draw the table
            ee.Graphics.DrawRectangle(new Pen(Color.Black, 0.25f), 20, 25, 176, 250);
            // Draw the vertical lines
            ee.Graphics.DrawLine(new Pen(Color.Black, 0.25f), 30, 25, 30, 275);
            ee.Graphics.DrawLine(new Pen(Color.Black, 0.25f), 87, 25, 87, 275);
            ee.Graphics.DrawLine(new Pen(Color.Black, 0.25f), 144, 25, 144, 275);
            // draw horizontal line
            ee.Graphics.DrawLine(new Pen(Color.Black, 0.25f), 20, 38, 144, 38);
            // Draw the Heading
            System.Drawing.Font fnt = new Font("Verdana", 14, FontStyle.Bold  );
            //ee.Graphics.DrawString(user.ToUpper, fnt, Brushes.Black, 60, 15);
            
            ee.Graphics.DrawString(user.ToUpper (), fnt, Brushes.Black, 75-user.Length/2 , 15);
            // Draw the Serial No in Column 0
            fnt = new Font("Verdana", 12, FontStyle.Regular );
            ee.Graphics.DrawString("Sr", fnt, Brushes.Black, 22, 29);
            fnt = new Font("Courier New", 12, FontStyle.Regular);
            for (int i=0; i < int.Parse (txtChannelUsed .Text ); i++)
            {
                ee.Graphics.DrawString((i+1).ToString ("00"), fnt, Brushes.Black, 22, 40 + i * 7);
            }
            // Draw the Page No
            fnt = new Font("Times New Roman", 8, FontStyle.Regular );
            ee.Graphics.DrawString("Page" + (PageNo+1).ToString ()+"/"+ TotPages.ToString ()+ ": by Sajjad", fnt, Brushes.Black, 165, 286);
            ee.Graphics.DrawString("*"+txtComments .Text , fnt, Brushes.Black, 20, 276);
        }

        private void docPrint_PrintPage(object sender, System.Drawing.Printing.PrintPageEventArgs e)
        {
            e.Graphics.PageUnit = GraphicsUnit.Millimeter;
            switch (PrintingPages)
            {
                case 0:// Page 1, Col 1,2
                    OfficialUse(e);
                    PageSetup(e, 0);
                    PrintColumn(e, 0);
                    ColToPrint--;
                    if (ColToPrint == 0)  break;
                    else
                    {
                        PrintColumn(e, 1);
                        ColToPrint--;
                    }
                    break;
                case 1:// Page 2, Col 1,2
                    PageSetup(e, 1);
                    PrintColumn(e, 2);
                    ColToPrint--;
                    if (ColToPrint == 0) break;
                    else
                    {
                        PrintColumn(e, 3);
                        ColToPrint--;
                    }
                    break;
                case 2:// Page 3, Col 1,2
                    PageSetup(e, 2);
                    PrintColumn(e, 4);
                    ColToPrint--;
                    if (ColToPrint == 0) break;
                    else
                    {
                        PrintColumn(e, 5);
                        ColToPrint--;
                    }
                    break;
                default :
                    break;
                }
                PrintingPages++;
                if (ColToPrint == 0) e.HasMorePages = false;
                else e.HasMorePages = true;
        }

        private void mnuFilePrint_Click(object sender, EventArgs e)
        {
            PrintingPages = 0;
            TotPages = (double)s;
            ColToPrint = (int)TotPages;
            TotPages = Math.Ceiling(TotPages / 2);
            if (dlgPrint.ShowDialog() == DialogResult.OK)
            {
                docPrint.Print();
            }

        }

        private void mnuFilePageSetup_Click(object sender, EventArgs e)
        {
            dlgPageSetup.ShowDialog();
        }


        private void mnuFileExit_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void Evaluation_FormClosing(object sender, FormClosingEventArgs e)
        {
            // Save the Last Settings
            stng.PortName = cmbPortName.Text;
            stng.TotChannels = txtChannelUsed.Text;
            stng.TotSystems = txtTotSystems.Text;
            stng.TestName = txtTestName.Text;
            stng.DetLot = txtDetLot.Text;
            stng.FU = txtFu.Text;
            stng.Sig1 = txtSig1.Text;
            stng.Sig2 = txtSig2.Text;
            stng.Sig3 = txtSig3.Text;
            stng.Sig4 = txtSig4.Text;
            stng.Sig5 = txtSig5.Text;
            stng.ChkSig1 = chkSig1.Checked;
            stng.ChkSig2 = chkSig2.Checked;
            stng.ChkSig3 = chkSig3.Checked;
            stng.ChkSig4 = chkSig4.Checked;
            stng.ChkSig5 = chkSig5.Checked;
            stng.user = user;
            stng.Save();
        }

        private void btnOpen_Click(object sender, EventArgs e)
        {
            bool error = false;
            // Get Data From the Form
            exprTotSys = int.Parse (txtTotSystems.Text);
            if (exprTotSys > 6) 
            {
                exprTotSys = 6; 
                txtTotSystems .Text = "6";
            }
            if (exprTotSys < 1) 
            {
                exprTotSys = 1;
                txtTotSystems.Text = "1";
            }

            if (s == exprTotSys)
            {
                MessageBox.Show("All Sessions Completed!", "Session");
                return;
            }

            // Clear Texts
            Desc[s] = "";
            txtOnline.Text = "";
            ExprDate = DateTime.Now.ToString("d-MMM-y");
            // Baudrate = 9600,8,N,2 Handshaking = HW Fixed
            // If the port is open, close it.
            if (comport.IsOpen) comport.Close();
            // Current Com Port
            comport.PortName = cmbPortName.Text;
            // and Open for next experiment
            try
            {
                rxState = 0;
                lblStatus.Text = "Session#" + (s + 1).ToString() +" is Ready....";
                // Open the port
                comport.Open();
                if (ActiveMode == true)
                {
                    cmd[0] = 0x41;
                    comport.Write(cmd, 0, 1);
                }
            }
            catch (UnauthorizedAccessException) { error = true; }
            catch (IOException) { error = true; }
            catch (ArgumentException) { error = true; }

            if (error) MessageBox.Show(this, "Could not open the COM port.  Most likely it is already in use, has been removed, or is unavailable.", "COM Port Unavalible", MessageBoxButtons.OK, MessageBoxIcon.Stop);
        }
        private void UpdateResults()
        {
            // Find minimum and maximum
            sMaximum[s] = 0;
            sMinimum[s] = 1999999999;
            for (int i = (s * 32); i <= (s * 32 + 31); i++)
            {
                if (exprTime[i] < sMinimum[s] && exprTime[i] != 0) sMinimum[s] = exprTime[i];
                if (exprTime[i] > sMaximum[s] && exprTime[i] != 0) sMaximum[s] = exprTime[i];
            }

            // Calculate the System Jitter
            sJitter[s] = (float )(sMaximum[s] - sMinimum[s]);
            sJitter[s] = sJitter[s] / 2;

            // Find the Reference Channel and Update Description of the Systems
            for (int i = (s * 32); i <= (s * 32 + 31); i++)
            {
                if (exprTime[i] == sMinimum[s] && exprTime[i] != 0)
                    Desc[s] = Desc[s].Substring(0, 17) + ((i % 32)+1).ToString("00");
            }
            // Find the exprJitter jitter
            if (sJitter[s] < exprJitter) exprJitter = sJitter[s];
            // Display the Results
            txtResult.Text += "S#" + (s + 1).ToString() + "    "
            + Desc[s]
            + "\r\n" + "---------------------------" + "\r\n";
            for (int i = (s * 32); i <= (s * 32 + 31); i++)
            {
                if (exprTime[i] == 0)
                {
                    txtResult.Text += ((i % 32) + 1).ToString("00") + "    "
                    + "OVERFLOW " + "     " + "OVERFLOW " + "\r\n";
                }
                else
                {
                    txtResult.Text += ((i % 32) + 1).ToString("00") + "    "
                    + exprTime[i].ToString("000000000") + "     "
                    + (exprTime[i] - sMinimum[s]).ToString("000000000");
                    if (exprTime[i] == sMaximum[s])
                        txtResult.Text += " Max";
                    else if (exprTime[i] == sMinimum[s])
                        txtResult.Text += " Min";

                    txtResult.Text += "\r\n";
                }
            }
            // Display System Jitter at the End
            txtResult.Text += "Jitter = ±" + sJitter[s].ToString("0.0") + "\r\n" + "\r\n";
            // Display Main Experiment Jitter int the Text Box
            txtMainJitter.Text = "±" + exprJitter.ToString("0.0");
            // Update the Status
            lblStatus.Text = "Session#" + (s + 1).ToString() + " has Finished...";
            s++;
        }
        delegate void ComportDelegate(int d);
        private void ComportDlgtCallback(int d)
        {
            if (rxState <53 )//Not in Command Mode
            {
                txtOnline.Text += (char)d;
                txtOnline.SelectionStart = txtOnline.Text.Length;
                txtOnline.ScrollToCaret();
            }
            switch (rxState)
            {
                case 0:
                    if (d == 0x33) rxState = 21;
                    break;
                case 21:
                    if (d == 0x32) { rxState = 22; Desc[s] = "32"; }
                    else rxState = 0;
                    break;
                case 22:
                    if (d == 0x56 || d == 0x54) { rxState = 23; Desc[s] += (char)d; }
                    else rxState = 0;
                    break;
                case 23:
                    if (d == 0x50 || d == 0x44) { rxState = 1; Desc[s] += (char)d; }
                    else rxState = 0;
                    break;
                case 1:
                    if (d == 0x3A || d==0x43)
                    {
                        rxState = 2;
                        Desc[s] += (char)d; 
                        lblStatus .Text = "Session#" + (s +1).ToString ()+ " is Running....";
                    }
                    else rxState = 0;
                    break;
                case 2:
                    if (d == 0x0d)
                        rxState = 3;
                    else
                    {
                        Desc[s] += (char)d;
                        rxChn = 0;
                    }
                    break;
                case 3: // 0x0A
                    rxState = 4;
                    break;
                case 4:// Serial No First Digit
                    rxState = 5;
                    break;
                case 5:// Serial No 2nd Digit
                    rxState = 6;
                    break;
                case 6:// Space
                    rxState = 7;
                    break;
                case 7:// Space or D
                    if (d == 0x20)
                    {
                        rxRes = 0; /*rxCnt = 0;*/ rxState = 8;
                    }
                    else if (d == 0x44)
                    {
                        rxRes = 0; /*rxCnt = 0;*/ rxState = 9;
                    }
                    break;
                case 8:
                    /*if (rxCnt == 7)
                    {
                        rxRes = rxRes * 10 + (d-48);
                        rxState = 9;
                    }
                    else
                    {
                        rxRes = rxRes * 10 + (d-48);
                        rxCnt++;
                    }*/
                    if (d == 0x0d)
                    {
                        rxState = 10;
                        //rxRes = rxRes * 10 + (d-48);
                        exprTime[s * 32 + rxChn] = rxRes;
                        rxChn++;
                    }
                    else
                    {
                        rxRes = rxRes * 10 + (d - 48);
                        //rxCnt++;
                    }
                    break;
                case 9:// 0x0D
                    if (d == 0x0d)
                    {
                        rxState = 10;
                        exprTime[s * 32 + rxChn] = rxRes;
                        rxChn++;
                    }
                    break;
                case 10:// 0x0A
                    if (rxChn == 32)
                        rxState = 11;
                    else
                        rxState = 4;
                    break;
                case 11:// Last 0x0D
                    if (d == 0x0d)
                    {
                        rxState = 12;
                        UpdateResults();
                    }
                    break;
                case 12:
                    break;
                case 53:// Threshold 2 for Start Channel
                    lblStartTH.Text = "Start TH=" + d.ToString();
                    rxState = 0;
                    break;
                case 54:// Threshold 1 for Stop Channels
                    lblStopTH.Text = "Stop TH=" + d.ToString();
                    rxState = 0;
                    break;
                case 57:
                    
                    if (d == 0x40)
                        rxState = 58;
                    break;
                case 58:
                    
                    if (d == 0x40)
                        rxState = 55;
                    else
                        rxState = 57;
                    break;
                case 55:// Threshold 1 for Stop Channels
                    timer1.Enabled = false;
                    MessageBox.Show("Connection Done!","COM Port", MessageBoxButtons.OK , MessageBoxIcon.Information  );
                    lblStopTH.Text = "Stop TH=" + d.ToString();
                    rxState = 56;
                    break;
                case 56:// Threshold 2 for Start Channel
                    lblStartTH.Text = "Start TH=" + d.ToString();
                    rxState = 0;
                    break;
                default:
                    break;
            }
        }

        private void comport_DataReceived(object sender, System.IO.Ports.SerialDataReceivedEventArgs e)
        {
            int comm = comport.ReadByte ();
            this.Invoke(new ComportDelegate(ComportDlgtCallback), comm);
        }

        private void mnuNewFile_Click(object sender, EventArgs e)
        {
            s = 0;
            txtResult.Text = "";
            txtOnline.Text = "";
            txtMainJitter.Text = "";
            rxState = 0;
            rxChn = 0;
            //rxCnt = 0;
            rxRes = 0;
        }

        private void mnuAbout_Click(object sender, EventArgs e)
        {
            AboutBox ab = new AboutBox();
            ab.ShowDialog(this);
        }

        private void mnuActiveMode_Click(object sender, EventArgs e)
        {
            bool error = false;
            if (mnuActiveMode.CheckState == CheckState.Unchecked)
            {
                // Active Mode False
                
                lblStartTH.Visible = false ;
                lblStopTH.Visible = false;
                mnuReset.Enabled = false;
                mnuStartTH1.Enabled = false;
                mnuStopTH2.Enabled = false;
                ActiveMode = false ;
            }else
            {
                // Active Mode 
                lblStartTH.Visible = true;
                lblStopTH.Visible = true;
                mnuReset.Enabled = true;
                mnuStartTH1.Enabled = true;
                mnuStopTH2.Enabled = true;
                ActiveMode = true;

                // Clear Texts
                Desc[s] = "";
                txtOnline.Text = "";
                // If the port is open, close it.
                if (comport.IsOpen) comport.Close();
                // Current Com Port
                comport.PortName = cmbPortName.Text;
                // and Open for next experiment
                try
                {
                    rxState = 57;
                    // Open the port
                    comport.Open();
                    // Reset the System
                    //cmd[0] = 0x41;
                    //comport.Write(cmd, 0, 1);
                    Thread.Sleep(100);
                    // Read Stop Channel DAC 1 and Start DAC2
                    timer1.Enabled = true;
                    cmd[0] = 0x46;
                    comport.Write(cmd, 0, 1);
                    Thread.Sleep(100);
                }
                catch (UnauthorizedAccessException) { error = true; }
                catch (IOException) { error = true; }
                catch (ArgumentException) { error = true; }

                if (error) MessageBox.Show(this, "Could not open the COM port.  Most likely it is already in use, has been removed, or is unavailable.", "COM Port Unavalible", MessageBoxButtons.OK, MessageBoxIcon.Stop);
            }
        }

        private void mnuReset_Click(object sender, EventArgs e)
        {
            cmd[0] = 0x41;
            comport.Write(cmd, 0, 1);
        }

        private void mnuStartTH1_Click(object sender, EventArgs e)
        {
            cmd[0] = 0x44;
            comport.Write(cmd, 0, 1);
            cmd[0] = 0x45 + 0x80;
            comport.Write(cmd, 0, 1);
            rxState = 53;
        }

        private void mnuStopTH2_Click(object sender, EventArgs e)
        {
            cmd[0] = 0x43;
            comport.Write(cmd, 0, 1);
            cmd[0] = 0x44 + 0x80;
            comport.Write(cmd, 0, 1);
            rxState = 54;
        }

        /*private void mnuSingle_Click(object sender, EventArgs e)
        {
            cmd[0] = 0x47;
            comport.Write(cmd, 0, 1);
        }

        private void mnuMultiple_Click(object sender, EventArgs e)
        {
            cmd[0] = 0x48;
            comport.Write(cmd, 0, 1);
        }*/

        private void timer1_Elapsed(object sender, System.Timers.ElapsedEventArgs e)
        {
            timer1.Enabled = false;
            MessageBox.Show("Connection Failed!", "COM Port", MessageBoxButtons.OK, MessageBoxIcon.Information);
            // If the port is open, close it.
            if (comport.IsOpen) comport.Close();
            // Active Mode False
            lblStartTH.Visible = false;
            lblStopTH.Visible = false;
            mnuReset.Enabled = false;
            mnuStartTH1.Enabled = false;
            mnuStopTH2.Enabled = false;
            ActiveMode = false;
            //
            mnuActiveMode.CheckState = CheckState.Unchecked;
        }

    }
}
