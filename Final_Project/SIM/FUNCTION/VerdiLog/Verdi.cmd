debImport "-ssf" "floating_MAC_16.fsdb"
debLoadSimResult \
           /home/capstone6/capstone/Final_simulation/SIM/FUNCTION/floating_MAC_16.fsdb
wvCreateWindow
verdiDockWidgetDisplay -dock widgetDock_WelcomePage
verdiDockWidgetHide -dock widgetDock_WelcomePage
verdiWindowResize -win $_Verdi_1 "1920" "23" "1920" "1057"
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/tb_floating"
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb_floating/CLK} \
{/tb_floating/RESETn} \
{/tb_floating/data_in_A\[15:0\]} \
{/tb_floating/data_in_B\[15:0\]} \
{/tb_floating/data_in_C\[15:0\]} \
{/tb_floating/data_out\[15:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 )} 
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb_floating/CLK} \
{/tb_floating/RESETn} \
{/tb_floating/data_in_A\[15:0\]} \
{/tb_floating/data_in_B\[15:0\]} \
{/tb_floating/data_in_C\[15:0\]} \
{/tb_floating/data_out\[15:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 )} 
wvSetPosition -win $_nWave2 {("G1" 6)}
wvGetSignalClose -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/tb_floating"
wvGetSignalSetScope -win $_nWave2 "/tb_floating"
wvGetSignalSetScope -win $_nWave2 "/tb_floating/MAC/ADD"
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb_floating/CLK} \
{/tb_floating/RESETn} \
{/tb_floating/data_in_A\[15:0\]} \
{/tb_floating/data_in_B\[15:0\]} \
{/tb_floating/data_in_C\[15:0\]} \
{/tb_floating/data_out\[15:0\]} \
{/tb_floating/MAC/ADD/data_in_01\[16:0\]} \
{/tb_floating/MAC/ADD/data_in_02\[15:0\]} \
{/tb_floating/MAC/ADD/data_out\[15:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 7 8 9 )} 
wvSetPosition -win $_nWave2 {("G1" 9)}
wvZoomIn -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 7 8 9 )} 
wvSetRadix -win $_nWave2 -format Bin
wvZoomIn -win $_nWave2
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/tb_floating"
wvGetSignalSetScope -win $_nWave2 "/tb_floating"
wvGetSignalSetScope -win $_nWave2 "/tb_floating/MAC/ADD"
wvSetPosition -win $_nWave2 {("G1" 17)}
wvSetPosition -win $_nWave2 {("G1" 17)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb_floating/CLK} \
{/tb_floating/RESETn} \
{/tb_floating/data_in_A\[15:0\]} \
{/tb_floating/data_in_B\[15:0\]} \
{/tb_floating/data_in_C\[15:0\]} \
{/tb_floating/data_out\[15:0\]} \
{/tb_floating/MAC/ADD/data_in_01\[16:0\]} \
{/tb_floating/MAC/ADD/data_in_02\[15:0\]} \
{/tb_floating/MAC/ADD/data_out\[15:0\]} \
{/tb_floating/MAC/ADD/expo_01\[6:0\]} \
{/tb_floating/MAC/ADD/expo_02\[6:0\]} \
{/tb_floating/MAC/ADD/expo_temp\[6:0\]} \
{/tb_floating/MAC/ADD/expo_temp_out\[6:0\]} \
{/tb_floating/MAC/ADD/frac_01\[9:0\]} \
{/tb_floating/MAC/ADD/frac_02\[9:0\]} \
{/tb_floating/MAC/ADD/frac_temp\[10:0\]} \
{/tb_floating/MAC/ADD/frac_temp_out\[9:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 10 11 12 13 14 15 16 17 )} 
wvSetPosition -win $_nWave2 {("G1" 17)}
wvSetPosition -win $_nWave2 {("G1" 17)}
wvSetPosition -win $_nWave2 {("G1" 17)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb_floating/CLK} \
{/tb_floating/RESETn} \
{/tb_floating/data_in_A\[15:0\]} \
{/tb_floating/data_in_B\[15:0\]} \
{/tb_floating/data_in_C\[15:0\]} \
{/tb_floating/data_out\[15:0\]} \
{/tb_floating/MAC/ADD/data_in_01\[16:0\]} \
{/tb_floating/MAC/ADD/data_in_02\[15:0\]} \
{/tb_floating/MAC/ADD/data_out\[15:0\]} \
{/tb_floating/MAC/ADD/expo_01\[6:0\]} \
{/tb_floating/MAC/ADD/expo_02\[6:0\]} \
{/tb_floating/MAC/ADD/expo_temp\[6:0\]} \
{/tb_floating/MAC/ADD/expo_temp_out\[6:0\]} \
{/tb_floating/MAC/ADD/frac_01\[9:0\]} \
{/tb_floating/MAC/ADD/frac_02\[9:0\]} \
{/tb_floating/MAC/ADD/frac_temp\[10:0\]} \
{/tb_floating/MAC/ADD/frac_temp_out\[9:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 10 11 12 13 14 15 16 17 )} 
wvSetPosition -win $_nWave2 {("G1" 17)}
wvGetSignalClose -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 10 11 12 13 14 15 16 17 )} 
wvSetRadix -win $_nWave2 -format Bin
wvSetCursor -win $_nWave2 57722.622471 -snap {("G1" 12)}
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 0)}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/tb_floating"
wvGetSignalSetScope -win $_nWave2 "/tb_floating/MAC"
wvGetSignalSetScope -win $_nWave2 "/tb_floating/MAC/ADD"
wvGetSignalSetScope -win $_nWave2 "/tb_floating"
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb_floating/CLK} \
{/tb_floating/RESETn} \
{/tb_floating/data_in_A\[15:0\]} \
{/tb_floating/data_in_B\[15:0\]} \
{/tb_floating/data_in_C\[15:0\]} \
{/tb_floating/data_out\[15:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 )} 
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb_floating/CLK} \
{/tb_floating/RESETn} \
{/tb_floating/data_in_A\[15:0\]} \
{/tb_floating/data_in_B\[15:0\]} \
{/tb_floating/data_in_C\[15:0\]} \
{/tb_floating/data_out\[15:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 )} 
wvSetPosition -win $_nWave2 {("G1" 6)}
wvGetSignalClose -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 )} 
wvSetRadix -win $_nWave2 -format Bin
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
schCreateWindow -delim "." -win $_nSchema1 -scope "tb_floating"
verdiDockWidgetMaximize -dock windowDock_nSchema_3
schSelect -win $_nSchema3 -inst "MAC"
schPushViewIn -win $_nSchema3
schSelect -win $_nSchema3 -inst "MUL"
schPushViewIn -win $_nSchema3
schSelect -win $_nSchema3 -inst "AMT"
schPushViewIn -win $_nSchema3
schPopViewUp -win $_nSchema3
schPushViewIn -win $_nSchema3
schPopViewUp -win $_nSchema3
schPopViewUp -win $_nSchema3
schSelect -win $_nSchema3 -inst "ADD"
schPushViewIn -win $_nSchema3
schSelect -win $_nSchema3 -inst "floating_add_16:Always1:167:181:RegCombo"
schPushViewIn -win $_nSchema3
srcSetScope -win $_nTrace1 "tb_floating.MAC.ADD" -delim "."
srcSelect -win $_nTrace1 -range {167 181 1 3 1 1}
schSelect -win $_nSchema3 -inst "floating_add_16:Always0:141:165:RegCombo"
schPushViewIn -win $_nSchema3
srcSelect -win $_nTrace1 -range {141 165 1 3 1 1}
schSelect -win $_nSchema3 -inst "floating_add_16:Always2:183:206:RegCombo"
schPushViewIn -win $_nSchema3
srcSelect -win $_nTrace1 -range {183 206 1 3 1 1}
schSetOptions -win $_nSchema3 -detailRTL on
schPopViewUp -win $_nSchema3
schSelect -win $_nSchema3 -inst "MUL"
schSelect -win $_nSchema3 -inst "MUL"
schSelect -win $_nSchema3 -inst "MUL"
schPushViewIn -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomOut -win $_nSchema3
schFit -win $_nSchema3
schZoomOut -win $_nSchema3
schLastView -win $_nSchema3
schPopViewUp -win $_nSchema3
schSelect -win $_nSchema3 -inst "MUL"
schPushViewIn -win $_nSchema3
schPopViewUp -win $_nSchema3
schSelect -win $_nSchema3 -inst "MUL"
schPushViewIn -win $_nSchema3
schSelect -win $_nSchema3 -inst "AMT"
schPushViewIn -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomOut -win $_nSchema3
schFit -win $_nSchema3
schLastView -win $_nSchema3
schLastView -win $_nSchema3
