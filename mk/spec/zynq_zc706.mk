#
# Pull in CPU specifics
#
SPECS += zynq cadence_gem zynq_uart1

REP_INC_DIR += include/spec/zc706
REP_INC_DIR += include/spec/xilinx

include $(call select_from_repositories,mk/spec/zynq.mk)
