# compile

vlog EX_103_practice.v
vlog EX_103_tb_practice.v

# simulate
vsim -debugdb testbench

#probe signals
add wave -noupdate -format -literal -radix hex /testbench/EX103_instance_practice/a
add wave -noupdate -format -literal -radix hex /testbench/EX103_instance_practice/b
add wave -noupdate -format -literal -radix hex /testbench/EX103_instance_practice/c
add wave -noupdate -format -literal -radix hex /testbench/EX103_instance_practice/d
add wave -noupdate -format -literal -radix hex /testbench/EX103_instance_practice/e
add wave -noupdate -format -literal -radix hex /testbench/EX103_instance_practice/f
add wave -noupdate -format -literal -radix hex /testbench/EX103_instance_practice/g
add wave -noupdate -format -logic /testbench/EX103_instance_practice/sel1
add wave -noupdate -format -logic /testbench/EX103_instance_practice/sel2
add wave -noupdate -format -logic /testbench/EX103_instance_practice/sel3
add wave -noupdate -format -logic /testbench/EX103_instance_practice/sel4
add wave -noupdate -format -logic /testbench/EX103_instance_practice/sel5

# 200 ns
run 200
