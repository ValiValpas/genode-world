#
# Pull in CPU specifics
#
SPECS += zynq cadence_gem zynq_sdhci zynq_i2c

REP_INC_DIR += include/spec/parallella
REP_INC_DIR += include/spec/xilinx

include $(call select_from_repositories,mk/spec/zynq.mk)
