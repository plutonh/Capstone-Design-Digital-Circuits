debImport "-ssf" "TOP.fsdb"
debLoadSimResult /home/capstone6/capstone/lab2/SIM/FUNCTION/TOP.fsdb
wvCreateWindow
verdiDockWidgetDisplay -dock widgetDock_WelcomePage
verdiDockWidgetHide -dock widgetDock_WelcomePage
verdiWindowResize -win $_Verdi_1 "1920" "23" "1920" "1057"
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/TB_TOP"
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/TB_TOP/A\[15:1\]} \
{/TB_TOP/B\[15:1\]} \
{/TB_TOP/Cin} \
{/TB_TOP/Cout} \
{/TB_TOP/Sum\[15:1\]} \
{/TB_TOP/clock} \
{/TB_TOP/resetn} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 7 )} 
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/TB_TOP/A\[15:1\]} \
{/TB_TOP/B\[15:1\]} \
{/TB_TOP/Cin} \
{/TB_TOP/Cout} \
{/TB_TOP/Sum\[15:1\]} \
{/TB_TOP/clock} \
{/TB_TOP/resetn} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 7 )} 
wvSetPosition -win $_nWave2 {("G1" 7)}
wvGetSignalClose -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
schCreateWindow -delim "." -win $_nSchema1 -scope "TB_TOP"
verdiDockWidgetMaximize -dock windowDock_nSchema_3
schSetOptions -win $_nSchema3 -detailRTL on
schSelect -win $_nSchema3 -inst "TB_TOP:Always2#Always1:32:32:Adder"
schPushViewIn -win $_nSchema3
srcSelect -win $_nTrace1 -range {32 32 1 17 1 1}
schSelect -win $_nSchema3 -inst "UTOP"
schPushViewIn -win $_nSchema3
schSelect -win $_nSchema3 -inst "KSA"
schPushViewIn -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
