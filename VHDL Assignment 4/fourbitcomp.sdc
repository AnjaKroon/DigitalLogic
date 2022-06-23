set_max_delay -from [get_ports <name_of_input_port>] -to [get_ports <name_of_output_port>] <time in nano seconds>


set_max_delay -from [get_ports A[*]] -to [get_ports AgtBplusOne] 15
set_max_delay -from [get_ports A[*]] -to [get_ports AgteBplusOne] 15
set_max_delay -from [get_ports A[*]] -to [get_ports AltBplusOne] 15
set_max_delay -from [get_ports A[*]] -to [get_ports AlteBplusOne] 15
set_max_delay -from [get_ports A[*]] -to [get_ports AeqBplusOne] 15
set_max_delay -from [get_ports A[*]] -to [get_ports overflow] 15

set_max_delay -from [get_ports B[*]] -to [get_ports AgtBplusOne] 15
set_max_delay -from [get_ports B[*]] -to [get_ports AgteBplusOne] 15
set_max_delay -from [get_ports B[*]] -to [get_ports AltBplusOne] 15
set_max_delay -from [get_ports B[*]] -to [get_ports AlteBplusOne] 15
set_max_delay -from [get_ports B[*]] -to [get_ports AeqBplusOne] 15
set_max_delay -from [get_ports B[*]] -to [get_ports overflow] 15
