TOP=../..
include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE

#----------------------------------------------------
# Optimization of db files using dbst (DEFAULT: NO)
#DB_OPT = YES

#----------------------------------------------------
# Create and install (or just install)
# databases, templates, substitutions like this

DB += TektronixAFG3K.template
DB += TektronixAFG3K_Modulation.template
DB += TektronixAFG3K_PM_FM.template
DB += TektronixAFG3K_Output.template
DB += TektronixAFG3K_AM.template
DB += TektronixAFG3K_Source.template

#----------------------------------------------------
# If <anyname>.db template is not named <anyname>*.template add
# <anyname>_template = <templatename>

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE
