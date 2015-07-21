if {$argc != 1} {
  puts "Expected: project (.prj) name as the first argument"
  exit
}

open_project [lindex $argv 0]
source sys-sources.xdc
reset_run synth_1
reset_run impl_1
launch_runs synth_1
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream
wait_on_run impl_1
exit
