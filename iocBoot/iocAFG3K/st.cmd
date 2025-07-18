#!../../bin/linux-x86_64/AFG3000App

< /epics/common/xf31id1-ioc1-netsetup.cmd

errlogInit(20000)
< envPaths

dbLoadDatabase("$(TOP)/dbd/AFG3000App.dbd")

AFG3000App_registerRecordDeviceDriver(pdbbase)

# Define asyn port name
epicsEnvSet("PORT", "DRV1")
epicsEnvSet("PREFIX", "DEV:AFG3011:")
epicsEnvSet("STREAM_PROTOCOL_PATH", "$(TOP)/protocol")


epicsEnvSet("PORT", "AFG3011")
vxi11Configure("$(PORT)", "10.69.58.90", 0, "0.0", "inst0", 0, 0)
asynOctetSetInputEos("$(PORT)", 0, "\n")

#asynSetTraceMask("$(PORT)", -1, 0x0)
#asynSetTraceMask("$(PORT)", -1, 0x1)

# Enables both log and error messages
#asynSetTraceMask("$(PORT)", -1, 0x9)
#asynSetTraceMask("$(PORT)", -1, 0xF)
#asynSetTraceMask("$(PORT)", -1, 0x11)
#asynSetTraceMask("$(PORT)", -1, 0xFF)
#asynSetTraceIOMask("$(PORT)", -1, 0x0)
#asynSetTraceIOMask("$(PORT)", -1, 0x2)

dbLoadRecords("$(TOP)/db/TektronixAFG3K.template", "P=$(PREFIX), R=, PORT=$(PORT)")
dbLoadRecords("$(EPICS_BASE)/db/asynRecord.db", "P=$(PREFIX), R=AsynIO, PORT=$(PORT), ADDR=0, TIMEOUT=1, OMAX=0, IMAX=0")
# dbLoadRecords("$(EPICS_BASE)/db/iocAdminSoft.db", "IOC=$(PREFIX)")


iocInit()
