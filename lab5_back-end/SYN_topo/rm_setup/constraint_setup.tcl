## Clock Basics
create_clock -period 5 -name MAIN_CLOCK [get_ports CLK]
set_clock_uncertainty 0.5  [get_clocks MAIN_CLOCK]

set_input_delay -clock MAIN_CLOCK -max 0.4 $INPUTPORT
set_output_delay -clock MAIN_CLOCK -max 0.3 $OUTPUTPORT

## Area Constraint
set_max_area 0
