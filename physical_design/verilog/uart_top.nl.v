// This is the unpowered netlist.
module uart_top (clk,
    loopback_en,
    rx_pin,
    rx_valid,
    tx_done,
    tx_pin,
    tx_start,
    rx_data,
    tx_data);
 input clk;
 input loopback_en;
 input rx_pin;
 output rx_valid;
 output tx_done;
 output tx_pin;
 input tx_start;
 output [7:0] rx_data;
 input [7:0] tx_data;

 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire _054_;
 wire _055_;
 wire _056_;
 wire _057_;
 wire _058_;
 wire _059_;
 wire _060_;
 wire _061_;
 wire _062_;
 wire _063_;
 wire _064_;
 wire _065_;
 wire _066_;
 wire _067_;
 wire _068_;
 wire _069_;
 wire _070_;
 wire _071_;
 wire _072_;
 wire _073_;
 wire _074_;
 wire _075_;
 wire _076_;
 wire _077_;
 wire _078_;
 wire _079_;
 wire _080_;
 wire _081_;
 wire _082_;
 wire _083_;
 wire _084_;
 wire _085_;
 wire _086_;
 wire _087_;
 wire _088_;
 wire _089_;
 wire _090_;
 wire _091_;
 wire _092_;
 wire _093_;
 wire _094_;
 wire _095_;
 wire _096_;
 wire _097_;
 wire _098_;
 wire _099_;
 wire _100_;
 wire _101_;
 wire _102_;
 wire _103_;
 wire _104_;
 wire _105_;
 wire _106_;
 wire _107_;
 wire _108_;
 wire _109_;
 wire _110_;
 wire _111_;
 wire _112_;
 wire _113_;
 wire _114_;
 wire _115_;
 wire _116_;
 wire _117_;
 wire _118_;
 wire _119_;
 wire _120_;
 wire _121_;
 wire _122_;
 wire _123_;
 wire _124_;
 wire _125_;
 wire _126_;
 wire _127_;
 wire _128_;
 wire _129_;
 wire _130_;
 wire _131_;
 wire _132_;
 wire _133_;
 wire _134_;
 wire _135_;
 wire _136_;
 wire _137_;
 wire _138_;
 wire _139_;
 wire _140_;
 wire _141_;
 wire _142_;
 wire _143_;
 wire _144_;
 wire _145_;
 wire _146_;
 wire _147_;
 wire _148_;
 wire _149_;
 wire _150_;
 wire _151_;
 wire _152_;
 wire _153_;
 wire _154_;
 wire _155_;
 wire _156_;
 wire _157_;
 wire _158_;
 wire _159_;
 wire _160_;
 wire _161_;
 wire _162_;
 wire _163_;
 wire _164_;
 wire _165_;
 wire _166_;
 wire _167_;
 wire _168_;
 wire _169_;
 wire _170_;
 wire _171_;
 wire clknet_0_clk;
 wire clknet_2_0__leaf_clk;
 wire clknet_2_1__leaf_clk;
 wire clknet_2_2__leaf_clk;
 wire clknet_2_3__leaf_clk;
 wire net1;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net2;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net26;
 wire net27;
 wire net28;
 wire net29;
 wire net3;
 wire net30;
 wire net31;
 wire net32;
 wire net33;
 wire net34;
 wire net35;
 wire net36;
 wire net37;
 wire net38;
 wire net39;
 wire net4;
 wire net40;
 wire net41;
 wire net42;
 wire net43;
 wire net44;
 wire net45;
 wire net46;
 wire net47;
 wire net48;
 wire net49;
 wire net5;
 wire net50;
 wire net51;
 wire net52;
 wire net53;
 wire net54;
 wire net55;
 wire net56;
 wire net57;
 wire net58;
 wire net59;
 wire net6;
 wire net60;
 wire net61;
 wire net62;
 wire net7;
 wire net8;
 wire net9;
 wire \u_rx.baud_cnt[0] ;
 wire \u_rx.baud_cnt[1] ;
 wire \u_rx.baud_cnt[2] ;
 wire \u_rx.baud_cnt[3] ;
 wire \u_rx.baud_cnt[4] ;
 wire \u_rx.baud_cnt[5] ;
 wire \u_rx.baud_cnt[6] ;
 wire \u_rx.baud_cnt[7] ;
 wire \u_rx.bit_cnt[0] ;
 wire \u_rx.bit_cnt[1] ;
 wire \u_rx.bit_cnt[2] ;
 wire \u_rx.state[0] ;
 wire \u_rx.state[1] ;
 wire \u_rx.state[2] ;
 wire \u_tx.baud_cnt[0] ;
 wire \u_tx.baud_cnt[1] ;
 wire \u_tx.baud_cnt[2] ;
 wire \u_tx.baud_cnt[3] ;
 wire \u_tx.baud_cnt[4] ;
 wire \u_tx.baud_cnt[5] ;
 wire \u_tx.baud_cnt[6] ;
 wire \u_tx.baud_cnt[7] ;
 wire \u_tx.bit_cnt[0] ;
 wire \u_tx.bit_cnt[1] ;
 wire \u_tx.bit_cnt[2] ;
 wire \u_tx.state[0] ;
 wire \u_tx.state[1] ;
 wire \u_tx.state[2] ;
 wire \u_tx.tx_shift_reg[0] ;
 wire \u_tx.tx_shift_reg[1] ;
 wire \u_tx.tx_shift_reg[2] ;
 wire \u_tx.tx_shift_reg[3] ;
 wire \u_tx.tx_shift_reg[4] ;
 wire \u_tx.tx_shift_reg[5] ;
 wire \u_tx.tx_shift_reg[6] ;
 wire \u_tx.tx_shift_reg[7] ;

 sky130_fd_sc_hd__decap_8 FILLER_0_0_104 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_0_113 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_0_125 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_0_137 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_0_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_0_149 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_0_161 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_0_167 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_0_169 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_0_18 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_0_181 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_0_29 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_0_33 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_0_49 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_0_55 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_0_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_0_6 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_0_65 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_0_69 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_0_81 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_0_95 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_10_129 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_10_137 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_153 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_165 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_177 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_10_18 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_10_189 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_10_22 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_10_26 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_10_37 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_6 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_10_65 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_10_69 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_10_80 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_85 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_10_97 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_11_111 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_11_113 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_11_15 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_150 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_11_162 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_169 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_11_181 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_11_189 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_11_35 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_11_55 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_11_67 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_83 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_12_104 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_124 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_12_136 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_157 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_169 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_12_181 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_12_187 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_12_19 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_12_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_37 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_12_49 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_58 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_70 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_12_82 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_85 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_12_97 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_13_110 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_113 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_125 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_137 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_149 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_15 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_13_161 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_13_167 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_169 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_13_181 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_13_189 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_3 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_13_39 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_62 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_74 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_86 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_98 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_14_118 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_14_128 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_14_137 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_14_141 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_14_15 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_151 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_14_163 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_14_176 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_14_186 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_14_190 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_14_23 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_3 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_14_38 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_14_44 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_14_78 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_15_109 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_15_113 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_15_135 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_15_164 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_15_18 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_15_185 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_15_24 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15_41 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_15_53 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_15_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_15_65 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_15_75 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_15_87 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_114 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_126 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_16_138 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_153 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_165 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_177 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_16_189 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_16_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_41 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_16_53 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_16_62 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_16_76 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_16_85 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_10 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_17_103 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_17_111 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_122 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_134 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_146 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_17_158 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_17_166 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_17_169 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_17_177 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_17_187 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_17_22 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_17_28 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_17_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_17_38 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_17_57 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_17_63 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_67 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_79 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_91 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_18_104 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_18_141 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_18_15 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_18_168 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_18_176 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_18_187 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_18_23 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_18_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_18_53 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_18_65 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_18_82 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_18_85 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_19_109 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_19_113 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_19_129 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_19_136 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_19_149 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_15 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_19_164 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_19_169 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_19_189 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_39 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_19_51 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_19_55 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_57 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_19_69 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_19_73 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_93 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_1_107 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_1_111 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_1_113 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_1_121 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_1_138 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_1_15 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_1_150 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_1_162 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_1_169 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_1_181 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_1_189 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_1_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_1_37 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_1_57 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_1_63 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_1_81 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_1_89 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_121 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_20_133 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_20_139 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_20_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_15 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_20_170 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_20_176 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_20_180 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_20_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_20_41 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_20_60 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_20_66 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_72 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_20_85 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_20_95 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_21_104 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_21_113 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_21_125 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_21_147 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_21_15 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_21_159 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_21_167 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_21_169 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_21_181 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_21_189 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_21_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_21_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_21_40 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_21_52 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_21_76 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_21_88 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_21_94 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_22_108 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_22_120 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_22_129 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_22_133 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_22_15 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_22_162 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_22_170 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_22_188 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_22_23 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_22_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_22_45 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_22_57 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_22_65 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_22_83 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_22_85 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_22_96 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_23_107 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_23_121 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_23_133 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_23_145 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_23_151 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_23_166 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_23_169 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_23_187 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_23_29 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_23_37 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_23_46 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_23_54 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_23_78 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_23_9 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_23_99 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_24_126 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_24_138 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_24_141 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_24_149 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_24_176 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_24_182 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_24_24 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_24_29 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_24_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_24_46 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_24_7 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_24_72 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_24_85 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_24_97 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_25_101 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_25_109 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_25_113 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_25_125 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_25_137 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_25_149 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_25_15 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_25_161 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_25_167 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_25_169 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_25_181 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_25_189 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_25_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_25_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_25_39 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_25_51 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_25_55 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_25_57 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_25_69 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_25_77 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_25_87 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_25_95 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_26_120 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_26_141 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_26_156 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_26_165 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_26_177 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_26_185 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_26_23 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_26_27 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_26_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_26_56 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_26_64 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_26_76 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_26_85 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_26_97 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_27_105 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_27_111 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_27_113 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_27_125 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_27_132 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_27_15 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_27_163 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_27_167 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_27_169 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_27_181 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_27_189 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_27_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_27_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_27_35 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_27_39 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_27_51 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_27_55 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_27_71 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_27_75 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_27_81 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_27_91 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_28_101 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_28_113 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_28_117 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_28_129 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_28_137 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_28_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_28_15 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_28_153 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_28_165 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_28_177 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_28_189 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_28_27 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_28_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_28_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_28_37 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_28_44 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_28_52 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_28_61 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_28_73 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_28_81 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_28_85 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_29_100 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_29_113 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_131 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_143 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_15 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_155 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_29_167 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_169 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_29_181 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_29_189 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_29_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_29_39 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_29_52 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_29_63 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_78 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_29_90 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_110 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_2_122 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_127 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_2_139 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_153 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_165 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_177 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_2_189 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_2_21 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_2_27 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_2_37 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_2_45 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_58 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_70 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_2_82 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_2_85 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_9 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_2_93 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_98 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_30_110 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_30_122 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_30_134 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_30_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_30_15 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_30_153 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_30_165 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_30_177 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_30_189 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_30_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_30_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_30_45 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_30_64 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_30_85 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_30_93 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_31_104 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_31_111 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_113 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_12 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_125 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_31_137 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_31_141 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_31_149 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_153 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_31_165 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_169 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_31_181 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_31_24 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_31_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_31_37 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_31_49 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_31_55 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_31_57 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_31_61 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_31_70 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_31_79 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_31_83 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_31_85 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_31_93 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_3_101 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_3_109 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_113 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_3_142 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_3_161 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_3_167 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_169 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_3_181 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_3_189 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_20 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_3_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_32 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_44 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_3_57 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_3_65 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_3_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_3_85 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_3_91 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_109 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_4_121 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_127 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_4_139 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_161 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_173 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_4_185 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_4_27 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_4_29 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_4_3 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_4_44 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_4_52 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_4_63 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_4_82 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_85 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_97 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_5_111 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_5_129 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_136 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_148 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_5_15 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_5_160 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_169 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_5_181 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_5_23 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_44 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_69 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_81 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_5_93 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_109 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_121 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_6_133 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_6_139 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_6_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_15 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_151 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_163 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_175 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_6_187 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_6_27 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_6_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_6_37 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_6_46 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_6_54 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_6_60 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_6_83 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_85 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_97 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_7_107 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_7_111 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_7_113 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_7_135 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_7_166 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_7_169 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_7_181 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_7_189 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_7_19 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_7_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_7_31 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_7_36 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_7_44 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_7_53 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_7_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_7_93 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_8_103 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_8_115 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_8_127 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_8_131 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_8_139 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_8_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_8_15 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_8_153 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_8_165 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_8_177 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_8_189 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_8_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_8_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_8_35 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_8_47 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_8_63 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_8_75 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_8_83 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_8_90 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_8_94 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_113 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_125 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_137 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_149 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_9_161 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_9_167 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_169 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_9_181 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_9_189 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_9_27 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_9_3 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_9_35 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_9_43 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_9_52 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_9_57 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_9_63 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_71 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_83 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_9_95 ();
 sky130_fd_sc_hd__decap_3 PHY_0 ();
 sky130_fd_sc_hd__decap_3 PHY_1 ();
 sky130_fd_sc_hd__decap_3 PHY_10 ();
 sky130_fd_sc_hd__decap_3 PHY_11 ();
 sky130_fd_sc_hd__decap_3 PHY_12 ();
 sky130_fd_sc_hd__decap_3 PHY_13 ();
 sky130_fd_sc_hd__decap_3 PHY_14 ();
 sky130_fd_sc_hd__decap_3 PHY_15 ();
 sky130_fd_sc_hd__decap_3 PHY_16 ();
 sky130_fd_sc_hd__decap_3 PHY_17 ();
 sky130_fd_sc_hd__decap_3 PHY_18 ();
 sky130_fd_sc_hd__decap_3 PHY_19 ();
 sky130_fd_sc_hd__decap_3 PHY_2 ();
 sky130_fd_sc_hd__decap_3 PHY_20 ();
 sky130_fd_sc_hd__decap_3 PHY_21 ();
 sky130_fd_sc_hd__decap_3 PHY_22 ();
 sky130_fd_sc_hd__decap_3 PHY_23 ();
 sky130_fd_sc_hd__decap_3 PHY_24 ();
 sky130_fd_sc_hd__decap_3 PHY_25 ();
 sky130_fd_sc_hd__decap_3 PHY_26 ();
 sky130_fd_sc_hd__decap_3 PHY_27 ();
 sky130_fd_sc_hd__decap_3 PHY_28 ();
 sky130_fd_sc_hd__decap_3 PHY_29 ();
 sky130_fd_sc_hd__decap_3 PHY_3 ();
 sky130_fd_sc_hd__decap_3 PHY_30 ();
 sky130_fd_sc_hd__decap_3 PHY_31 ();
 sky130_fd_sc_hd__decap_3 PHY_32 ();
 sky130_fd_sc_hd__decap_3 PHY_33 ();
 sky130_fd_sc_hd__decap_3 PHY_34 ();
 sky130_fd_sc_hd__decap_3 PHY_35 ();
 sky130_fd_sc_hd__decap_3 PHY_36 ();
 sky130_fd_sc_hd__decap_3 PHY_37 ();
 sky130_fd_sc_hd__decap_3 PHY_38 ();
 sky130_fd_sc_hd__decap_3 PHY_39 ();
 sky130_fd_sc_hd__decap_3 PHY_4 ();
 sky130_fd_sc_hd__decap_3 PHY_40 ();
 sky130_fd_sc_hd__decap_3 PHY_41 ();
 sky130_fd_sc_hd__decap_3 PHY_42 ();
 sky130_fd_sc_hd__decap_3 PHY_43 ();
 sky130_fd_sc_hd__decap_3 PHY_44 ();
 sky130_fd_sc_hd__decap_3 PHY_45 ();
 sky130_fd_sc_hd__decap_3 PHY_46 ();
 sky130_fd_sc_hd__decap_3 PHY_47 ();
 sky130_fd_sc_hd__decap_3 PHY_48 ();
 sky130_fd_sc_hd__decap_3 PHY_49 ();
 sky130_fd_sc_hd__decap_3 PHY_5 ();
 sky130_fd_sc_hd__decap_3 PHY_50 ();
 sky130_fd_sc_hd__decap_3 PHY_51 ();
 sky130_fd_sc_hd__decap_3 PHY_52 ();
 sky130_fd_sc_hd__decap_3 PHY_53 ();
 sky130_fd_sc_hd__decap_3 PHY_54 ();
 sky130_fd_sc_hd__decap_3 PHY_55 ();
 sky130_fd_sc_hd__decap_3 PHY_56 ();
 sky130_fd_sc_hd__decap_3 PHY_57 ();
 sky130_fd_sc_hd__decap_3 PHY_58 ();
 sky130_fd_sc_hd__decap_3 PHY_59 ();
 sky130_fd_sc_hd__decap_3 PHY_6 ();
 sky130_fd_sc_hd__decap_3 PHY_60 ();
 sky130_fd_sc_hd__decap_3 PHY_61 ();
 sky130_fd_sc_hd__decap_3 PHY_62 ();
 sky130_fd_sc_hd__decap_3 PHY_63 ();
 sky130_fd_sc_hd__decap_3 PHY_7 ();
 sky130_fd_sc_hd__decap_3 PHY_8 ();
 sky130_fd_sc_hd__decap_3 PHY_9 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_100 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_101 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_102 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_103 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_104 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_105 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_106 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_107 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_108 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_109 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_110 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_111 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_112 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_113 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_114 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_115 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_116 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_117 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_118 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_119 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_120 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_121 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_122 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_123 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_124 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_125 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_126 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_127 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_128 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_129 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_130 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_131 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_132 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_133 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_134 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_135 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_136 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_137 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_138 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_139 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_140 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_141 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_142 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_143 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_144 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_145 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_146 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_147 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_148 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_149 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_150 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_151 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_152 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_153 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_154 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_155 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_156 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_157 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_158 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_159 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_160 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_161 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_162 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_163 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_164 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_165 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_64 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_65 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_66 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_67 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_68 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_69 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_70 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_71 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_72 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_73 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_74 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_75 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_76 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_77 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_78 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_79 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_80 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_81 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_82 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_83 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_84 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_85 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_86 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_87 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_88 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_89 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_90 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_91 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_92 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_93 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_94 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_95 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_96 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_97 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_98 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_99 ();
 sky130_fd_sc_hd__a21o_1 _172_ (.A1(\u_tx.baud_cnt[4] ),
    .A2(\u_tx.baud_cnt[3] ),
    .B1(\u_tx.baud_cnt[5] ),
    .X(_047_));
 sky130_fd_sc_hd__nand3_2 _173_ (.A(net33),
    .B(\u_tx.baud_cnt[7] ),
    .C(_047_),
    .Y(_048_));
 sky130_fd_sc_hd__and2b_1 _174_ (.A_N(\u_tx.state[2] ),
    .B(\u_tx.state[0] ),
    .X(_049_));
 sky130_fd_sc_hd__nor3b_1 _175_ (.A(\u_tx.state[2] ),
    .B(\u_tx.state[0] ),
    .C_N(\u_tx.state[1] ),
    .Y(_050_));
 sky130_fd_sc_hd__and4_1 _176_ (.A(\u_tx.baud_cnt[6] ),
    .B(\u_tx.baud_cnt[7] ),
    .C(_047_),
    .D(_050_),
    .X(_051_));
 sky130_fd_sc_hd__and3_1 _177_ (.A(\u_tx.bit_cnt[2] ),
    .B(\u_tx.bit_cnt[0] ),
    .C(\u_tx.bit_cnt[1] ),
    .X(_052_));
 sky130_fd_sc_hd__nor3_1 _178_ (.A(\u_tx.state[2] ),
    .B(\u_tx.state[0] ),
    .C(\u_tx.state[1] ),
    .Y(_053_));
 sky130_fd_sc_hd__nand2_4 _179_ (.A(net11),
    .B(net23),
    .Y(_054_));
 sky130_fd_sc_hd__inv_2 _180_ (.A(_054_),
    .Y(_055_));
 sky130_fd_sc_hd__a221o_1 _181_ (.A1(_048_),
    .A2(_049_),
    .B1(_051_),
    .B2(_052_),
    .C1(_055_),
    .X(_044_));
 sky130_fd_sc_hd__and3_1 _182_ (.A(\u_tx.state[1] ),
    .B(_048_),
    .C(_049_),
    .X(_056_));
 sky130_fd_sc_hd__buf_2 _183_ (.A(\u_tx.state[2] ),
    .X(_057_));
 sky130_fd_sc_hd__or4b_1 _184_ (.A(_057_),
    .B(\u_tx.state[1] ),
    .C(_048_),
    .D_N(\u_tx.state[0] ),
    .X(_058_));
 sky130_fd_sc_hd__or3b_1 _185_ (.A(_050_),
    .B(_056_),
    .C_N(_058_),
    .X(_059_));
 sky130_fd_sc_hd__clkbuf_1 _186_ (.A(_059_),
    .X(_045_));
 sky130_fd_sc_hd__inv_2 _187_ (.A(net57),
    .Y(_060_));
 sky130_fd_sc_hd__nor3b_1 _188_ (.A(_060_),
    .B(_048_),
    .C_N(_049_),
    .Y(_046_));
 sky130_fd_sc_hd__nand2_1 _189_ (.A(\u_rx.bit_cnt[0] ),
    .B(\u_rx.bit_cnt[1] ),
    .Y(_061_));
 sky130_fd_sc_hd__or2_1 _190_ (.A(\u_rx.bit_cnt[0] ),
    .B(\u_rx.bit_cnt[1] ),
    .X(_062_));
 sky130_fd_sc_hd__or2_1 _191_ (.A(\u_rx.bit_cnt[2] ),
    .B(_062_),
    .X(_063_));
 sky130_fd_sc_hd__nand2_1 _192_ (.A(\u_rx.bit_cnt[2] ),
    .B(_062_),
    .Y(_064_));
 sky130_fd_sc_hd__a21o_2 _193_ (.A1(\u_rx.baud_cnt[4] ),
    .A2(\u_rx.baud_cnt[3] ),
    .B1(\u_rx.baud_cnt[5] ),
    .X(_065_));
 sky130_fd_sc_hd__nor3b_2 _194_ (.A(\u_rx.state[2] ),
    .B(\u_rx.state[0] ),
    .C_N(\u_rx.state[1] ),
    .Y(_066_));
 sky130_fd_sc_hd__nand4_4 _195_ (.A(\u_rx.baud_cnt[6] ),
    .B(\u_rx.baud_cnt[7] ),
    .C(_065_),
    .D(_066_),
    .Y(_067_));
 sky130_fd_sc_hd__a21o_1 _196_ (.A1(_063_),
    .A2(_064_),
    .B1(_067_),
    .X(_068_));
 sky130_fd_sc_hd__nor2_1 _197_ (.A(_061_),
    .B(_068_),
    .Y(_069_));
 sky130_fd_sc_hd__inv_2 _198_ (.A(\u_rx.state[1] ),
    .Y(_070_));
 sky130_fd_sc_hd__a311oi_4 _199_ (.A1(\u_rx.baud_cnt[6] ),
    .A2(\u_rx.baud_cnt[7] ),
    .A3(_065_),
    .B1(_070_),
    .C1(\u_rx.state[2] ),
    .Y(_071_));
 sky130_fd_sc_hd__and2_1 _200_ (.A(\u_rx.state[0] ),
    .B(_071_),
    .X(_072_));
 sky130_fd_sc_hd__and4bb_1 _201_ (.A_N(\u_rx.baud_cnt[4] ),
    .B_N(\u_rx.baud_cnt[7] ),
    .C(\u_rx.baud_cnt[2] ),
    .D(\u_rx.baud_cnt[3] ),
    .X(_073_));
 sky130_fd_sc_hd__and4bb_1 _202_ (.A_N(\u_rx.baud_cnt[1] ),
    .B_N(\u_rx.baud_cnt[0] ),
    .C(\u_rx.baud_cnt[6] ),
    .D(\u_rx.baud_cnt[5] ),
    .X(_074_));
 sky130_fd_sc_hd__or3b_1 _203_ (.A(\u_rx.state[2] ),
    .B(\u_rx.state[1] ),
    .C_N(\u_rx.state[0] ),
    .X(_075_));
 sky130_fd_sc_hd__a21oi_1 _204_ (.A1(_073_),
    .A2(_074_),
    .B1(_075_),
    .Y(_076_));
 sky130_fd_sc_hd__or3_1 _205_ (.A(\u_rx.state[2] ),
    .B(\u_rx.state[0] ),
    .C(\u_rx.state[1] ),
    .X(_077_));
 sky130_fd_sc_hd__mux2_1 _206_ (.A0(net2),
    .A1(net22),
    .S(net1),
    .X(_078_));
 sky130_fd_sc_hd__clkbuf_4 _207_ (.A(_078_),
    .X(_079_));
 sky130_fd_sc_hd__nor2_1 _208_ (.A(_077_),
    .B(_079_),
    .Y(_080_));
 sky130_fd_sc_hd__or4_1 _209_ (.A(_069_),
    .B(_072_),
    .C(_076_),
    .D(_080_),
    .X(_081_));
 sky130_fd_sc_hd__clkbuf_1 _210_ (.A(_081_),
    .X(_041_));
 sky130_fd_sc_hd__and3b_1 _211_ (.A_N(\u_rx.state[2] ),
    .B(\u_rx.state[0] ),
    .C(_070_),
    .X(_082_));
 sky130_fd_sc_hd__and2_1 _212_ (.A(_073_),
    .B(_074_),
    .X(_083_));
 sky130_fd_sc_hd__inv_2 _213_ (.A(_079_),
    .Y(_084_));
 sky130_fd_sc_hd__a311o_1 _214_ (.A1(_082_),
    .A2(_083_),
    .A3(_084_),
    .B1(_072_),
    .C1(_066_),
    .X(_042_));
 sky130_fd_sc_hd__and3_1 _215_ (.A(\u_rx.baud_cnt[6] ),
    .B(\u_rx.baud_cnt[7] ),
    .C(_065_),
    .X(_085_));
 sky130_fd_sc_hd__and4b_1 _216_ (.A_N(\u_rx.state[2] ),
    .B(\u_rx.state[0] ),
    .C(\u_rx.state[1] ),
    .D(_085_),
    .X(_086_));
 sky130_fd_sc_hd__clkbuf_1 _217_ (.A(_086_),
    .X(_043_));
 sky130_fd_sc_hd__mux2_1 _218_ (.A0(net3),
    .A1(net46),
    .S(_054_),
    .X(_087_));
 sky130_fd_sc_hd__clkbuf_1 _219_ (.A(_087_),
    .X(_000_));
 sky130_fd_sc_hd__mux2_1 _220_ (.A0(net4),
    .A1(net43),
    .S(_054_),
    .X(_088_));
 sky130_fd_sc_hd__clkbuf_1 _221_ (.A(_088_),
    .X(_001_));
 sky130_fd_sc_hd__mux2_1 _222_ (.A0(net5),
    .A1(net52),
    .S(_054_),
    .X(_089_));
 sky130_fd_sc_hd__clkbuf_1 _223_ (.A(_089_),
    .X(_002_));
 sky130_fd_sc_hd__mux2_1 _224_ (.A0(net6),
    .A1(net40),
    .S(_054_),
    .X(_090_));
 sky130_fd_sc_hd__clkbuf_1 _225_ (.A(_090_),
    .X(_003_));
 sky130_fd_sc_hd__mux2_1 _226_ (.A0(net7),
    .A1(net41),
    .S(_054_),
    .X(_091_));
 sky130_fd_sc_hd__clkbuf_1 _227_ (.A(_091_),
    .X(_004_));
 sky130_fd_sc_hd__mux2_1 _228_ (.A0(net8),
    .A1(net51),
    .S(_054_),
    .X(_092_));
 sky130_fd_sc_hd__clkbuf_1 _229_ (.A(_092_),
    .X(_005_));
 sky130_fd_sc_hd__mux2_1 _230_ (.A0(net9),
    .A1(net45),
    .S(_054_),
    .X(_093_));
 sky130_fd_sc_hd__clkbuf_1 _231_ (.A(_093_),
    .X(_006_));
 sky130_fd_sc_hd__mux2_1 _232_ (.A0(net10),
    .A1(net42),
    .S(_054_),
    .X(_094_));
 sky130_fd_sc_hd__clkbuf_1 _233_ (.A(_094_),
    .X(_007_));
 sky130_fd_sc_hd__and2_1 _234_ (.A(_085_),
    .B(_066_),
    .X(_095_));
 sky130_fd_sc_hd__and2_1 _235_ (.A(_067_),
    .B(_077_),
    .X(_096_));
 sky130_fd_sc_hd__mux2_1 _236_ (.A0(_095_),
    .A1(_096_),
    .S(\u_rx.bit_cnt[0] ),
    .X(_097_));
 sky130_fd_sc_hd__clkbuf_1 _237_ (.A(_097_),
    .X(_008_));
 sky130_fd_sc_hd__a32o_1 _238_ (.A1(_061_),
    .A2(_095_),
    .A3(_062_),
    .B1(_096_),
    .B2(net60),
    .X(_009_));
 sky130_fd_sc_hd__inv_2 _239_ (.A(\u_rx.bit_cnt[2] ),
    .Y(_098_));
 sky130_fd_sc_hd__o21ai_1 _240_ (.A1(_061_),
    .A2(_096_),
    .B1(_098_),
    .Y(_099_));
 sky130_fd_sc_hd__o311a_1 _241_ (.A1(_098_),
    .A2(_061_),
    .A3(_067_),
    .B1(_077_),
    .C1(_099_),
    .X(_010_));
 sky130_fd_sc_hd__o22a_1 _242_ (.A1(\u_rx.state[0] ),
    .A2(\u_rx.state[1] ),
    .B1(net24),
    .B2(_043_),
    .X(_011_));
 sky130_fd_sc_hd__o21a_1 _243_ (.A1(_053_),
    .A2(_051_),
    .B1(\u_tx.bit_cnt[0] ),
    .X(_100_));
 sky130_fd_sc_hd__o21ba_1 _244_ (.A1(net61),
    .A2(_051_),
    .B1_N(_100_),
    .X(_012_));
 sky130_fd_sc_hd__a21oi_1 _245_ (.A1(\u_tx.bit_cnt[1] ),
    .A2(_100_),
    .B1(net23),
    .Y(_101_));
 sky130_fd_sc_hd__o21a_1 _246_ (.A1(net50),
    .A2(_100_),
    .B1(_101_),
    .X(_013_));
 sky130_fd_sc_hd__a21oi_1 _247_ (.A1(\u_tx.bit_cnt[1] ),
    .A2(_100_),
    .B1(net34),
    .Y(_102_));
 sky130_fd_sc_hd__or3_1 _248_ (.A(_057_),
    .B(\u_tx.state[0] ),
    .C(_060_),
    .X(_103_));
 sky130_fd_sc_hd__o22a_1 _249_ (.A1(_053_),
    .A2(_051_),
    .B1(_052_),
    .B2(_103_),
    .X(_104_));
 sky130_fd_sc_hd__nor2_1 _250_ (.A(net35),
    .B(_104_),
    .Y(_014_));
 sky130_fd_sc_hd__mux4_1 _251_ (.A0(\u_tx.tx_shift_reg[0] ),
    .A1(\u_tx.tx_shift_reg[1] ),
    .A2(\u_tx.tx_shift_reg[4] ),
    .A3(\u_tx.tx_shift_reg[5] ),
    .S0(\u_tx.bit_cnt[0] ),
    .S1(\u_tx.bit_cnt[2] ),
    .X(_105_));
 sky130_fd_sc_hd__mux4_1 _252_ (.A0(\u_tx.tx_shift_reg[2] ),
    .A1(\u_tx.tx_shift_reg[3] ),
    .A2(\u_tx.tx_shift_reg[6] ),
    .A3(\u_tx.tx_shift_reg[7] ),
    .S0(\u_tx.bit_cnt[0] ),
    .S1(\u_tx.bit_cnt[2] ),
    .X(_106_));
 sky130_fd_sc_hd__mux2_1 _253_ (.A0(_105_),
    .A1(_106_),
    .S(\u_tx.bit_cnt[1] ),
    .X(_107_));
 sky130_fd_sc_hd__or3_1 _254_ (.A(\u_tx.state[0] ),
    .B(_060_),
    .C(_107_),
    .X(_108_));
 sky130_fd_sc_hd__a21oi_1 _255_ (.A1(\u_tx.state[0] ),
    .A2(_060_),
    .B1(_057_),
    .Y(_109_));
 sky130_fd_sc_hd__a22o_1 _256_ (.A1(_057_),
    .A2(net49),
    .B1(_108_),
    .B2(_109_),
    .X(_015_));
 sky130_fd_sc_hd__o22a_1 _257_ (.A1(\u_tx.state[0] ),
    .A2(\u_tx.state[1] ),
    .B1(net26),
    .B2(_046_),
    .X(_016_));
 sky130_fd_sc_hd__or2_1 _258_ (.A(_067_),
    .B(_063_),
    .X(_110_));
 sky130_fd_sc_hd__mux2_1 _259_ (.A0(_079_),
    .A1(net53),
    .S(_110_),
    .X(_111_));
 sky130_fd_sc_hd__clkbuf_1 _260_ (.A(_111_),
    .X(_017_));
 sky130_fd_sc_hd__or4b_1 _261_ (.A(\u_rx.bit_cnt[2] ),
    .B(\u_rx.bit_cnt[1] ),
    .C(_067_),
    .D_N(\u_rx.bit_cnt[0] ),
    .X(_112_));
 sky130_fd_sc_hd__mux2_1 _262_ (.A0(_079_),
    .A1(net37),
    .S(_112_),
    .X(_113_));
 sky130_fd_sc_hd__clkbuf_1 _263_ (.A(_113_),
    .X(_018_));
 sky130_fd_sc_hd__or4b_1 _264_ (.A(\u_rx.bit_cnt[0] ),
    .B(_067_),
    .C(\u_rx.bit_cnt[2] ),
    .D_N(\u_rx.bit_cnt[1] ),
    .X(_114_));
 sky130_fd_sc_hd__mux2_1 _265_ (.A0(_079_),
    .A1(net39),
    .S(_114_),
    .X(_115_));
 sky130_fd_sc_hd__clkbuf_1 _266_ (.A(_115_),
    .X(_019_));
 sky130_fd_sc_hd__and4_1 _267_ (.A(\u_rx.bit_cnt[0] ),
    .B(_098_),
    .C(\u_rx.bit_cnt[1] ),
    .D(_095_),
    .X(_116_));
 sky130_fd_sc_hd__mux2_1 _268_ (.A0(net54),
    .A1(_079_),
    .S(_116_),
    .X(_117_));
 sky130_fd_sc_hd__clkbuf_1 _269_ (.A(_117_),
    .X(_020_));
 sky130_fd_sc_hd__or3_1 _270_ (.A(_098_),
    .B(_067_),
    .C(_062_),
    .X(_118_));
 sky130_fd_sc_hd__mux2_1 _271_ (.A0(_079_),
    .A1(net62),
    .S(_118_),
    .X(_119_));
 sky130_fd_sc_hd__clkbuf_1 _272_ (.A(_119_),
    .X(_021_));
 sky130_fd_sc_hd__or3b_1 _273_ (.A(\u_rx.bit_cnt[1] ),
    .B(_068_),
    .C_N(\u_rx.bit_cnt[0] ),
    .X(_120_));
 sky130_fd_sc_hd__mux2_1 _274_ (.A0(_079_),
    .A1(net17),
    .S(_120_),
    .X(_121_));
 sky130_fd_sc_hd__clkbuf_1 _275_ (.A(_121_),
    .X(_022_));
 sky130_fd_sc_hd__or3b_1 _276_ (.A(_068_),
    .B(\u_rx.bit_cnt[0] ),
    .C_N(\u_rx.bit_cnt[1] ),
    .X(_122_));
 sky130_fd_sc_hd__mux2_1 _277_ (.A0(_079_),
    .A1(net48),
    .S(_122_),
    .X(_123_));
 sky130_fd_sc_hd__clkbuf_1 _278_ (.A(_123_),
    .X(_023_));
 sky130_fd_sc_hd__mux2_1 _279_ (.A0(net38),
    .A1(_079_),
    .S(_069_),
    .X(_124_));
 sky130_fd_sc_hd__clkbuf_1 _280_ (.A(_124_),
    .X(_024_));
 sky130_fd_sc_hd__or2_1 _281_ (.A(_049_),
    .B(_050_),
    .X(_125_));
 sky130_fd_sc_hd__and2_1 _282_ (.A(_048_),
    .B(_125_),
    .X(_126_));
 sky130_fd_sc_hd__clkbuf_2 _283_ (.A(_126_),
    .X(_127_));
 sky130_fd_sc_hd__mux2_1 _284_ (.A0(_127_),
    .A1(_057_),
    .S(\u_tx.baud_cnt[0] ),
    .X(_128_));
 sky130_fd_sc_hd__clkbuf_1 _285_ (.A(_128_),
    .X(_025_));
 sky130_fd_sc_hd__or2_1 _286_ (.A(\u_tx.baud_cnt[0] ),
    .B(\u_tx.baud_cnt[1] ),
    .X(_129_));
 sky130_fd_sc_hd__nand2_1 _287_ (.A(\u_tx.baud_cnt[0] ),
    .B(net31),
    .Y(_130_));
 sky130_fd_sc_hd__a32o_1 _288_ (.A1(_127_),
    .A2(_129_),
    .A3(_130_),
    .B1(net31),
    .B2(_057_),
    .X(_026_));
 sky130_fd_sc_hd__a21o_1 _289_ (.A1(\u_tx.baud_cnt[0] ),
    .A2(\u_tx.baud_cnt[1] ),
    .B1(net29),
    .X(_131_));
 sky130_fd_sc_hd__and3_1 _290_ (.A(\u_tx.baud_cnt[0] ),
    .B(\u_tx.baud_cnt[1] ),
    .C(\u_tx.baud_cnt[2] ),
    .X(_132_));
 sky130_fd_sc_hd__inv_2 _291_ (.A(_132_),
    .Y(_133_));
 sky130_fd_sc_hd__a32o_1 _292_ (.A1(_127_),
    .A2(_131_),
    .A3(_133_),
    .B1(net29),
    .B2(_057_),
    .X(_027_));
 sky130_fd_sc_hd__or2_1 _293_ (.A(\u_tx.baud_cnt[3] ),
    .B(_132_),
    .X(_134_));
 sky130_fd_sc_hd__nand2_1 _294_ (.A(net36),
    .B(_132_),
    .Y(_135_));
 sky130_fd_sc_hd__a32o_1 _295_ (.A1(_127_),
    .A2(_134_),
    .A3(_135_),
    .B1(net36),
    .B2(_057_),
    .X(_028_));
 sky130_fd_sc_hd__and3_1 _296_ (.A(\u_tx.baud_cnt[4] ),
    .B(\u_tx.baud_cnt[3] ),
    .C(_132_),
    .X(_136_));
 sky130_fd_sc_hd__inv_2 _297_ (.A(_136_),
    .Y(_137_));
 sky130_fd_sc_hd__a21o_1 _298_ (.A1(_127_),
    .A2(_137_),
    .B1(_057_),
    .X(_138_));
 sky130_fd_sc_hd__and4_1 _299_ (.A(\u_tx.baud_cnt[3] ),
    .B(_127_),
    .C(_132_),
    .D(_137_),
    .X(_139_));
 sky130_fd_sc_hd__a21o_1 _300_ (.A1(net28),
    .A2(_138_),
    .B1(_139_),
    .X(_029_));
 sky130_fd_sc_hd__and3_1 _301_ (.A(_048_),
    .B(_125_),
    .C(_136_),
    .X(_140_));
 sky130_fd_sc_hd__mux2_1 _302_ (.A0(_140_),
    .A1(_138_),
    .S(\u_tx.baud_cnt[5] ),
    .X(_141_));
 sky130_fd_sc_hd__clkbuf_1 _303_ (.A(_141_),
    .X(_030_));
 sky130_fd_sc_hd__nand3_1 _304_ (.A(\u_tx.baud_cnt[6] ),
    .B(\u_tx.baud_cnt[5] ),
    .C(_136_),
    .Y(_142_));
 sky130_fd_sc_hd__a21o_1 _305_ (.A1(_127_),
    .A2(_142_),
    .B1(_057_),
    .X(_143_));
 sky130_fd_sc_hd__and4_1 _306_ (.A(\u_tx.baud_cnt[5] ),
    .B(_127_),
    .C(_136_),
    .D(_142_),
    .X(_144_));
 sky130_fd_sc_hd__a21o_1 _307_ (.A1(net33),
    .A2(_143_),
    .B1(_144_),
    .X(_031_));
 sky130_fd_sc_hd__and2b_1 _308_ (.A_N(_142_),
    .B(_125_),
    .X(_145_));
 sky130_fd_sc_hd__mux2_1 _309_ (.A0(_145_),
    .A1(_143_),
    .S(\u_tx.baud_cnt[7] ),
    .X(_146_));
 sky130_fd_sc_hd__clkbuf_1 _310_ (.A(_146_),
    .X(_032_));
 sky130_fd_sc_hd__or2_2 _311_ (.A(_071_),
    .B(_076_),
    .X(_147_));
 sky130_fd_sc_hd__a31o_2 _312_ (.A1(_082_),
    .A2(_083_),
    .A3(_078_),
    .B1(\u_rx.state[2] ),
    .X(_148_));
 sky130_fd_sc_hd__mux2_1 _313_ (.A0(_147_),
    .A1(_148_),
    .S(\u_rx.baud_cnt[0] ),
    .X(_149_));
 sky130_fd_sc_hd__clkbuf_1 _314_ (.A(_149_),
    .X(_033_));
 sky130_fd_sc_hd__or2_1 _315_ (.A(\u_rx.baud_cnt[1] ),
    .B(\u_rx.baud_cnt[0] ),
    .X(_150_));
 sky130_fd_sc_hd__or2_1 _316_ (.A(_071_),
    .B(_082_),
    .X(_151_));
 sky130_fd_sc_hd__nand2_1 _317_ (.A(\u_rx.baud_cnt[1] ),
    .B(\u_rx.baud_cnt[0] ),
    .Y(_152_));
 sky130_fd_sc_hd__a32o_1 _318_ (.A1(_150_),
    .A2(_151_),
    .A3(_152_),
    .B1(_148_),
    .B2(net59),
    .X(_034_));
 sky130_fd_sc_hd__nand3_1 _319_ (.A(\u_rx.baud_cnt[1] ),
    .B(\u_rx.baud_cnt[0] ),
    .C(\u_rx.baud_cnt[2] ),
    .Y(_153_));
 sky130_fd_sc_hd__a21o_1 _320_ (.A1(_147_),
    .A2(_153_),
    .B1(_148_),
    .X(_154_));
 sky130_fd_sc_hd__a31o_1 _321_ (.A1(\u_rx.baud_cnt[1] ),
    .A2(\u_rx.baud_cnt[0] ),
    .A3(_147_),
    .B1(\u_rx.baud_cnt[2] ),
    .X(_155_));
 sky130_fd_sc_hd__and2_1 _322_ (.A(_154_),
    .B(_155_),
    .X(_156_));
 sky130_fd_sc_hd__clkbuf_1 _323_ (.A(_156_),
    .X(_035_));
 sky130_fd_sc_hd__nor2_1 _324_ (.A(\u_rx.baud_cnt[3] ),
    .B(_153_),
    .Y(_157_));
 sky130_fd_sc_hd__a22o_1 _325_ (.A1(net56),
    .A2(_154_),
    .B1(_157_),
    .B2(_147_),
    .X(_036_));
 sky130_fd_sc_hd__and3_1 _326_ (.A(\u_rx.baud_cnt[1] ),
    .B(\u_rx.baud_cnt[0] ),
    .C(\u_rx.baud_cnt[2] ),
    .X(_158_));
 sky130_fd_sc_hd__and3_1 _327_ (.A(\u_rx.baud_cnt[4] ),
    .B(\u_rx.baud_cnt[3] ),
    .C(_158_),
    .X(_159_));
 sky130_fd_sc_hd__o21ba_1 _328_ (.A1(_071_),
    .A2(_082_),
    .B1_N(_159_),
    .X(_160_));
 sky130_fd_sc_hd__nand2_1 _329_ (.A(\u_rx.baud_cnt[3] ),
    .B(_158_),
    .Y(_161_));
 sky130_fd_sc_hd__nor2_1 _330_ (.A(_148_),
    .B(_161_),
    .Y(_162_));
 sky130_fd_sc_hd__o22a_1 _331_ (.A1(_148_),
    .A2(_160_),
    .B1(_162_),
    .B2(net30),
    .X(_037_));
 sky130_fd_sc_hd__or2_1 _332_ (.A(\u_rx.baud_cnt[5] ),
    .B(_159_),
    .X(_163_));
 sky130_fd_sc_hd__nand2_1 _333_ (.A(\u_rx.baud_cnt[5] ),
    .B(_159_),
    .Y(_164_));
 sky130_fd_sc_hd__a32o_1 _334_ (.A1(_147_),
    .A2(_163_),
    .A3(_164_),
    .B1(_148_),
    .B2(net44),
    .X(_038_));
 sky130_fd_sc_hd__nor2_1 _335_ (.A(_148_),
    .B(_164_),
    .Y(_165_));
 sky130_fd_sc_hd__nand3_1 _336_ (.A(\u_rx.baud_cnt[6] ),
    .B(\u_rx.baud_cnt[5] ),
    .C(_159_),
    .Y(_166_));
 sky130_fd_sc_hd__a21o_1 _337_ (.A1(_147_),
    .A2(_166_),
    .B1(_148_),
    .X(_167_));
 sky130_fd_sc_hd__o21a_1 _338_ (.A1(net47),
    .A2(_165_),
    .B1(_167_),
    .X(_039_));
 sky130_fd_sc_hd__nor2_1 _339_ (.A(_148_),
    .B(_166_),
    .Y(_168_));
 sky130_fd_sc_hd__inv_2 _340_ (.A(\u_rx.baud_cnt[7] ),
    .Y(_169_));
 sky130_fd_sc_hd__nand2_1 _341_ (.A(_085_),
    .B(_075_),
    .Y(_170_));
 sky130_fd_sc_hd__o221a_1 _342_ (.A1(\u_rx.state[0] ),
    .A2(\u_rx.state[1] ),
    .B1(_169_),
    .B2(_166_),
    .C1(_170_),
    .X(_171_));
 sky130_fd_sc_hd__o22a_1 _343_ (.A1(net55),
    .A2(_168_),
    .B1(_171_),
    .B2(_148_),
    .X(_040_));
 sky130_fd_sc_hd__dfxtp_1 _344_ (.CLK(clknet_2_2__leaf_clk),
    .D(_000_),
    .Q(\u_tx.tx_shift_reg[0] ));
 sky130_fd_sc_hd__dfxtp_1 _345_ (.CLK(clknet_2_2__leaf_clk),
    .D(_001_),
    .Q(\u_tx.tx_shift_reg[1] ));
 sky130_fd_sc_hd__dfxtp_1 _346_ (.CLK(clknet_2_2__leaf_clk),
    .D(_002_),
    .Q(\u_tx.tx_shift_reg[2] ));
 sky130_fd_sc_hd__dfxtp_1 _347_ (.CLK(clknet_2_3__leaf_clk),
    .D(_003_),
    .Q(\u_tx.tx_shift_reg[3] ));
 sky130_fd_sc_hd__dfxtp_1 _348_ (.CLK(clknet_2_3__leaf_clk),
    .D(_004_),
    .Q(\u_tx.tx_shift_reg[4] ));
 sky130_fd_sc_hd__dfxtp_1 _349_ (.CLK(clknet_2_3__leaf_clk),
    .D(_005_),
    .Q(\u_tx.tx_shift_reg[5] ));
 sky130_fd_sc_hd__dfxtp_1 _350_ (.CLK(clknet_2_3__leaf_clk),
    .D(_006_),
    .Q(\u_tx.tx_shift_reg[6] ));
 sky130_fd_sc_hd__dfxtp_1 _351_ (.CLK(clknet_2_3__leaf_clk),
    .D(_007_),
    .Q(\u_tx.tx_shift_reg[7] ));
 sky130_fd_sc_hd__dfxtp_2 _352_ (.CLK(clknet_2_3__leaf_clk),
    .D(_044_),
    .Q(\u_tx.state[0] ));
 sky130_fd_sc_hd__dfxtp_1 _353_ (.CLK(clknet_2_1__leaf_clk),
    .D(_045_),
    .Q(\u_tx.state[1] ));
 sky130_fd_sc_hd__dfxtp_1 _354_ (.CLK(clknet_2_1__leaf_clk),
    .D(net58),
    .Q(\u_tx.state[2] ));
 sky130_fd_sc_hd__dfxtp_1 _355_ (.CLK(clknet_2_2__leaf_clk),
    .D(_008_),
    .Q(\u_rx.bit_cnt[0] ));
 sky130_fd_sc_hd__dfxtp_1 _356_ (.CLK(clknet_2_2__leaf_clk),
    .D(_009_),
    .Q(\u_rx.bit_cnt[1] ));
 sky130_fd_sc_hd__dfxtp_1 _357_ (.CLK(clknet_2_2__leaf_clk),
    .D(_010_),
    .Q(\u_rx.bit_cnt[2] ));
 sky130_fd_sc_hd__dfxtp_1 _358_ (.CLK(clknet_2_0__leaf_clk),
    .D(net25),
    .Q(net20));
 sky130_fd_sc_hd__dfxtp_1 _359_ (.CLK(clknet_2_3__leaf_clk),
    .D(_012_),
    .Q(\u_tx.bit_cnt[0] ));
 sky130_fd_sc_hd__dfxtp_1 _360_ (.CLK(clknet_2_3__leaf_clk),
    .D(_013_),
    .Q(\u_tx.bit_cnt[1] ));
 sky130_fd_sc_hd__dfxtp_1 _361_ (.CLK(clknet_2_3__leaf_clk),
    .D(_014_),
    .Q(\u_tx.bit_cnt[2] ));
 sky130_fd_sc_hd__dfxtp_1 _362_ (.CLK(clknet_2_1__leaf_clk),
    .D(_015_),
    .Q(net22));
 sky130_fd_sc_hd__dfxtp_1 _363_ (.CLK(clknet_2_1__leaf_clk),
    .D(net27),
    .Q(net21));
 sky130_fd_sc_hd__dfxtp_2 _364_ (.CLK(clknet_2_2__leaf_clk),
    .D(_041_),
    .Q(\u_rx.state[0] ));
 sky130_fd_sc_hd__dfxtp_2 _365_ (.CLK(clknet_2_0__leaf_clk),
    .D(_042_),
    .Q(\u_rx.state[1] ));
 sky130_fd_sc_hd__dfxtp_2 _366_ (.CLK(clknet_2_0__leaf_clk),
    .D(_043_),
    .Q(\u_rx.state[2] ));
 sky130_fd_sc_hd__dfxtp_1 _367_ (.CLK(clknet_2_2__leaf_clk),
    .D(_017_),
    .Q(net12));
 sky130_fd_sc_hd__dfxtp_1 _368_ (.CLK(clknet_2_0__leaf_clk),
    .D(_018_),
    .Q(net13));
 sky130_fd_sc_hd__dfxtp_1 _369_ (.CLK(clknet_2_0__leaf_clk),
    .D(_019_),
    .Q(net14));
 sky130_fd_sc_hd__dfxtp_1 _370_ (.CLK(clknet_2_1__leaf_clk),
    .D(_020_),
    .Q(net15));
 sky130_fd_sc_hd__dfxtp_1 _371_ (.CLK(clknet_2_2__leaf_clk),
    .D(_021_),
    .Q(net16));
 sky130_fd_sc_hd__dfxtp_1 _372_ (.CLK(clknet_2_2__leaf_clk),
    .D(_022_),
    .Q(net17));
 sky130_fd_sc_hd__dfxtp_1 _373_ (.CLK(clknet_2_2__leaf_clk),
    .D(_023_),
    .Q(net18));
 sky130_fd_sc_hd__dfxtp_1 _374_ (.CLK(clknet_2_2__leaf_clk),
    .D(_024_),
    .Q(net19));
 sky130_fd_sc_hd__dfxtp_1 _375_ (.CLK(clknet_2_1__leaf_clk),
    .D(_025_),
    .Q(\u_tx.baud_cnt[0] ));
 sky130_fd_sc_hd__dfxtp_1 _376_ (.CLK(clknet_2_1__leaf_clk),
    .D(net32),
    .Q(\u_tx.baud_cnt[1] ));
 sky130_fd_sc_hd__dfxtp_1 _377_ (.CLK(clknet_2_1__leaf_clk),
    .D(_027_),
    .Q(\u_tx.baud_cnt[2] ));
 sky130_fd_sc_hd__dfxtp_1 _378_ (.CLK(clknet_2_1__leaf_clk),
    .D(_028_),
    .Q(\u_tx.baud_cnt[3] ));
 sky130_fd_sc_hd__dfxtp_1 _379_ (.CLK(clknet_2_1__leaf_clk),
    .D(_029_),
    .Q(\u_tx.baud_cnt[4] ));
 sky130_fd_sc_hd__dfxtp_1 _380_ (.CLK(clknet_2_1__leaf_clk),
    .D(_030_),
    .Q(\u_tx.baud_cnt[5] ));
 sky130_fd_sc_hd__dfxtp_1 _381_ (.CLK(clknet_2_3__leaf_clk),
    .D(_031_),
    .Q(\u_tx.baud_cnt[6] ));
 sky130_fd_sc_hd__dfxtp_1 _382_ (.CLK(clknet_2_3__leaf_clk),
    .D(_032_),
    .Q(\u_tx.baud_cnt[7] ));
 sky130_fd_sc_hd__dfxtp_1 _383_ (.CLK(clknet_2_0__leaf_clk),
    .D(_033_),
    .Q(\u_rx.baud_cnt[0] ));
 sky130_fd_sc_hd__dfxtp_1 _384_ (.CLK(clknet_2_1__leaf_clk),
    .D(_034_),
    .Q(\u_rx.baud_cnt[1] ));
 sky130_fd_sc_hd__dfxtp_1 _385_ (.CLK(clknet_2_1__leaf_clk),
    .D(_035_),
    .Q(\u_rx.baud_cnt[2] ));
 sky130_fd_sc_hd__dfxtp_1 _386_ (.CLK(clknet_2_2__leaf_clk),
    .D(_036_),
    .Q(\u_rx.baud_cnt[3] ));
 sky130_fd_sc_hd__dfxtp_1 _387_ (.CLK(clknet_2_0__leaf_clk),
    .D(_037_),
    .Q(\u_rx.baud_cnt[4] ));
 sky130_fd_sc_hd__dfxtp_1 _388_ (.CLK(clknet_2_0__leaf_clk),
    .D(_038_),
    .Q(\u_rx.baud_cnt[5] ));
 sky130_fd_sc_hd__dfxtp_2 _389_ (.CLK(clknet_2_0__leaf_clk),
    .D(_039_),
    .Q(\u_rx.baud_cnt[6] ));
 sky130_fd_sc_hd__dfxtp_2 _390_ (.CLK(clknet_2_0__leaf_clk),
    .D(_040_),
    .Q(\u_rx.baud_cnt[7] ));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_0__f_clk (.A(clknet_0_clk),
    .X(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_1__f_clk (.A(clknet_0_clk),
    .X(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_2__f_clk (.A(clknet_0_clk),
    .X(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_3__f_clk (.A(clknet_0_clk),
    .X(clknet_2_3__leaf_clk));
 sky130_fd_sc_hd__dlygate4sd3_1 hold1 (.A(net20),
    .X(net24));
 sky130_fd_sc_hd__dlygate4sd3_1 hold10 (.A(\u_tx.baud_cnt[6] ),
    .X(net33));
 sky130_fd_sc_hd__dlygate4sd3_1 hold11 (.A(\u_tx.bit_cnt[2] ),
    .X(net34));
 sky130_fd_sc_hd__dlygate4sd3_1 hold12 (.A(_102_),
    .X(net35));
 sky130_fd_sc_hd__dlygate4sd3_1 hold13 (.A(\u_tx.baud_cnt[3] ),
    .X(net36));
 sky130_fd_sc_hd__dlygate4sd3_1 hold14 (.A(net13),
    .X(net37));
 sky130_fd_sc_hd__dlygate4sd3_1 hold15 (.A(net19),
    .X(net38));
 sky130_fd_sc_hd__dlygate4sd3_1 hold16 (.A(net14),
    .X(net39));
 sky130_fd_sc_hd__dlygate4sd3_1 hold17 (.A(\u_tx.tx_shift_reg[3] ),
    .X(net40));
 sky130_fd_sc_hd__dlygate4sd3_1 hold18 (.A(\u_tx.tx_shift_reg[4] ),
    .X(net41));
 sky130_fd_sc_hd__dlygate4sd3_1 hold19 (.A(\u_tx.tx_shift_reg[7] ),
    .X(net42));
 sky130_fd_sc_hd__dlygate4sd3_1 hold2 (.A(_011_),
    .X(net25));
 sky130_fd_sc_hd__dlygate4sd3_1 hold20 (.A(\u_tx.tx_shift_reg[1] ),
    .X(net43));
 sky130_fd_sc_hd__dlygate4sd3_1 hold21 (.A(\u_rx.baud_cnt[5] ),
    .X(net44));
 sky130_fd_sc_hd__dlygate4sd3_1 hold22 (.A(\u_tx.tx_shift_reg[6] ),
    .X(net45));
 sky130_fd_sc_hd__dlygate4sd3_1 hold23 (.A(\u_tx.tx_shift_reg[0] ),
    .X(net46));
 sky130_fd_sc_hd__dlygate4sd3_1 hold24 (.A(\u_rx.baud_cnt[6] ),
    .X(net47));
 sky130_fd_sc_hd__dlygate4sd3_1 hold25 (.A(net18),
    .X(net48));
 sky130_fd_sc_hd__dlygate4sd3_1 hold26 (.A(net22),
    .X(net49));
 sky130_fd_sc_hd__dlygate4sd3_1 hold27 (.A(\u_tx.bit_cnt[1] ),
    .X(net50));
 sky130_fd_sc_hd__dlygate4sd3_1 hold28 (.A(\u_tx.tx_shift_reg[5] ),
    .X(net51));
 sky130_fd_sc_hd__dlygate4sd3_1 hold29 (.A(\u_tx.tx_shift_reg[2] ),
    .X(net52));
 sky130_fd_sc_hd__dlygate4sd3_1 hold3 (.A(net21),
    .X(net26));
 sky130_fd_sc_hd__dlygate4sd3_1 hold30 (.A(net12),
    .X(net53));
 sky130_fd_sc_hd__dlygate4sd3_1 hold31 (.A(net15),
    .X(net54));
 sky130_fd_sc_hd__dlygate4sd3_1 hold32 (.A(\u_rx.baud_cnt[7] ),
    .X(net55));
 sky130_fd_sc_hd__dlygate4sd3_1 hold33 (.A(\u_rx.baud_cnt[3] ),
    .X(net56));
 sky130_fd_sc_hd__dlygate4sd3_1 hold34 (.A(\u_tx.state[1] ),
    .X(net57));
 sky130_fd_sc_hd__dlygate4sd3_1 hold35 (.A(_046_),
    .X(net58));
 sky130_fd_sc_hd__dlygate4sd3_1 hold36 (.A(\u_rx.baud_cnt[1] ),
    .X(net59));
 sky130_fd_sc_hd__dlygate4sd3_1 hold37 (.A(\u_rx.bit_cnt[1] ),
    .X(net60));
 sky130_fd_sc_hd__dlygate4sd3_1 hold38 (.A(\u_tx.bit_cnt[0] ),
    .X(net61));
 sky130_fd_sc_hd__dlygate4sd3_1 hold39 (.A(net16),
    .X(net62));
 sky130_fd_sc_hd__dlygate4sd3_1 hold4 (.A(_016_),
    .X(net27));
 sky130_fd_sc_hd__dlygate4sd3_1 hold5 (.A(\u_tx.baud_cnt[4] ),
    .X(net28));
 sky130_fd_sc_hd__dlygate4sd3_1 hold6 (.A(\u_tx.baud_cnt[2] ),
    .X(net29));
 sky130_fd_sc_hd__dlygate4sd3_1 hold7 (.A(\u_rx.baud_cnt[4] ),
    .X(net30));
 sky130_fd_sc_hd__dlygate4sd3_1 hold8 (.A(\u_tx.baud_cnt[1] ),
    .X(net31));
 sky130_fd_sc_hd__dlygate4sd3_1 hold9 (.A(_026_),
    .X(net32));
 sky130_fd_sc_hd__buf_1 input1 (.A(loopback_en),
    .X(net1));
 sky130_fd_sc_hd__clkbuf_1 input10 (.A(tx_data[7]),
    .X(net10));
 sky130_fd_sc_hd__buf_1 input11 (.A(tx_start),
    .X(net11));
 sky130_fd_sc_hd__clkbuf_1 input2 (.A(rx_pin),
    .X(net2));
 sky130_fd_sc_hd__buf_1 input3 (.A(tx_data[0]),
    .X(net3));
 sky130_fd_sc_hd__clkbuf_1 input4 (.A(tx_data[1]),
    .X(net4));
 sky130_fd_sc_hd__buf_1 input5 (.A(tx_data[2]),
    .X(net5));
 sky130_fd_sc_hd__clkbuf_1 input6 (.A(tx_data[3]),
    .X(net6));
 sky130_fd_sc_hd__clkbuf_1 input7 (.A(tx_data[4]),
    .X(net7));
 sky130_fd_sc_hd__clkbuf_1 input8 (.A(tx_data[5]),
    .X(net8));
 sky130_fd_sc_hd__clkbuf_1 input9 (.A(tx_data[6]),
    .X(net9));
 sky130_fd_sc_hd__clkbuf_2 max_cap23 (.A(_053_),
    .X(net23));
 sky130_fd_sc_hd__clkbuf_4 output12 (.A(net12),
    .X(rx_data[0]));
 sky130_fd_sc_hd__clkbuf_4 output13 (.A(net13),
    .X(rx_data[1]));
 sky130_fd_sc_hd__clkbuf_4 output14 (.A(net14),
    .X(rx_data[2]));
 sky130_fd_sc_hd__clkbuf_4 output15 (.A(net15),
    .X(rx_data[3]));
 sky130_fd_sc_hd__clkbuf_4 output16 (.A(net16),
    .X(rx_data[4]));
 sky130_fd_sc_hd__clkbuf_4 output17 (.A(net17),
    .X(rx_data[5]));
 sky130_fd_sc_hd__buf_2 output18 (.A(net18),
    .X(rx_data[6]));
 sky130_fd_sc_hd__clkbuf_4 output19 (.A(net19),
    .X(rx_data[7]));
 sky130_fd_sc_hd__clkbuf_4 output20 (.A(net20),
    .X(rx_valid));
 sky130_fd_sc_hd__clkbuf_4 output21 (.A(net21),
    .X(tx_done));
 sky130_fd_sc_hd__clkbuf_4 output22 (.A(net22),
    .X(tx_pin));
endmodule

