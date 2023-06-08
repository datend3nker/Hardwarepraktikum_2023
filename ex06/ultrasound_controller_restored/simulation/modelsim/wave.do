onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /ultrasound_controller_vhd_tst/clk_50
add wave -noupdate /ultrasound_controller_vhd_tst/distance
add wave -noupdate /ultrasound_controller_vhd_tst/enable
add wave -noupdate /ultrasound_controller_vhd_tst/finished
add wave -noupdate /ultrasound_controller_vhd_tst/trigger
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {122362191 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 252
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {8837269368 ps}
