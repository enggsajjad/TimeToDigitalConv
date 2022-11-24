namespace ChronoTerminal
{
    partial class frmMain
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmMain));
            this.label1 = new System.Windows.Forms.Label();
            this.lblStatus = new System.Windows.Forms.Label();
            this.dlgPrintPreview = new System.Windows.Forms.PrintPreviewDialog();
            this.docPrint = new System.Drawing.Printing.PrintDocument();
            this.dlgPageSetup = new System.Windows.Forms.PageSetupDialog();
            this.dlgPrint = new System.Windows.Forms.PrintDialog();
            this.dlgSave = new System.Windows.Forms.SaveFileDialog();
            this.mnuFile = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuNewFile = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuFileOpen = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuFileSave = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.mnuFilePageSetup = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuFilePrint = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator2 = new System.Windows.Forms.ToolStripSeparator();
            this.mnuFileExit = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuTDC = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuActiveMode = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuReset = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuStartTH1 = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuStopTH2 = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator3 = new System.Windows.Forms.ToolStripSeparator();
            this.mnuHelp = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuAbout = new System.Windows.Forms.ToolStripMenuItem();
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.dlgOpen = new System.Windows.Forms.OpenFileDialog();
            this.chkSig1 = new System.Windows.Forms.CheckBox();
            this.chkSig3 = new System.Windows.Forms.CheckBox();
            this.chkSig2 = new System.Windows.Forms.CheckBox();
            this.chkSig4 = new System.Windows.Forms.CheckBox();
            this.chkSig5 = new System.Windows.Forms.CheckBox();
            this.txtSig1 = new System.Windows.Forms.TextBox();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.txtSig5 = new System.Windows.Forms.TextBox();
            this.txtSig4 = new System.Windows.Forms.TextBox();
            this.txtSig3 = new System.Windows.Forms.TextBox();
            this.txtSig2 = new System.Windows.Forms.TextBox();
            this.txtResult = new System.Windows.Forms.TextBox();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.txtOnline = new System.Windows.Forms.TextBox();
            this.groupBox4 = new System.Windows.Forms.GroupBox();
            this.cmbPortName = new System.Windows.Forms.ComboBox();
            this.txtChannelUsed = new System.Windows.Forms.TextBox();
            this.txtTotSystems = new System.Windows.Forms.TextBox();
            this.txtTestName = new System.Windows.Forms.TextBox();
            this.txtDetLot = new System.Windows.Forms.TextBox();
            this.txtFu = new System.Windows.Forms.TextBox();
            this.txtMainJitter = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.label11 = new System.Windows.Forms.Label();
            this.label12 = new System.Windows.Forms.Label();
            this.label13 = new System.Windows.Forms.Label();
            this.label14 = new System.Windows.Forms.Label();
            this.label15 = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.label2 = new System.Windows.Forms.Label();
            this.txtComments = new System.Windows.Forms.TextBox();
            this.label16 = new System.Windows.Forms.Label();
            this.btnOpen = new System.Windows.Forms.Button();
            this.comport = new System.IO.Ports.SerialPort(this.components);
            this.lblStartTH = new System.Windows.Forms.Label();
            this.lblStopTH = new System.Windows.Forms.Label();
            this.timer1 = new System.Timers.Timer();
            this.menuStrip1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.groupBox3.SuspendLayout();
            this.groupBox4.SuspendLayout();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.timer1)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Impact", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(138, 24);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(446, 26);
            this.label1.TabIndex = 46;
            this.label1.Text = "C H R O N O M E T E R   S E R I A L   I N T E R F A C E";
            // 
            // lblStatus
            // 
            this.lblStatus.AutoSize = true;
            this.lblStatus.BackColor = System.Drawing.SystemColors.InactiveCaptionText;
            this.lblStatus.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblStatus.ForeColor = System.Drawing.Color.Fuchsia;
            this.lblStatus.Location = new System.Drawing.Point(539, 9);
            this.lblStatus.Name = "lblStatus";
            this.lblStatus.Size = new System.Drawing.Size(155, 13);
            this.lblStatus.TabIndex = 49;
            this.lblStatus.Text = "Waiting: &Start = Enter Key";
            // 
            // dlgPrintPreview
            // 
            this.dlgPrintPreview.AutoScrollMargin = new System.Drawing.Size(0, 0);
            this.dlgPrintPreview.AutoScrollMinSize = new System.Drawing.Size(0, 0);
            this.dlgPrintPreview.ClientSize = new System.Drawing.Size(400, 300);
            this.dlgPrintPreview.Document = this.docPrint;
            this.dlgPrintPreview.Enabled = true;
            this.dlgPrintPreview.Icon = ((System.Drawing.Icon)(resources.GetObject("dlgPrintPreview.Icon")));
            this.dlgPrintPreview.Name = "dlgPrintPreview";
            this.dlgPrintPreview.Visible = false;
            // 
            // docPrint
            // 
            this.docPrint.PrintPage += new System.Drawing.Printing.PrintPageEventHandler(this.docPrint_PrintPage);
            // 
            // dlgPageSetup
            // 
            this.dlgPageSetup.Document = this.docPrint;
            // 
            // dlgPrint
            // 
            this.dlgPrint.Document = this.docPrint;
            this.dlgPrint.UseEXDialog = true;
            // 
            // dlgSave
            // 
            this.dlgSave.DefaultExt = "krno";
            this.dlgSave.Filter = "Chrono Files (*.krno)|*.krno|All Files|";
            this.dlgSave.Title = "Save Chrono Files";
            // 
            // mnuFile
            // 
            this.mnuFile.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.mnuNewFile,
            this.mnuFileOpen,
            this.mnuFileSave,
            this.toolStripSeparator1,
            this.mnuFilePageSetup,
            this.mnuFilePrint,
            this.toolStripSeparator2,
            this.mnuFileExit});
            this.mnuFile.Name = "mnuFile";
            this.mnuFile.Size = new System.Drawing.Size(35, 20);
            this.mnuFile.Text = "&File";
            // 
            // mnuNewFile
            // 
            this.mnuNewFile.Name = "mnuNewFile";
            this.mnuNewFile.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.N)));
            this.mnuNewFile.Size = new System.Drawing.Size(168, 22);
            this.mnuNewFile.Text = "&New Test";
            this.mnuNewFile.ToolTipText = "Reset the whole experiment as new";
            this.mnuNewFile.Click += new System.EventHandler(this.mnuNewFile_Click);
            // 
            // mnuFileOpen
            // 
            this.mnuFileOpen.Name = "mnuFileOpen";
            this.mnuFileOpen.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.O)));
            this.mnuFileOpen.Size = new System.Drawing.Size(168, 22);
            this.mnuFileOpen.Text = "&Open File";
            this.mnuFileOpen.ToolTipText = "Open an old *.krno file (if already saved)";
            this.mnuFileOpen.Click += new System.EventHandler(this.mnuFileOpen_Click);
            // 
            // mnuFileSave
            // 
            this.mnuFileSave.Name = "mnuFileSave";
            this.mnuFileSave.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.S)));
            this.mnuFileSave.Size = new System.Drawing.Size(168, 22);
            this.mnuFileSave.Text = "&Save File";
            this.mnuFileSave.ToolTipText = "Save experiment as *.krno file";
            this.mnuFileSave.Click += new System.EventHandler(this.mnuFileSave_Click);
            // 
            // toolStripSeparator1
            // 
            this.toolStripSeparator1.Name = "toolStripSeparator1";
            this.toolStripSeparator1.Size = new System.Drawing.Size(165, 6);
            // 
            // mnuFilePageSetup
            // 
            this.mnuFilePageSetup.Name = "mnuFilePageSetup";
            this.mnuFilePageSetup.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.G)));
            this.mnuFilePageSetup.Size = new System.Drawing.Size(168, 22);
            this.mnuFilePageSetup.Text = "Pa&ge Setup";
            this.mnuFilePageSetup.ToolTipText = "Set page setup for printing";
            this.mnuFilePageSetup.Click += new System.EventHandler(this.mnuFilePageSetup_Click);
            // 
            // mnuFilePrint
            // 
            this.mnuFilePrint.Name = "mnuFilePrint";
            this.mnuFilePrint.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.P)));
            this.mnuFilePrint.Size = new System.Drawing.Size(168, 22);
            this.mnuFilePrint.Text = "&Print";
            this.mnuFilePrint.ToolTipText = "Send print to a particular printer";
            this.mnuFilePrint.Click += new System.EventHandler(this.mnuFilePrint_Click);
            // 
            // toolStripSeparator2
            // 
            this.toolStripSeparator2.Name = "toolStripSeparator2";
            this.toolStripSeparator2.Size = new System.Drawing.Size(165, 6);
            // 
            // mnuFileExit
            // 
            this.mnuFileExit.Name = "mnuFileExit";
            this.mnuFileExit.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.X)));
            this.mnuFileExit.Size = new System.Drawing.Size(168, 22);
            this.mnuFileExit.Text = "E&xit";
            this.mnuFileExit.ToolTipText = "Close the application";
            this.mnuFileExit.Click += new System.EventHandler(this.mnuFileExit_Click);
            // 
            // mnuTDC
            // 
            this.mnuTDC.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.mnuActiveMode,
            this.mnuReset,
            this.mnuStartTH1,
            this.mnuStopTH2,
            this.toolStripSeparator3});
            this.mnuTDC.Name = "mnuTDC";
            this.mnuTDC.Size = new System.Drawing.Size(39, 20);
            this.mnuTDC.Text = "&TDC";
            // 
            // mnuActiveMode
            // 
            this.mnuActiveMode.CheckOnClick = true;
            this.mnuActiveMode.Name = "mnuActiveMode";
            this.mnuActiveMode.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.M)));
            this.mnuActiveMode.Size = new System.Drawing.Size(173, 22);
            this.mnuActiveMode.Text = "&Active Mode";
            this.mnuActiveMode.Click += new System.EventHandler(this.mnuActiveMode_Click);
            // 
            // mnuReset
            // 
            this.mnuReset.Enabled = false;
            this.mnuReset.Name = "mnuReset";
            this.mnuReset.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.R)));
            this.mnuReset.Size = new System.Drawing.Size(172, 22);
            this.mnuReset.Text = "&Reset";
            this.mnuReset.Click += new System.EventHandler(this.mnuReset_Click);
            // 
            // mnuStartTH1
            // 
            this.mnuStartTH1.Enabled = false;
            this.mnuStartTH1.Name = "mnuStartTH1";
            this.mnuStartTH1.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.D1)));
            this.mnuStartTH1.Size = new System.Drawing.Size(172, 22);
            this.mnuStartTH1.Text = "Start TH&1";
            this.mnuStartTH1.Click += new System.EventHandler(this.mnuStartTH1_Click);
            // 
            // mnuStopTH2
            // 
            this.mnuStopTH2.Enabled = false;
            this.mnuStopTH2.Name = "mnuStopTH2";
            this.mnuStopTH2.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.D2)));
            this.mnuStopTH2.Size = new System.Drawing.Size(172, 22);
            this.mnuStopTH2.Text = "Stop TH&2";
            this.mnuStopTH2.Click += new System.EventHandler(this.mnuStopTH2_Click);
            // 
            // toolStripSeparator3
            // 
            this.toolStripSeparator3.Name = "toolStripSeparator3";
            this.toolStripSeparator3.Size = new System.Drawing.Size(169, 6);
            // 
            // mnuHelp
            // 
            this.mnuHelp.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.mnuAbout});
            this.mnuHelp.Name = "mnuHelp";
            this.mnuHelp.Size = new System.Drawing.Size(40, 20);
            this.mnuHelp.Text = "&Help";
            // 
            // mnuAbout
            // 
            this.mnuAbout.Name = "mnuAbout";
            this.mnuAbout.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.A)));
            this.mnuAbout.Size = new System.Drawing.Size(154, 22);
            this.mnuAbout.Text = "About...";
            this.mnuAbout.Click += new System.EventHandler(this.mnuAbout_Click);
            // 
            // menuStrip1
            // 
            this.menuStrip1.BackColor = System.Drawing.SystemColors.InactiveCaptionText;
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.mnuFile,
            this.mnuTDC,
            this.mnuHelp});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(744, 24);
            this.menuStrip1.TabIndex = 0;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // dlgOpen
            // 
            this.dlgOpen.DefaultExt = "rpr";
            this.dlgOpen.FileName = "openFileDialog1";
            this.dlgOpen.Filter = "Chrono Files (*.krno)|*.krno|All Files|";
            this.dlgOpen.Title = "Open Existing Chrono Files";
            // 
            // chkSig1
            // 
            this.chkSig1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.chkSig1.AutoSize = true;
            this.chkSig1.Checked = true;
            this.chkSig1.CheckState = System.Windows.Forms.CheckState.Checked;
            this.chkSig1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.chkSig1.Location = new System.Drawing.Point(14, 21);
            this.chkSig1.Name = "chkSig1";
            this.chkSig1.Size = new System.Drawing.Size(33, 17);
            this.chkSig1.TabIndex = 33;
            this.chkSig1.Text = "1";
            this.chkSig1.UseVisualStyleBackColor = true;
            // 
            // chkSig3
            // 
            this.chkSig3.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.chkSig3.AutoSize = true;
            this.chkSig3.Checked = true;
            this.chkSig3.CheckState = System.Windows.Forms.CheckState.Checked;
            this.chkSig3.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.chkSig3.Location = new System.Drawing.Point(14, 79);
            this.chkSig3.Name = "chkSig3";
            this.chkSig3.Size = new System.Drawing.Size(33, 17);
            this.chkSig3.TabIndex = 34;
            this.chkSig3.Text = "3";
            this.chkSig3.UseVisualStyleBackColor = true;
            // 
            // chkSig2
            // 
            this.chkSig2.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.chkSig2.AutoSize = true;
            this.chkSig2.Checked = true;
            this.chkSig2.CheckState = System.Windows.Forms.CheckState.Checked;
            this.chkSig2.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.chkSig2.Location = new System.Drawing.Point(14, 50);
            this.chkSig2.Name = "chkSig2";
            this.chkSig2.Size = new System.Drawing.Size(33, 17);
            this.chkSig2.TabIndex = 35;
            this.chkSig2.Text = "2";
            this.chkSig2.UseVisualStyleBackColor = true;
            // 
            // chkSig4
            // 
            this.chkSig4.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.chkSig4.AutoSize = true;
            this.chkSig4.Checked = true;
            this.chkSig4.CheckState = System.Windows.Forms.CheckState.Checked;
            this.chkSig4.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.chkSig4.Location = new System.Drawing.Point(14, 108);
            this.chkSig4.Name = "chkSig4";
            this.chkSig4.Size = new System.Drawing.Size(33, 17);
            this.chkSig4.TabIndex = 36;
            this.chkSig4.Text = "4";
            this.chkSig4.UseVisualStyleBackColor = true;
            // 
            // chkSig5
            // 
            this.chkSig5.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.chkSig5.AutoSize = true;
            this.chkSig5.Checked = true;
            this.chkSig5.CheckState = System.Windows.Forms.CheckState.Indeterminate;
            this.chkSig5.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.chkSig5.Location = new System.Drawing.Point(14, 137);
            this.chkSig5.Name = "chkSig5";
            this.chkSig5.Size = new System.Drawing.Size(33, 17);
            this.chkSig5.TabIndex = 37;
            this.chkSig5.Text = "5";
            this.chkSig5.UseVisualStyleBackColor = true;
            // 
            // txtSig1
            // 
            this.txtSig1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.txtSig1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtSig1.Location = new System.Drawing.Point(60, 19);
            this.txtSig1.MaxLength = 22;
            this.txtSig1.Name = "txtSig1";
            this.txtSig1.Size = new System.Drawing.Size(162, 20);
            this.txtSig1.TabIndex = 7;
            this.txtSig1.Text = "Observer No. 1";
            // 
            // groupBox2
            // 
            this.groupBox2.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.groupBox2.Controls.Add(this.txtSig5);
            this.groupBox2.Controls.Add(this.txtSig4);
            this.groupBox2.Controls.Add(this.txtSig3);
            this.groupBox2.Controls.Add(this.txtSig2);
            this.groupBox2.Controls.Add(this.txtSig1);
            this.groupBox2.Controls.Add(this.chkSig5);
            this.groupBox2.Controls.Add(this.chkSig4);
            this.groupBox2.Controls.Add(this.chkSig2);
            this.groupBox2.Controls.Add(this.chkSig3);
            this.groupBox2.Controls.Add(this.chkSig1);
            this.groupBox2.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox2.Location = new System.Drawing.Point(43, 331);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(236, 163);
            this.groupBox2.TabIndex = 43;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Signatures";
            // 
            // txtSig5
            // 
            this.txtSig5.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.txtSig5.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtSig5.Location = new System.Drawing.Point(60, 135);
            this.txtSig5.MaxLength = 22;
            this.txtSig5.Name = "txtSig5";
            this.txtSig5.Size = new System.Drawing.Size(162, 20);
            this.txtSig5.TabIndex = 11;
            this.txtSig5.Text = "Option Observer";
            // 
            // txtSig4
            // 
            this.txtSig4.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.txtSig4.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtSig4.Location = new System.Drawing.Point(60, 106);
            this.txtSig4.MaxLength = 22;
            this.txtSig4.Name = "txtSig4";
            this.txtSig4.Size = new System.Drawing.Size(162, 20);
            this.txtSig4.TabIndex = 10;
            this.txtSig4.Text = "Observer No. 4";
            // 
            // txtSig3
            // 
            this.txtSig3.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.txtSig3.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtSig3.Location = new System.Drawing.Point(60, 77);
            this.txtSig3.MaxLength = 22;
            this.txtSig3.Name = "txtSig3";
            this.txtSig3.Size = new System.Drawing.Size(162, 20);
            this.txtSig3.TabIndex = 9;
            this.txtSig3.Text = "Observer No. 3";
            // 
            // txtSig2
            // 
            this.txtSig2.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.txtSig2.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtSig2.Location = new System.Drawing.Point(60, 48);
            this.txtSig2.MaxLength = 22;
            this.txtSig2.Name = "txtSig2";
            this.txtSig2.Size = new System.Drawing.Size(162, 20);
            this.txtSig2.TabIndex = 8;
            this.txtSig2.Text = "Observer No. 2";
            // 
            // txtResult
            // 
            this.txtResult.AcceptsReturn = true;
            this.txtResult.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.txtResult.BackColor = System.Drawing.SystemColors.HighlightText;
            this.txtResult.Font = new System.Drawing.Font("Courier New", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtResult.Location = new System.Drawing.Point(6, 15);
            this.txtResult.Multiline = true;
            this.txtResult.Name = "txtResult";
            this.txtResult.ReadOnly = true;
            this.txtResult.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.txtResult.Size = new System.Drawing.Size(409, 296);
            this.txtResult.TabIndex = 44;
            // 
            // groupBox3
            // 
            this.groupBox3.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.groupBox3.Controls.Add(this.txtResult);
            this.groupBox3.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox3.Location = new System.Drawing.Point(285, 74);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(424, 317);
            this.groupBox3.TabIndex = 59;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = " Ch#           Time(ns)                   Differnce(ns)";
            // 
            // txtOnline
            // 
            this.txtOnline.AcceptsReturn = true;
            this.txtOnline.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.txtOnline.BackColor = System.Drawing.SystemColors.HighlightText;
            this.txtOnline.Font = new System.Drawing.Font("Courier New", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtOnline.Location = new System.Drawing.Point(6, 16);
            this.txtOnline.Multiline = true;
            this.txtOnline.Name = "txtOnline";
            this.txtOnline.ReadOnly = true;
            this.txtOnline.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.txtOnline.Size = new System.Drawing.Size(409, 73);
            this.txtOnline.TabIndex = 45;
            // 
            // groupBox4
            // 
            this.groupBox4.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.groupBox4.Controls.Add(this.txtOnline);
            this.groupBox4.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox4.Location = new System.Drawing.Point(285, 398);
            this.groupBox4.Name = "groupBox4";
            this.groupBox4.Size = new System.Drawing.Size(424, 96);
            this.groupBox4.TabIndex = 60;
            this.groupBox4.TabStop = false;
            this.groupBox4.Text = "Online Terminal";
            // 
            // cmbPortName
            // 
            this.cmbPortName.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.cmbPortName.FormattingEnabled = true;
            this.cmbPortName.Location = new System.Drawing.Point(105, 15);
            this.cmbPortName.Name = "cmbPortName";
            this.cmbPortName.Size = new System.Drawing.Size(117, 21);
            this.cmbPortName.TabIndex = 1;
            // 
            // txtChannelUsed
            // 
            this.txtChannelUsed.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.txtChannelUsed.Location = new System.Drawing.Point(105, 45);
            this.txtChannelUsed.MaxLength = 2;
            this.txtChannelUsed.Name = "txtChannelUsed";
            this.txtChannelUsed.Size = new System.Drawing.Size(117, 20);
            this.txtChannelUsed.TabIndex = 2;
            this.txtChannelUsed.Text = "32";
            // 
            // txtTotSystems
            // 
            this.txtTotSystems.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.txtTotSystems.Location = new System.Drawing.Point(105, 73);
            this.txtTotSystems.MaxLength = 1;
            this.txtTotSystems.Name = "txtTotSystems";
            this.txtTotSystems.Size = new System.Drawing.Size(117, 20);
            this.txtTotSystems.TabIndex = 3;
            this.txtTotSystems.Text = "2";
            // 
            // txtTestName
            // 
            this.txtTestName.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.txtTestName.Location = new System.Drawing.Point(105, 101);
            this.txtTestName.MaxLength = 15;
            this.txtTestName.Name = "txtTestName";
            this.txtTestName.Size = new System.Drawing.Size(117, 20);
            this.txtTestName.TabIndex = 4;
            this.txtTestName.Text = "NIL";
            // 
            // txtDetLot
            // 
            this.txtDetLot.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.txtDetLot.Location = new System.Drawing.Point(105, 129);
            this.txtDetLot.MaxLength = 15;
            this.txtDetLot.Name = "txtDetLot";
            this.txtDetLot.Size = new System.Drawing.Size(117, 20);
            this.txtDetLot.TabIndex = 5;
            this.txtDetLot.Text = "NIL";
            // 
            // txtFu
            // 
            this.txtFu.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.txtFu.Location = new System.Drawing.Point(105, 157);
            this.txtFu.MaxLength = 15;
            this.txtFu.Name = "txtFu";
            this.txtFu.Size = new System.Drawing.Size(117, 20);
            this.txtFu.TabIndex = 6;
            this.txtFu.Text = "NIL";
            // 
            // txtMainJitter
            // 
            this.txtMainJitter.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.txtMainJitter.BackColor = System.Drawing.SystemColors.HighlightText;
            this.txtMainJitter.Location = new System.Drawing.Point(105, 213);
            this.txtMainJitter.Name = "txtMainJitter";
            this.txtMainJitter.ReadOnly = true;
            this.txtMainJitter.Size = new System.Drawing.Size(117, 20);
            this.txtMainJitter.TabIndex = 23;
            this.txtMainJitter.Text = "0.0";
            // 
            // label9
            // 
            this.label9.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label9.Location = new System.Drawing.Point(8, 19);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(58, 13);
            this.label9.TabIndex = 24;
            this.label9.Text = "Com Port";
            // 
            // label11
            // 
            this.label11.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.label11.AutoSize = true;
            this.label11.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label11.Location = new System.Drawing.Point(8, 49);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(92, 13);
            this.label11.TabIndex = 26;
            this.label11.Text = "Total Channels";
            // 
            // label12
            // 
            this.label12.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.label12.AutoSize = true;
            this.label12.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label12.Location = new System.Drawing.Point(8, 77);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(86, 13);
            this.label12.TabIndex = 27;
            this.label12.Text = "Total Systems";
            // 
            // label13
            // 
            this.label13.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.label13.AutoSize = true;
            this.label13.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label13.Location = new System.Drawing.Point(8, 105);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(68, 13);
            this.label13.TabIndex = 28;
            this.label13.Text = "Test Name";
            // 
            // label14
            // 
            this.label14.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.label14.AutoSize = true;
            this.label14.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label14.Location = new System.Drawing.Point(8, 133);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(57, 13);
            this.label14.TabIndex = 29;
            this.label14.Text = "Det Lot#";
            // 
            // label15
            // 
            this.label15.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.label15.AutoSize = true;
            this.label15.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label15.Location = new System.Drawing.Point(8, 161);
            this.label15.Name = "label15";
            this.label15.Size = new System.Drawing.Size(31, 13);
            this.label15.TabIndex = 30;
            this.label15.Text = "FU#";
            // 
            // groupBox1
            // 
            this.groupBox1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.txtComments);
            this.groupBox1.Controls.Add(this.label16);
            this.groupBox1.Controls.Add(this.label15);
            this.groupBox1.Controls.Add(this.label14);
            this.groupBox1.Controls.Add(this.label13);
            this.groupBox1.Controls.Add(this.label12);
            this.groupBox1.Controls.Add(this.label11);
            this.groupBox1.Controls.Add(this.label9);
            this.groupBox1.Controls.Add(this.txtMainJitter);
            this.groupBox1.Controls.Add(this.txtFu);
            this.groupBox1.Controls.Add(this.txtDetLot);
            this.groupBox1.Controls.Add(this.txtTestName);
            this.groupBox1.Controls.Add(this.txtTotSystems);
            this.groupBox1.Controls.Add(this.txtChannelUsed);
            this.groupBox1.Controls.Add(this.cmbPortName);
            this.groupBox1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.Location = new System.Drawing.Point(45, 74);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(236, 251);
            this.groupBox1.TabIndex = 32;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Experiment Settings";
            // 
            // label2
            // 
            this.label2.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(7, 189);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(64, 13);
            this.label2.TabIndex = 33;
            this.label2.Text = "Comments";
            // 
            // txtComments
            // 
            this.txtComments.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.txtComments.Location = new System.Drawing.Point(104, 185);
            this.txtComments.MaxLength = 50;
            this.txtComments.Name = "txtComments";
            this.txtComments.Size = new System.Drawing.Size(117, 20);
            this.txtComments.TabIndex = 32;
            this.txtComments.Text = "Group A= 45 & 01, Group B= 46";
            // 
            // label16
            // 
            this.label16.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.label16.AutoSize = true;
            this.label16.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label16.Location = new System.Drawing.Point(8, 217);
            this.label16.Name = "label16";
            this.label16.Size = new System.Drawing.Size(79, 13);
            this.label16.TabIndex = 31;
            this.label16.Text = "Overall Jitter";
            // 
            // btnOpen
            // 
            this.btnOpen.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnOpen.Location = new System.Drawing.Point(637, 49);
            this.btnOpen.Name = "btnOpen";
            this.btnOpen.Size = new System.Drawing.Size(72, 26);
            this.btnOpen.TabIndex = 0;
            this.btnOpen.Text = "&Start";
            this.btnOpen.UseVisualStyleBackColor = true;
            this.btnOpen.Click += new System.EventHandler(this.btnOpen_Click);
            // 
            // comport
            // 
            this.comport.Handshake = System.IO.Ports.Handshake.RequestToSend;
            this.comport.StopBits = System.IO.Ports.StopBits.Two;
            this.comport.DataReceived += new System.IO.Ports.SerialDataReceivedEventHandler(this.comport_DataReceived);
            // 
            // lblStartTH
            // 
            this.lblStartTH.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.lblStartTH.AutoSize = true;
            this.lblStartTH.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblStartTH.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(128)))), ((int)(((byte)(0)))));
            this.lblStartTH.Location = new System.Drawing.Point(53, 56);
            this.lblStartTH.Name = "lblStartTH";
            this.lblStartTH.Size = new System.Drawing.Size(80, 13);
            this.lblStartTH.TabIndex = 62;
            this.lblStartTH.Text = "Start TH= 10";
            this.lblStartTH.Visible = false;
            // 
            // lblStopTH
            // 
            this.lblStopTH.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.lblStopTH.AutoSize = true;
            this.lblStopTH.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblStopTH.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(128)))), ((int)(((byte)(0)))));
            this.lblStopTH.Location = new System.Drawing.Point(147, 56);
            this.lblStopTH.Name = "lblStopTH";
            this.lblStopTH.Size = new System.Drawing.Size(79, 13);
            this.lblStopTH.TabIndex = 64;
            this.lblStopTH.Text = "Stop TH= 10";
            this.lblStopTH.Visible = false;
            // 
            // timer1
            // 
            this.timer1.Interval = 2000;
            this.timer1.SynchronizingObject = this;
            this.timer1.Elapsed += new System.Timers.ElapsedEventHandler(this.timer1_Elapsed);
            // 
            // frmMain
            // 
            this.AcceptButton = this.btnOpen;
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(744, 506);
            this.Controls.Add(this.lblStopTH);
            this.Controls.Add(this.lblStartTH);
            this.Controls.Add(this.groupBox4);
            this.Controls.Add(this.groupBox3);
            this.Controls.Add(this.lblStatus);
            this.Controls.Add(this.btnOpen);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.menuStrip1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MainMenuStrip = this.menuStrip1;
            this.MaximizeBox = false;
            this.Name = "frmMain";
            this.Text = "ChronoTerminal";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.Evaluation_FormClosing);
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            this.groupBox4.ResumeLayout(false);
            this.groupBox4.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.timer1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label lblStatus;
        private System.Windows.Forms.PrintPreviewDialog dlgPrintPreview;
        private System.Drawing.Printing.PrintDocument docPrint;
        private System.Windows.Forms.PageSetupDialog dlgPageSetup;
        private System.Windows.Forms.PrintDialog dlgPrint;
        private System.Windows.Forms.SaveFileDialog dlgSave;
        private System.Windows.Forms.ToolStripMenuItem mnuFile;
        private System.Windows.Forms.ToolStripMenuItem mnuNewFile;
        private System.Windows.Forms.ToolStripMenuItem mnuFileOpen;
        private System.Windows.Forms.ToolStripMenuItem mnuFileSave;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator1;
        private System.Windows.Forms.ToolStripMenuItem mnuFilePageSetup;
        private System.Windows.Forms.ToolStripMenuItem mnuFilePrint;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator2;
        private System.Windows.Forms.ToolStripMenuItem mnuFileExit;
        private System.Windows.Forms.ToolStripMenuItem mnuTDC;
        private System.Windows.Forms.ToolStripMenuItem mnuActiveMode;
        private System.Windows.Forms.ToolStripMenuItem mnuReset;
        private System.Windows.Forms.ToolStripMenuItem mnuStartTH1;
        private System.Windows.Forms.ToolStripMenuItem mnuStopTH2;
        private System.Windows.Forms.ToolStripMenuItem mnuHelp;
        private System.Windows.Forms.ToolStripMenuItem mnuAbout;
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.OpenFileDialog dlgOpen;
        private System.Windows.Forms.CheckBox chkSig1;
        private System.Windows.Forms.CheckBox chkSig3;
        private System.Windows.Forms.CheckBox chkSig2;
        private System.Windows.Forms.CheckBox chkSig4;
        private System.Windows.Forms.CheckBox chkSig5;
        private System.Windows.Forms.TextBox txtSig1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.TextBox txtSig5;
        private System.Windows.Forms.TextBox txtSig4;
        private System.Windows.Forms.TextBox txtSig3;
        private System.Windows.Forms.TextBox txtSig2;
        private System.Windows.Forms.TextBox txtResult;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.TextBox txtOnline;
        private System.Windows.Forms.GroupBox groupBox4;
        private System.Windows.Forms.ComboBox cmbPortName;
        private System.Windows.Forms.TextBox txtChannelUsed;
        private System.Windows.Forms.TextBox txtTotSystems;
        private System.Windows.Forms.TextBox txtTestName;
        private System.Windows.Forms.TextBox txtDetLot;
        private System.Windows.Forms.TextBox txtFu;
        private System.Windows.Forms.TextBox txtMainJitter;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.Label label14;
        private System.Windows.Forms.Label label15;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Label label16;
        private System.Windows.Forms.Button btnOpen;
        private System.IO.Ports.SerialPort comport;
        private System.Windows.Forms.Label lblStartTH;
        private System.Windows.Forms.Label lblStopTH;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtComments;
        private System.Timers.Timer timer1;
    }
}

