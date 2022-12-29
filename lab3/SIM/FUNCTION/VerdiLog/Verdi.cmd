debImport "-ssf" "TOP.fsdb"
debLoadSimResult /home/capstone6/capstone/lab3/SIM/FUNCTION/TOP.fsdb
wvCreateWindow
verdiDockWidgetDisplay -dock widgetDock_WelcomePage
verdiDockWidgetHide -dock widgetDock_WelcomePage
verdiWindowResize -win $_Verdi_1 "1920" "23" "1920" "1057"
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/TB_TOP"
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/TB_TOP/CLK} \
{/TB_TOP/RESETn} \
{/TB_TOP/a\[15:0\]} \
{/TB_TOP/b\[15:0\]} \
{/TB_TOP/y\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 )} 
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/TB_TOP/CLK} \
{/TB_TOP/RESETn} \
{/TB_TOP/a\[15:0\]} \
{/TB_TOP/b\[15:0\]} \
{/TB_TOP/y\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 )} 
wvSetPosition -win $_nWave2 {("G1" 5)}
wvGetSignalClose -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSelectGroup -win $_nWave2 {G2}
srcHBSelect "TB_TOP.UTOP" -win $_nTrace1
schCreateWindow -delim "." -win $_nSchema1 -scope "TB_TOP"
verdiDockWidgetMaximize -dock windowDock_nSchema_3
schSetOptions -win $_nSchema3 -portName on
schSetOptions -win $_nSchema3 -pinName on
schSetOptions -win $_nSchema3 -instName on
schSetOptions -win $_nSchema3 -completeName on
schSetOptions -win $_nSchema3 -localNetName on
schSetOptions -win $_nSchema3 -detailRTL on
schSelect -win $_nSchema3 -inst "UTOP"
schSelect -win $_nSchema3 -inst "UTOP"
schPushViewIn -win $_nSchema3
schSelect -win $_nSchema3 -inst "PAM"
schPushViewIn -win $_nSchema3
