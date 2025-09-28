onerror {quit -f}
vlib work
vlog -work work ALU_EXT.vo
vlog -work work ALU_EXT.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.ALU_EXT_vlg_vec_tst
vcd file -direction ALU_EXT.msim.vcd
vcd add -internal ALU_EXT_vlg_vec_tst/*
vcd add -internal ALU_EXT_vlg_vec_tst/i1/*
add wave /*
run -all
