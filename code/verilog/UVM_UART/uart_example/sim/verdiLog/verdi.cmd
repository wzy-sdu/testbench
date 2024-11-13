debImport "-sv" "-f" "filelist.f"
debLoadSimResult /dataA/ftk-yt/parkershe/UVM/uart_example/sim/uart.fsdb
wvCreateWindow
verdiDockWidgetDisplay -dock widgetDock_WelcomePage
verdiWindowWorkMode -win Verdi_1 -hardwareDebug
wvSelectGroup -win $_nWave2 {G1}
srcHBSelect "uart_tb.IRQ" -win $_nTrace1
srcSetScope -win $_nTrace1 "uart_tb.IRQ" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "IRQ" -win $_nTrace1
srcAction -pos 21 2 2 -win $_nTrace1 -name "IRQ" -ctrlKey off
srcHBSelect "uart_tb.DUT" -win $_nTrace1
srcSetScope -win $_nTrace1 "uart_tb.DUT" -delim "."
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "IRQ" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 0.000000 153827.416079
wvZoom -win $_nWave2 0.000000 9980.340112
verdiWindowResize -win Verdi_1 "710" "150" "1920" "1018"
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 0.000000 19858.212261
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
srcDeselectAll -win $_nTrace1
srcSelect -signal "IRQ" -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "IRQ" -win $_nTrace1
srcAction -pos 41 3 2 -win $_nTrace1 -name "IRQ" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "ms_int" -win $_nTrace1
srcAction -pos 204 40 5 -win $_nTrace1 -name "ms_int" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "MSR\[0\]" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "MSR\[7:0\]" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoom -win $_nWave2 91.882995 10382.778418
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 3484.485882 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 3484.485882 -snap {("G1" 1)}
srcActiveTrace "uart_tb.DUT.IRQ" -win $_nTrace1 -TraceByDConWave -TraceTime 100 \
           -TraceValue 0
srcDeselectAll -win $_nTrace1
srcSelect -signal "ms_int" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "IER\[3\]" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "ls_int" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "IER\[2\]" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "ls_int" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "tx_int" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rx_int" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 4 5 6 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 3)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "ms_int" -win $_nTrace1
srcAction -pos 204 40 2 -win $_nTrace1 -name "ms_int" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "ms_int" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "nCTS_1" -win $_nTrace1
srcSelect -signal "ctsn" -win $_nTrace1
srcSelect -signal "nDSR_1" -win $_nTrace1
srcSelect -signal "dsrn" -win $_nTrace1
srcSelect -signal "nDCD_1" -win $_nTrace1
srcSelect -signal "dcdn" -win $_nTrace1
srcSelect -signal "rin" -win $_nTrace1
srcSelect -signal "nRI_1" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 5 6 7 8 9 10 11 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 3)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "PCLK" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSetCursor -win $_nWave2 3288.072030 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 3508.293621 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 4680.824794 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 4668.920924 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 4674.872859 -snap {("G1" 1)}
srcActiveTrace "uart_tb.DUT.IRQ" -win $_nTrace1 -TraceByDConWave -TraceTime 3500 \
           -TraceValue 1
srcDeselectAll -win $_nTrace1
srcSelect -signal "re" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "re" -win $_nTrace1
srcAction -pos 200 6 0 -win $_nTrace1 -name "re" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "re" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "PADDR" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomAll -win $_nWave2
srcHBSelect "uart_tb.DUT" -win $_nTrace1
srcSetScope -win $_nTrace1 "uart_tb.DUT" -delim "."
