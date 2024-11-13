gui_state_default_create -off -ini

# Globals
gui_set_state_value -category Globals -key recent_cov_databases -value {/dataA/ftk-yt/parkershe/UVM/uart_example/sim/merge_simv.vdb /dataA/ftk-yt/parkershe/UVM/uart_example/sim/simv.vdb /dataA/ftk-yt/parkershe/UVM/uart_example/sim/parker.vdb /dataA/ftk-yt/parkershe/1542A/Parker1/uart_example/sim/simv.vdb}

# Layout
gui_set_state_value -category Layout -key child_console_size_x -value 1289
gui_set_state_value -category Layout -key child_console_size_y -value 179
gui_set_state_value -category Layout -key child_covdetail_docknewline -value false
gui_set_state_value -category Layout -key child_covdetail_pos_x -value {-2}
gui_set_state_value -category Layout -key child_covdetail_pos_y -value {-15}
gui_set_state_value -category Layout -key child_covdetail_size_x -value 1095
gui_set_state_value -category Layout -key child_covdetail_size_y -value 514
gui_set_state_value -category Layout -key child_coveragetable_docknewline -value false
gui_set_state_value -category Layout -key child_coveragetable_pos_x -value {-2}
gui_set_state_value -category Layout -key child_coveragetable_pos_y -value {-15}
gui_set_state_value -category Layout -key child_coveragetable_size_x -value 1094
gui_set_state_value -category Layout -key child_coveragetable_size_y -value 513
gui_set_state_value -category Layout -key child_data_size_x -value 174
gui_set_state_value -category Layout -key child_data_size_y -value 406
gui_set_state_value -category Layout -key child_hier_col3 -value {-1}
gui_set_state_value -category Layout -key child_hier_colpd -value 0
gui_set_state_value -category Layout -key child_hier_size_x -value 174
gui_set_state_value -category Layout -key child_hier_size_y -value 406
gui_set_state_value -category Layout -key child_source_docknewline -value false
gui_set_state_value -category Layout -key child_source_pos_x -value {-2}
gui_set_state_value -category Layout -key child_source_pos_y -value {-15}
gui_set_state_value -category Layout -key child_source_size_x -value 373
gui_set_state_value -category Layout -key child_source_size_y -value 401
gui_set_state_value -category Layout -key cov_main_pos_x -value 246
gui_set_state_value -category Layout -key cov_main_pos_y -value 259
gui_set_state_value -category Layout -key cov_main_size_x -value 1535
gui_set_state_value -category Layout -key cov_main_size_y -value 1060
gui_set_state_value -category Layout -key main_pos_x -value 681
gui_set_state_value -category Layout -key main_pos_y -value 119
gui_set_state_value -category Layout -key main_size_x -value 1399
gui_set_state_value -category Layout -key main_size_y -value 827

# list_value_column

# Sim

# Assertion

# Stream

# Data

# TBGUI

# Driver

# Class

# Member

# ObjectBrowser

# UVM

# Local

# Backtrace

# FastSearch

# Exclusion

# SaveSession

# FindDialog
gui_create_state_key -category FindDialog -key m_pMatchCase -value_type bool -value false
gui_create_state_key -category FindDialog -key m_pMatchWord -value_type bool -value false
gui_create_state_key -category FindDialog -key m_pUseCombo -value_type string -value {}
gui_create_state_key -category FindDialog -key m_pWrapAround -value_type bool -value true

# Layout_CoverageTable_covtblFGroupsList
gui_create_state_key -category Layout_CoverageTable_covtblFGroupsList -key names -value_type string -value {Group,    , ,  ,   ,Score,Assert,Covergroup,}
gui_create_state_key -category Layout_CoverageTable_covtblFGroupsList -key orders -value_type string -value 4,0,1,2,3,5,6,7,
gui_create_state_key -category Layout_CoverageTable_covtblFGroupsList -key widths -value_type string -value 220,0,25,0,0,125,125,125,

# Layout_CoverageTable_covtblInstancesList
gui_create_state_key -category Layout_CoverageTable_covtblInstancesList -key names -value_type string -value {Name,    , ,  ,   ,Score,Line,Toggle,FSM,Condition,Branch,Assert,}
gui_create_state_key -category Layout_CoverageTable_covtblInstancesList -key orders -value_type string -value 4,0,1,2,3,5,6,7,8,9,10,11,
gui_create_state_key -category Layout_CoverageTable_covtblInstancesList -key widths -value_type string -value 220,0,25,0,0,125,125,125,125,125,125,125,

# Layout_CoverageTable_covtblModulesList
gui_create_state_key -category Layout_CoverageTable_covtblModulesList -key names -value_type string -value {Name,    , ,  ,   ,Score,Line,Toggle,FSM,Condition,Branch,Assert,}
gui_create_state_key -category Layout_CoverageTable_covtblModulesList -key orders -value_type string -value 4,0,1,2,3,5,6,7,8,9,10,11,
gui_create_state_key -category Layout_CoverageTable_covtblModulesList -key widths -value_type string -value 220,0,25,0,0,125,125,125,125,125,125,125,

# Layout_CovDetail_lnListView
gui_create_state_key -category Layout_CovDetail_lnListView -key names -value_type string -value Category,Coverage,
gui_create_state_key -category Layout_CovDetail_lnListView -key orders -value_type string -value 0,1,
gui_create_state_key -category Layout_CovDetail_lnListView -key widths -value_type string -value 111,125,

# Layout_CovDetail_tglListView
gui_create_state_key -category Layout_CovDetail_tglListView -key names -value_type string -value {Variable, ,  ,   ,Type,Coverage,Display,}
gui_create_state_key -category Layout_CovDetail_tglListView -key orders -value_type string -value 3,0,1,2,4,5,6,
gui_create_state_key -category Layout_CovDetail_tglListView -key widths -value_type string -value 140,25,0,0,50,125,400,

# Layout_CovDetail_tglDetailListView
gui_create_state_key -category Layout_CovDetail_tglDetailListView -key names -value_type string -value {Variable, ,  ,   ,0->1,1->0,}
gui_create_state_key -category Layout_CovDetail_tglDetailListView -key orders -value_type string -value 3,0,1,2,4,5,
gui_create_state_key -category Layout_CovDetail_tglDetailListView -key widths -value_type string -value 140,25,0,0,50,50,

# Layout_CovDetail_fsmListView
gui_create_state_key -category Layout_CovDetail_fsmListView -key names -value_type string -value {FSM, ,  ,   ,State,Transition,Sequence,}
gui_create_state_key -category Layout_CovDetail_fsmListView -key orders -value_type string -value 3,0,1,2,5,4,6,
gui_create_state_key -category Layout_CovDetail_fsmListView -key widths -value_type string -value 87,25,0,0,125,125,125,

# Layout_CovDetail_fsmlist
gui_create_state_key -category Layout_CovDetail_fsmlist -key names -value_type string -value {Coverage, ,  ,   ,Transition,}
gui_create_state_key -category Layout_CovDetail_fsmlist -key orders -value_type string -value 3,0,1,2,4,
gui_create_state_key -category Layout_CovDetail_fsmlist -key widths -value_type string -value 125,25,0,0,108,

# Layout_CovDetail_cndListView
gui_create_state_key -category Layout_CovDetail_cndListView -key names -value_type string -value {Expression, ,  ,   ,ID,Coverage,Line No.,}
gui_create_state_key -category Layout_CovDetail_cndListView -key orders -value_type string -value 3,0,1,2,4,5,6,
gui_create_state_key -category Layout_CovDetail_cndListView -key widths -value_type string -value 320,25,0,0,0,125,87,

# Layout_CovDetail_brListView
gui_create_state_key -category Layout_CovDetail_brListView -key names -value_type string -value {Name, ,  ,   ,Coverage,Line No.,}
gui_create_state_key -category Layout_CovDetail_brListView -key orders -value_type string -value 3,0,1,2,4,5,
gui_create_state_key -category Layout_CovDetail_brListView -key widths -value_type string -value 100,25,0,0,125,63,

# Layout_CovDetail_designAssertListView
gui_create_state_key -category Layout_CovDetail_designAssertListView -key names -value_type string -value {Assert Name,    , ,  ,   ,Attempts,Real Successes,Failures,Incompletes,Category,Severity,}
gui_create_state_key -category Layout_CovDetail_designAssertListView -key orders -value_type string -value 4,0,1,2,3,5,6,7,8,9,10,
gui_create_state_key -category Layout_CovDetail_designAssertListView -key widths -value_type string -value 110,0,25,0,0,63,106,61,82,67,62,

# Layout_CovDetail_codeMiddleSplitter
gui_create_state_key -category Layout_CovDetail_codeMiddleSplitter -key value1 -value_type integer -value 10
gui_create_state_key -category Layout_CovDetail_codeMiddleSplitter -key value2 -value_type integer -value 294

# Layout_CovDetail_cndSplitter
gui_create_state_key -category Layout_CovDetail_cndSplitter -key value1 -value_type integer -value 100
gui_create_state_key -category Layout_CovDetail_cndSplitter -key value2 -value_type integer -value 192

# Layout_CovDetail_covGrpInsListView
gui_create_state_key -category Layout_CovDetail_covGrpInsListView -key names -value_type string -value {Cover Group Item,    , ,  ,   ,Definition,Score,Goal,Weight,At Least,Per Instance,Overlap,Auto Bin Max,Print Missing,Comment,}
gui_create_state_key -category Layout_CovDetail_covGrpInsListView -key orders -value_type string -value 4,0,1,2,3,5,6,7,8,9,10,11,12,13,14,
gui_create_state_key -category Layout_CovDetail_covGrpInsListView -key widths -value_type string -value 137,0,25,0,0,68,125,30,42,50,74,0,80,76,55,

# Layout_CovDetail_covGrpDefListView
gui_create_state_key -category Layout_CovDetail_covGrpDefListView -key names -value_type string -value {Cover Group Item,    , ,  ,   ,Score,Goal,Weight,At Least,Per Instance,Overlap,Auto Bin Max,Print Missing,Comment,}
gui_create_state_key -category Layout_CovDetail_covGrpDefListView -key orders -value_type string -value 4,0,1,2,3,5,6,7,8,9,10,11,12,13,
gui_create_state_key -category Layout_CovDetail_covGrpDefListView -key widths -value_type string -value 137,0,25,0,0,125,30,42,50,74,0,80,76,55,

# Layout_CovDetail_m_CovGrpTable
gui_create_state_key -category Layout_CovDetail_m_CovGrpTable -key names -value_type string -value {Bin Name,    , ,  ,   ,Status,Cross,At Least,Size,Hit Count,}
gui_create_state_key -category Layout_CovDetail_m_CovGrpTable -key orders -value_type string -value 5,0,1,2,3,4,6,7,8,9,
gui_create_state_key -category Layout_CovDetail_m_CovGrpTable -key widths -value_type string -value 93,0,25,0,0,150,0,62,40,68,

# Layout_CovDetail_assertion list
gui_create_state_key -category {Layout_CovDetail_assertion list} -key names -value_type string -value {Instance,    , ,  ,   ,Assert Name,Attempts,Real Successes,Failures,Incompletes,Category,Severity,}
gui_create_state_key -category {Layout_CovDetail_assertion list} -key orders -value_type string -value 4,0,1,2,3,5,6,7,8,9,10,11,
gui_create_state_key -category {Layout_CovDetail_assertion list} -key widths -value_type string -value 86,0,25,0,0,111,87,130,110,106,91,86,

# Layout_CovDetail_funMiddleSplitter
gui_create_state_key -category Layout_CovDetail_funMiddleSplitter -key value1 -value_type integer -value 42
gui_create_state_key -category Layout_CovDetail_funMiddleSplitter -key value2 -value_type integer -value 42

# Layout_CovDetail_splitterWithPrefVal
gui_create_state_key -category Layout_CovDetail_splitterWithPrefVal -key value1 -value_type integer -value 100
gui_create_state_key -category Layout_CovDetail_splitterWithPrefVal -key value2 -value_type integer -value 382


gui_state_default_create -off
