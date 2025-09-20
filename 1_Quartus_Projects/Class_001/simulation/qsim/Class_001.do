onerror {quit -f}
vlib work
vlog -work work Class_001.vo
vlog -work work Class_001.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Class_001_vlg_vec_tst
vcd file -direction Class_001.msim.vcd
vcd add -internal Class_001_vlg_vec_tst/*
vcd add -internal Class_001_vlg_vec_tst/i1/*
add wave /*
run -all
