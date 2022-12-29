debImport "-ssf" "TOP.fsdb"
debLoadSimResult \
           /home/lmj4666/workarea/capstone/lab4_front-end/SIM/FUNCTION/TOP.fsdb
wvCreateWindow
verdiDockWidgetDisplay -dock widgetDock_WelcomePage
verdiDockWidgetHide -dock widgetDock_WelcomePage
wvSetCursor -win $_nWave2 434513.681241
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/tb_config_mul"
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb_config_mul/CLK} \
{/tb_config_mul/RESETn} \
{/tb_config_mul/a\[3:0\]} \
{/tb_config_mul/b\[3:0\]} \
{/tb_config_mul/y\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 )} 
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb_config_mul/CLK} \
{/tb_config_mul/RESETn} \
{/tb_config_mul/a\[3:0\]} \
{/tb_config_mul/b\[3:0\]} \
{/tb_config_mul/y\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 )} 
wvSetPosition -win $_nWave2 {("G1" 5)}
wvGetSignalClose -win $_nWave2
verdiDockWidgetMaximize -dock windowDock_nWave_2
wvZoom -win $_nWave2 211501.692525 669035.966150
debExit
