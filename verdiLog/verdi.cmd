simSetSimulator "-vcssv" -exec \
           "/home/keyang/xiangmu/asyn_fifo/sim/top_lib/read_fast_test23050616_simv" \
           -args "+UVM_TESTNAME=read_fast_test"
debImport "-full64" "-dbdir" \
          "/home/keyang/xiangmu/asyn_fifo/sim/top_lib/read_fast_test23050616_simv.daidir"
debLoadSimResult /mnt/hgfs/virtual_share/asyn_fifo/sim/read_fast_test.fsdb
wvCreateWindow
wvRestoreSignal -win $_nWave2 "fifo_signal.rc" -overWriteAutoAlias on \
           -appendSignals on
debExit
