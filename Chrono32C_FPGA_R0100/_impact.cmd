setPreference -pref UserLevel:NOVICE
setPreference -pref MessageLevel:DETAILED
setPreference -pref ConcurrentMode:FALSE
setPreference -pref UseHighz:FALSE
setPreference -pref ConfigOnFailure:STOP
setPreference -pref StartupCLock:AUTO_CORRECTION
setPreference -pref AutoSignature:FALSE
setPreference -pref KeepSVF:FALSE
setPreference -pref svfUseTime:FALSE
setPreference -pref UserLevel:NOVICE
setPreference -pref MessageLevel:DETAILED
setPreference -pref ConcurrentMode:FALSE
setPreference -pref UseHighz:FALSE
setPreference -pref ConfigOnFailure:STOP
setPreference -pref StartupCLock:AUTO_CORRECTION
setPreference -pref AutoSignature:FALSE
setPreference -pref KeepSVF:FALSE
setPreference -pref svfUseTime:FALSE
setMode -pff
setMode -pff
setMode -pff
setSubmode -pffserial
setAttribute -configdevice -attr name -value "PFFConfigDevice"
setAttribute -configdevice -attr size -value "0"
addCollection -name "Chrono32c"
setAttribute -collection -attr dir -value "UP"
addDesign -version 0 -name "0000"
addDeviceChain -index 0
addDevice -position 1 -file "E:\P\TDC\2013\Chrono32C_FPGA_R2\chrono32c.bit"
setMode -pff
setAttribute -configdevice -attr fillValue -value "FF"
setAttribute -configdevice -attr fileFormat -value "mcs"
setAttribute -collection -attr dir -value "UP"
setAttribute -configdevice -attr path -value "e:\p\tdc\2013\chrono32c_fpga_r2/"
setAttribute -collection -attr name -value "Chrono32c"
generate -generic
