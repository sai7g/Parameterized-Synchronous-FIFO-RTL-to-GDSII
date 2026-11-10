module sync_fifo (clk,
    rd_en,
    rst_n,
    almost_empty,
    almost_full,
    empty,
    full,
    wr_en,
    occupancy,
    rd_data,
    wr_data);
 input clk;
 input rd_en;
 input rst_n;
 output almost_empty;
 output almost_full;
 output empty;
 output full;
 input wr_en;
 output [4:0] occupancy;
 output [7:0] rd_data;
 input [7:0] wr_data;

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
 wire _172_;
 wire _173_;
 wire _174_;
 wire _175_;
 wire _176_;
 wire _177_;
 wire _178_;
 wire _179_;
 wire _180_;
 wire _181_;
 wire _182_;
 wire _183_;
 wire _184_;
 wire _185_;
 wire _186_;
 wire _187_;
 wire _188_;
 wire _189_;
 wire _190_;
 wire _191_;
 wire _192_;
 wire _193_;
 wire _194_;
 wire _195_;
 wire _196_;
 wire _197_;
 wire _198_;
 wire _199_;
 wire _200_;
 wire _201_;
 wire _202_;
 wire _203_;
 wire _204_;
 wire _205_;
 wire _206_;
 wire _207_;
 wire _208_;
 wire _209_;
 wire _210_;
 wire _211_;
 wire _212_;
 wire _213_;
 wire _214_;
 wire _215_;
 wire _216_;
 wire _217_;
 wire _218_;
 wire _219_;
 wire _220_;
 wire _221_;
 wire _222_;
 wire _223_;
 wire _224_;
 wire \u_ctrl.almost_empty_r ;
 wire \u_ctrl.almost_full_r ;
 wire \u_ctrl.do_wr ;
 wire \u_ctrl.empty_r ;
 wire \u_ctrl.full_r ;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
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
 wire net30;
 wire clknet_0_clk;
 wire clknet_4_0_0_clk;
 wire clknet_4_1_0_clk;
 wire clknet_4_2_0_clk;
 wire clknet_4_3_0_clk;
 wire clknet_4_4_0_clk;
 wire clknet_4_5_0_clk;
 wire clknet_4_6_0_clk;
 wire clknet_4_7_0_clk;
 wire clknet_4_8_0_clk;
 wire clknet_4_9_0_clk;
 wire clknet_4_10_0_clk;
 wire clknet_4_11_0_clk;
 wire clknet_4_12_0_clk;
 wire clknet_4_13_0_clk;
 wire clknet_4_14_0_clk;
 wire clknet_4_15_0_clk;
 wire [4:0] \u_ctrl.count ;
 wire [4:0] \u_ctrl.count_nxt ;
 wire [3:0] \u_ctrl.rd_ptr ;
 wire [3:0] \u_ctrl.wr_ptr ;
 wire [7:0] \u_mem.mem[0] ;
 wire [7:0] \u_mem.mem[10] ;
 wire [7:0] \u_mem.mem[11] ;
 wire [7:0] \u_mem.mem[12] ;
 wire [7:0] \u_mem.mem[13] ;
 wire [7:0] \u_mem.mem[14] ;
 wire [7:0] \u_mem.mem[15] ;
 wire [7:0] \u_mem.mem[1] ;
 wire [7:0] \u_mem.mem[2] ;
 wire [7:0] \u_mem.mem[3] ;
 wire [7:0] \u_mem.mem[4] ;
 wire [7:0] \u_mem.mem[5] ;
 wire [7:0] \u_mem.mem[6] ;
 wire [7:0] \u_mem.mem[7] ;
 wire [7:0] \u_mem.mem[8] ;
 wire [7:0] \u_mem.mem[9] ;

 sky130_fd_sc_hd__nand2_4 _225_ (.A(\u_ctrl.wr_ptr [2]),
    .B(\u_ctrl.wr_ptr [3]),
    .Y(_140_));
 sky130_fd_sc_hd__lpflow_isobufsrc_1 _226_ (.A(net11),
    .SLEEP(net28),
    .X(_141_));
 sky130_fd_sc_hd__nand2b_4 _227_ (.A_N(net28),
    .B(net11),
    .Y(_142_));
 sky130_fd_sc_hd__nand2_2 _228_ (.A(\u_ctrl.wr_ptr [0]),
    .B(_141_),
    .Y(_143_));
 sky130_fd_sc_hd__nor2_2 _229_ (.A(\u_ctrl.wr_ptr [1]),
    .B(_143_),
    .Y(_144_));
 sky130_fd_sc_hd__nor3_4 _230_ (.A(\u_ctrl.wr_ptr [1]),
    .B(_140_),
    .C(_143_),
    .Y(_145_));
 sky130_fd_sc_hd__mux2_1 _231_ (.A0(\u_mem.mem[13] [0]),
    .A1(net3),
    .S(_145_),
    .X(_002_));
 sky130_fd_sc_hd__mux2_1 _232_ (.A0(\u_mem.mem[13] [1]),
    .A1(net4),
    .S(_145_),
    .X(_003_));
 sky130_fd_sc_hd__mux2_1 _233_ (.A0(\u_mem.mem[13] [2]),
    .A1(net5),
    .S(_145_),
    .X(_004_));
 sky130_fd_sc_hd__mux2_1 _234_ (.A0(\u_mem.mem[13] [3]),
    .A1(net6),
    .S(_145_),
    .X(_005_));
 sky130_fd_sc_hd__mux2_1 _235_ (.A0(\u_mem.mem[13] [4]),
    .A1(net7),
    .S(_145_),
    .X(_006_));
 sky130_fd_sc_hd__mux2_1 _236_ (.A0(\u_mem.mem[13] [5]),
    .A1(net8),
    .S(_145_),
    .X(_007_));
 sky130_fd_sc_hd__mux2_1 _237_ (.A0(\u_mem.mem[13] [6]),
    .A1(net9),
    .S(_145_),
    .X(_008_));
 sky130_fd_sc_hd__mux2_1 _238_ (.A0(\u_mem.mem[13] [7]),
    .A1(net10),
    .S(_145_),
    .X(_009_));
 sky130_fd_sc_hd__nand2b_1 _239_ (.A_N(\u_ctrl.wr_ptr [0]),
    .B(\u_ctrl.wr_ptr [1]),
    .Y(_146_));
 sky130_fd_sc_hd__nor3_4 _240_ (.A(_140_),
    .B(_142_),
    .C(_146_),
    .Y(_147_));
 sky130_fd_sc_hd__mux2_1 _241_ (.A0(\u_mem.mem[14] [0]),
    .A1(net3),
    .S(_147_),
    .X(_010_));
 sky130_fd_sc_hd__mux2_1 _242_ (.A0(\u_mem.mem[14] [1]),
    .A1(net4),
    .S(_147_),
    .X(_011_));
 sky130_fd_sc_hd__mux2_1 _243_ (.A0(\u_mem.mem[14] [2]),
    .A1(net5),
    .S(_147_),
    .X(_012_));
 sky130_fd_sc_hd__mux2_1 _244_ (.A0(\u_mem.mem[14] [3]),
    .A1(net6),
    .S(_147_),
    .X(_013_));
 sky130_fd_sc_hd__mux2_1 _245_ (.A0(\u_mem.mem[14] [4]),
    .A1(net7),
    .S(_147_),
    .X(_014_));
 sky130_fd_sc_hd__mux2_1 _246_ (.A0(\u_mem.mem[14] [5]),
    .A1(net8),
    .S(_147_),
    .X(_015_));
 sky130_fd_sc_hd__mux2_1 _247_ (.A0(\u_mem.mem[14] [6]),
    .A1(net9),
    .S(_147_),
    .X(_016_));
 sky130_fd_sc_hd__mux2_1 _248_ (.A0(\u_mem.mem[14] [7]),
    .A1(net10),
    .S(_147_),
    .X(_017_));
 sky130_fd_sc_hd__lpflow_isobufsrc_1 _249_ (.A(\u_ctrl.wr_ptr [2]),
    .SLEEP(\u_ctrl.wr_ptr [3]),
    .X(_148_));
 sky130_fd_sc_hd__nor3_4 _250_ (.A(\u_ctrl.wr_ptr [0]),
    .B(\u_ctrl.wr_ptr [1]),
    .C(_142_),
    .Y(_149_));
 sky130_fd_sc_hd__nand2_4 _251_ (.A(_148_),
    .B(_149_),
    .Y(_150_));
 sky130_fd_sc_hd__mux2_1 _252_ (.A0(net3),
    .A1(\u_mem.mem[4] [0]),
    .S(_150_),
    .X(_018_));
 sky130_fd_sc_hd__mux2_1 _253_ (.A0(net4),
    .A1(\u_mem.mem[4] [1]),
    .S(_150_),
    .X(_019_));
 sky130_fd_sc_hd__mux2_1 _254_ (.A0(net5),
    .A1(\u_mem.mem[4] [2]),
    .S(_150_),
    .X(_020_));
 sky130_fd_sc_hd__mux2_1 _255_ (.A0(net6),
    .A1(\u_mem.mem[4] [3]),
    .S(_150_),
    .X(_021_));
 sky130_fd_sc_hd__mux2_1 _256_ (.A0(net7),
    .A1(\u_mem.mem[4] [4]),
    .S(_150_),
    .X(_022_));
 sky130_fd_sc_hd__mux2_1 _257_ (.A0(net8),
    .A1(\u_mem.mem[4] [5]),
    .S(_150_),
    .X(_023_));
 sky130_fd_sc_hd__mux2_1 _258_ (.A0(net9),
    .A1(\u_mem.mem[4] [6]),
    .S(_150_),
    .X(_024_));
 sky130_fd_sc_hd__mux2_1 _259_ (.A0(net10),
    .A1(\u_mem.mem[4] [7]),
    .S(_150_),
    .X(_025_));
 sky130_fd_sc_hd__lpflow_isobufsrc_1 _260_ (.A(\u_ctrl.wr_ptr [3]),
    .SLEEP(\u_ctrl.wr_ptr [2]),
    .X(_151_));
 sky130_fd_sc_hd__nand3_2 _261_ (.A(\u_ctrl.wr_ptr [0]),
    .B(\u_ctrl.wr_ptr [1]),
    .C(_141_),
    .Y(_152_));
 sky130_fd_sc_hd__lpflow_isobufsrc_1 _262_ (.A(_151_),
    .SLEEP(_152_),
    .X(_153_));
 sky130_fd_sc_hd__mux2_1 _263_ (.A0(\u_mem.mem[11] [0]),
    .A1(net3),
    .S(net30),
    .X(_026_));
 sky130_fd_sc_hd__mux2_1 _264_ (.A0(\u_mem.mem[11] [1]),
    .A1(net4),
    .S(net30),
    .X(_027_));
 sky130_fd_sc_hd__mux2_1 _265_ (.A0(\u_mem.mem[11] [2]),
    .A1(net5),
    .S(_153_),
    .X(_028_));
 sky130_fd_sc_hd__mux2_1 _266_ (.A0(\u_mem.mem[11] [3]),
    .A1(net6),
    .S(net30),
    .X(_029_));
 sky130_fd_sc_hd__mux2_1 _267_ (.A0(\u_mem.mem[11] [4]),
    .A1(net7),
    .S(net30),
    .X(_030_));
 sky130_fd_sc_hd__mux2_1 _268_ (.A0(\u_mem.mem[11] [5]),
    .A1(net8),
    .S(_153_),
    .X(_031_));
 sky130_fd_sc_hd__mux2_1 _269_ (.A0(\u_mem.mem[11] [6]),
    .A1(net9),
    .S(_153_),
    .X(_032_));
 sky130_fd_sc_hd__mux2_1 _270_ (.A0(\u_mem.mem[11] [7]),
    .A1(net10),
    .S(net30),
    .X(_033_));
 sky130_fd_sc_hd__nor2_2 _271_ (.A(_142_),
    .B(_146_),
    .Y(_154_));
 sky130_fd_sc_hd__nand2_4 _272_ (.A(_151_),
    .B(_154_),
    .Y(_155_));
 sky130_fd_sc_hd__mux2_1 _273_ (.A0(net3),
    .A1(\u_mem.mem[10] [0]),
    .S(_155_),
    .X(_034_));
 sky130_fd_sc_hd__mux2_1 _274_ (.A0(net4),
    .A1(\u_mem.mem[10] [1]),
    .S(_155_),
    .X(_035_));
 sky130_fd_sc_hd__mux2_1 _275_ (.A0(net5),
    .A1(\u_mem.mem[10] [2]),
    .S(_155_),
    .X(_036_));
 sky130_fd_sc_hd__mux2_1 _276_ (.A0(net6),
    .A1(\u_mem.mem[10] [3]),
    .S(_155_),
    .X(_037_));
 sky130_fd_sc_hd__mux2_1 _277_ (.A0(net7),
    .A1(\u_mem.mem[10] [4]),
    .S(_155_),
    .X(_038_));
 sky130_fd_sc_hd__mux2_1 _278_ (.A0(net8),
    .A1(\u_mem.mem[10] [5]),
    .S(_155_),
    .X(_039_));
 sky130_fd_sc_hd__mux2_1 _279_ (.A0(net9),
    .A1(\u_mem.mem[10] [6]),
    .S(_155_),
    .X(_040_));
 sky130_fd_sc_hd__mux2_1 _280_ (.A0(net10),
    .A1(\u_mem.mem[10] [7]),
    .S(_155_),
    .X(_041_));
 sky130_fd_sc_hd__nand2_4 _281_ (.A(_144_),
    .B(_148_),
    .Y(_156_));
 sky130_fd_sc_hd__mux2_1 _282_ (.A0(net3),
    .A1(\u_mem.mem[5] [0]),
    .S(_156_),
    .X(_042_));
 sky130_fd_sc_hd__mux2_1 _283_ (.A0(net4),
    .A1(\u_mem.mem[5] [1]),
    .S(_156_),
    .X(_043_));
 sky130_fd_sc_hd__mux2_1 _284_ (.A0(net5),
    .A1(\u_mem.mem[5] [2]),
    .S(_156_),
    .X(_044_));
 sky130_fd_sc_hd__mux2_1 _285_ (.A0(net6),
    .A1(\u_mem.mem[5] [3]),
    .S(_156_),
    .X(_045_));
 sky130_fd_sc_hd__mux2_1 _286_ (.A0(net7),
    .A1(\u_mem.mem[5] [4]),
    .S(_156_),
    .X(_046_));
 sky130_fd_sc_hd__mux2_1 _287_ (.A0(net8),
    .A1(\u_mem.mem[5] [5]),
    .S(_156_),
    .X(_047_));
 sky130_fd_sc_hd__mux2_1 _288_ (.A0(net9),
    .A1(\u_mem.mem[5] [6]),
    .S(_156_),
    .X(_048_));
 sky130_fd_sc_hd__mux2_1 _289_ (.A0(net10),
    .A1(\u_mem.mem[5] [7]),
    .S(_156_),
    .X(_049_));
 sky130_fd_sc_hd__or4_4 _290_ (.A(\u_ctrl.wr_ptr [0]),
    .B(\u_ctrl.wr_ptr [1]),
    .C(_140_),
    .D(_142_),
    .X(_157_));
 sky130_fd_sc_hd__mux2_1 _291_ (.A0(net3),
    .A1(\u_mem.mem[12] [0]),
    .S(_157_),
    .X(_050_));
 sky130_fd_sc_hd__mux2_1 _292_ (.A0(net4),
    .A1(\u_mem.mem[12] [1]),
    .S(_157_),
    .X(_051_));
 sky130_fd_sc_hd__mux2_1 _293_ (.A0(net5),
    .A1(\u_mem.mem[12] [2]),
    .S(_157_),
    .X(_052_));
 sky130_fd_sc_hd__mux2_1 _294_ (.A0(net6),
    .A1(\u_mem.mem[12] [3]),
    .S(_157_),
    .X(_053_));
 sky130_fd_sc_hd__mux2_1 _295_ (.A0(net7),
    .A1(\u_mem.mem[12] [4]),
    .S(_157_),
    .X(_054_));
 sky130_fd_sc_hd__mux2_1 _296_ (.A0(net8),
    .A1(\u_mem.mem[12] [5]),
    .S(_157_),
    .X(_055_));
 sky130_fd_sc_hd__mux2_1 _297_ (.A0(net9),
    .A1(\u_mem.mem[12] [6]),
    .S(_157_),
    .X(_056_));
 sky130_fd_sc_hd__mux2_1 _298_ (.A0(net10),
    .A1(\u_mem.mem[12] [7]),
    .S(_157_),
    .X(_057_));
 sky130_fd_sc_hd__nor2_4 _299_ (.A(\u_ctrl.wr_ptr [2]),
    .B(\u_ctrl.wr_ptr [3]),
    .Y(_158_));
 sky130_fd_sc_hd__nand2_4 _300_ (.A(_149_),
    .B(_158_),
    .Y(_159_));
 sky130_fd_sc_hd__mux2_1 _301_ (.A0(net3),
    .A1(\u_mem.mem[0] [0]),
    .S(_159_),
    .X(_058_));
 sky130_fd_sc_hd__mux2_1 _302_ (.A0(net4),
    .A1(\u_mem.mem[0] [1]),
    .S(_159_),
    .X(_059_));
 sky130_fd_sc_hd__mux2_1 _303_ (.A0(net5),
    .A1(\u_mem.mem[0] [2]),
    .S(_159_),
    .X(_060_));
 sky130_fd_sc_hd__mux2_1 _304_ (.A0(net6),
    .A1(\u_mem.mem[0] [3]),
    .S(_159_),
    .X(_061_));
 sky130_fd_sc_hd__mux2_1 _305_ (.A0(net7),
    .A1(\u_mem.mem[0] [4]),
    .S(_159_),
    .X(_062_));
 sky130_fd_sc_hd__mux2_1 _306_ (.A0(net8),
    .A1(\u_mem.mem[0] [5]),
    .S(_159_),
    .X(_063_));
 sky130_fd_sc_hd__mux2_1 _307_ (.A0(net9),
    .A1(\u_mem.mem[0] [6]),
    .S(_159_),
    .X(_064_));
 sky130_fd_sc_hd__mux2_1 _308_ (.A0(net10),
    .A1(\u_mem.mem[0] [7]),
    .S(_159_),
    .X(_065_));
 sky130_fd_sc_hd__nand2_4 _309_ (.A(_149_),
    .B(_151_),
    .Y(_160_));
 sky130_fd_sc_hd__mux2_1 _310_ (.A0(net3),
    .A1(\u_mem.mem[8] [0]),
    .S(_160_),
    .X(_066_));
 sky130_fd_sc_hd__mux2_1 _311_ (.A0(net4),
    .A1(\u_mem.mem[8] [1]),
    .S(_160_),
    .X(_067_));
 sky130_fd_sc_hd__mux2_1 _312_ (.A0(net5),
    .A1(\u_mem.mem[8] [2]),
    .S(_160_),
    .X(_068_));
 sky130_fd_sc_hd__mux2_1 _313_ (.A0(net6),
    .A1(\u_mem.mem[8] [3]),
    .S(_160_),
    .X(_069_));
 sky130_fd_sc_hd__mux2_1 _314_ (.A0(net7),
    .A1(\u_mem.mem[8] [4]),
    .S(_160_),
    .X(_070_));
 sky130_fd_sc_hd__mux2_1 _315_ (.A0(net8),
    .A1(\u_mem.mem[8] [5]),
    .S(_160_),
    .X(_071_));
 sky130_fd_sc_hd__mux2_1 _316_ (.A0(net9),
    .A1(\u_mem.mem[8] [6]),
    .S(_160_),
    .X(_072_));
 sky130_fd_sc_hd__mux2_1 _317_ (.A0(net10),
    .A1(\u_mem.mem[8] [7]),
    .S(_160_),
    .X(_073_));
 sky130_fd_sc_hd__lpflow_isobufsrc_1 _318_ (.A(_148_),
    .SLEEP(_152_),
    .X(_161_));
 sky130_fd_sc_hd__mux2_1 _319_ (.A0(\u_mem.mem[7] [0]),
    .A1(net3),
    .S(net29),
    .X(_074_));
 sky130_fd_sc_hd__mux2_1 _320_ (.A0(\u_mem.mem[7] [1]),
    .A1(net4),
    .S(net29),
    .X(_075_));
 sky130_fd_sc_hd__mux2_1 _321_ (.A0(\u_mem.mem[7] [2]),
    .A1(net5),
    .S(_161_),
    .X(_076_));
 sky130_fd_sc_hd__mux2_1 _322_ (.A0(\u_mem.mem[7] [3]),
    .A1(net6),
    .S(net29),
    .X(_077_));
 sky130_fd_sc_hd__mux2_1 _323_ (.A0(\u_mem.mem[7] [4]),
    .A1(net7),
    .S(net29),
    .X(_078_));
 sky130_fd_sc_hd__mux2_1 _324_ (.A0(\u_mem.mem[7] [5]),
    .A1(net8),
    .S(_161_),
    .X(_079_));
 sky130_fd_sc_hd__mux2_1 _325_ (.A0(\u_mem.mem[7] [6]),
    .A1(net9),
    .S(_161_),
    .X(_080_));
 sky130_fd_sc_hd__mux2_1 _326_ (.A0(\u_mem.mem[7] [7]),
    .A1(net10),
    .S(net29),
    .X(_081_));
 sky130_fd_sc_hd__nand2_4 _327_ (.A(_148_),
    .B(_154_),
    .Y(_162_));
 sky130_fd_sc_hd__mux2_1 _328_ (.A0(net3),
    .A1(\u_mem.mem[6] [0]),
    .S(_162_),
    .X(_082_));
 sky130_fd_sc_hd__mux2_1 _329_ (.A0(net4),
    .A1(\u_mem.mem[6] [1]),
    .S(_162_),
    .X(_083_));
 sky130_fd_sc_hd__mux2_1 _330_ (.A0(net5),
    .A1(\u_mem.mem[6] [2]),
    .S(_162_),
    .X(_084_));
 sky130_fd_sc_hd__mux2_1 _331_ (.A0(net6),
    .A1(\u_mem.mem[6] [3]),
    .S(_162_),
    .X(_085_));
 sky130_fd_sc_hd__mux2_1 _332_ (.A0(net7),
    .A1(\u_mem.mem[6] [4]),
    .S(_162_),
    .X(_086_));
 sky130_fd_sc_hd__mux2_1 _333_ (.A0(net8),
    .A1(\u_mem.mem[6] [5]),
    .S(_162_),
    .X(_087_));
 sky130_fd_sc_hd__mux2_1 _334_ (.A0(net9),
    .A1(\u_mem.mem[6] [6]),
    .S(_162_),
    .X(_088_));
 sky130_fd_sc_hd__mux2_1 _335_ (.A0(net10),
    .A1(\u_mem.mem[6] [7]),
    .S(_162_),
    .X(_089_));
 sky130_fd_sc_hd__nand2_4 _336_ (.A(_154_),
    .B(_158_),
    .Y(_163_));
 sky130_fd_sc_hd__mux2_1 _337_ (.A0(net3),
    .A1(\u_mem.mem[2] [0]),
    .S(_163_),
    .X(_090_));
 sky130_fd_sc_hd__mux2_1 _338_ (.A0(net4),
    .A1(\u_mem.mem[2] [1]),
    .S(_163_),
    .X(_091_));
 sky130_fd_sc_hd__mux2_1 _339_ (.A0(net5),
    .A1(\u_mem.mem[2] [2]),
    .S(_163_),
    .X(_092_));
 sky130_fd_sc_hd__mux2_1 _340_ (.A0(net6),
    .A1(\u_mem.mem[2] [3]),
    .S(_163_),
    .X(_093_));
 sky130_fd_sc_hd__mux2_1 _341_ (.A0(net7),
    .A1(\u_mem.mem[2] [4]),
    .S(_163_),
    .X(_094_));
 sky130_fd_sc_hd__mux2_1 _342_ (.A0(net8),
    .A1(\u_mem.mem[2] [5]),
    .S(_163_),
    .X(_095_));
 sky130_fd_sc_hd__mux2_1 _343_ (.A0(net9),
    .A1(\u_mem.mem[2] [6]),
    .S(_163_),
    .X(_096_));
 sky130_fd_sc_hd__mux2_1 _344_ (.A0(net10),
    .A1(\u_mem.mem[2] [7]),
    .S(_163_),
    .X(_097_));
 sky130_fd_sc_hd__xnor2_1 _345_ (.A(\u_ctrl.wr_ptr [0]),
    .B(_142_),
    .Y(_098_));
 sky130_fd_sc_hd__xnor2_1 _346_ (.A(\u_ctrl.wr_ptr [1]),
    .B(_143_),
    .Y(_099_));
 sky130_fd_sc_hd__nand4_1 _347_ (.A(\u_ctrl.wr_ptr [0]),
    .B(\u_ctrl.wr_ptr [1]),
    .C(\u_ctrl.wr_ptr [2]),
    .D(_141_),
    .Y(_164_));
 sky130_fd_sc_hd__xnor2_1 _348_ (.A(\u_ctrl.wr_ptr [2]),
    .B(_152_),
    .Y(_100_));
 sky130_fd_sc_hd__a21o_1 _349_ (.A1(\u_ctrl.wr_ptr [3]),
    .A2(_164_),
    .B1(_161_),
    .X(_101_));
 sky130_fd_sc_hd__lpflow_isobufsrc_1 _350_ (.A(net1),
    .SLEEP(net27),
    .X(_165_));
 sky130_fd_sc_hd__nand2_1 _351_ (.A(\u_ctrl.rd_ptr [0]),
    .B(_165_),
    .Y(_166_));
 sky130_fd_sc_hd__xor2_1 _352_ (.A(\u_ctrl.rd_ptr [0]),
    .B(_165_),
    .X(_102_));
 sky130_fd_sc_hd__xnor2_1 _353_ (.A(\u_ctrl.rd_ptr [1]),
    .B(_166_),
    .Y(_103_));
 sky130_fd_sc_hd__nand4_1 _354_ (.A(\u_ctrl.rd_ptr [0]),
    .B(\u_ctrl.rd_ptr [1]),
    .C(\u_ctrl.rd_ptr [2]),
    .D(_165_),
    .Y(_167_));
 sky130_fd_sc_hd__a31oi_1 _355_ (.A1(\u_ctrl.rd_ptr [0]),
    .A2(\u_ctrl.rd_ptr [1]),
    .A3(_165_),
    .B1(\u_ctrl.rd_ptr [2]),
    .Y(_168_));
 sky130_fd_sc_hd__lpflow_isobufsrc_1 _356_ (.A(_167_),
    .SLEEP(_168_),
    .X(_104_));
 sky130_fd_sc_hd__xnor2_1 _357_ (.A(\u_ctrl.rd_ptr [3]),
    .B(_167_),
    .Y(_105_));
 sky130_fd_sc_hd__nand2_4 _358_ (.A(_144_),
    .B(_158_),
    .Y(_169_));
 sky130_fd_sc_hd__mux2_1 _359_ (.A0(net3),
    .A1(\u_mem.mem[1] [0]),
    .S(_169_),
    .X(_106_));
 sky130_fd_sc_hd__mux2_1 _360_ (.A0(net4),
    .A1(\u_mem.mem[1] [1]),
    .S(_169_),
    .X(_107_));
 sky130_fd_sc_hd__mux2_1 _361_ (.A0(net5),
    .A1(\u_mem.mem[1] [2]),
    .S(_169_),
    .X(_108_));
 sky130_fd_sc_hd__mux2_1 _362_ (.A0(net6),
    .A1(\u_mem.mem[1] [3]),
    .S(_169_),
    .X(_109_));
 sky130_fd_sc_hd__mux2_1 _363_ (.A0(net7),
    .A1(\u_mem.mem[1] [4]),
    .S(_169_),
    .X(_110_));
 sky130_fd_sc_hd__mux2_1 _364_ (.A0(net8),
    .A1(\u_mem.mem[1] [5]),
    .S(_169_),
    .X(_111_));
 sky130_fd_sc_hd__mux2_1 _365_ (.A0(net9),
    .A1(\u_mem.mem[1] [6]),
    .S(_169_),
    .X(_112_));
 sky130_fd_sc_hd__mux2_1 _366_ (.A0(net10),
    .A1(\u_mem.mem[1] [7]),
    .S(_169_),
    .X(_113_));
 sky130_fd_sc_hd__nand4_4 _367_ (.A(\u_ctrl.wr_ptr [0]),
    .B(\u_ctrl.wr_ptr [1]),
    .C(_141_),
    .D(_158_),
    .Y(_170_));
 sky130_fd_sc_hd__mux2_1 _368_ (.A0(net3),
    .A1(\u_mem.mem[3] [0]),
    .S(_170_),
    .X(_114_));
 sky130_fd_sc_hd__mux2_1 _369_ (.A0(net4),
    .A1(\u_mem.mem[3] [1]),
    .S(_170_),
    .X(_115_));
 sky130_fd_sc_hd__mux2_1 _370_ (.A0(net5),
    .A1(\u_mem.mem[3] [2]),
    .S(_170_),
    .X(_116_));
 sky130_fd_sc_hd__mux2_1 _371_ (.A0(net6),
    .A1(\u_mem.mem[3] [3]),
    .S(_170_),
    .X(_117_));
 sky130_fd_sc_hd__mux2_1 _372_ (.A0(net7),
    .A1(\u_mem.mem[3] [4]),
    .S(_170_),
    .X(_118_));
 sky130_fd_sc_hd__mux2_1 _373_ (.A0(net8),
    .A1(\u_mem.mem[3] [5]),
    .S(_170_),
    .X(_119_));
 sky130_fd_sc_hd__mux2_1 _374_ (.A0(net9),
    .A1(\u_mem.mem[3] [6]),
    .S(_170_),
    .X(_120_));
 sky130_fd_sc_hd__mux2_1 _375_ (.A0(net10),
    .A1(\u_mem.mem[3] [7]),
    .S(_170_),
    .X(_121_));
 sky130_fd_sc_hd__nor2_4 _376_ (.A(_140_),
    .B(_152_),
    .Y(_171_));
 sky130_fd_sc_hd__mux2_1 _377_ (.A0(\u_mem.mem[15] [0]),
    .A1(net3),
    .S(_171_),
    .X(_122_));
 sky130_fd_sc_hd__mux2_1 _378_ (.A0(\u_mem.mem[15] [1]),
    .A1(net4),
    .S(_171_),
    .X(_123_));
 sky130_fd_sc_hd__mux2_1 _379_ (.A0(\u_mem.mem[15] [2]),
    .A1(net5),
    .S(_171_),
    .X(_124_));
 sky130_fd_sc_hd__mux2_1 _380_ (.A0(\u_mem.mem[15] [3]),
    .A1(net6),
    .S(_171_),
    .X(_125_));
 sky130_fd_sc_hd__mux2_1 _381_ (.A0(\u_mem.mem[15] [4]),
    .A1(net7),
    .S(_171_),
    .X(_126_));
 sky130_fd_sc_hd__mux2_1 _382_ (.A0(\u_mem.mem[15] [5]),
    .A1(net8),
    .S(_171_),
    .X(_127_));
 sky130_fd_sc_hd__mux2_1 _383_ (.A0(\u_mem.mem[15] [6]),
    .A1(net9),
    .S(_171_),
    .X(_128_));
 sky130_fd_sc_hd__mux2_1 _384_ (.A0(\u_mem.mem[15] [7]),
    .A1(net10),
    .S(_171_),
    .X(_129_));
 sky130_fd_sc_hd__nand2_4 _385_ (.A(_144_),
    .B(_151_),
    .Y(_172_));
 sky130_fd_sc_hd__mux2_1 _386_ (.A0(net3),
    .A1(\u_mem.mem[9] [0]),
    .S(_172_),
    .X(_130_));
 sky130_fd_sc_hd__mux2_1 _387_ (.A0(net4),
    .A1(\u_mem.mem[9] [1]),
    .S(_172_),
    .X(_131_));
 sky130_fd_sc_hd__mux2_1 _388_ (.A0(net5),
    .A1(\u_mem.mem[9] [2]),
    .S(_172_),
    .X(_132_));
 sky130_fd_sc_hd__mux2_1 _389_ (.A0(net6),
    .A1(\u_mem.mem[9] [3]),
    .S(_172_),
    .X(_133_));
 sky130_fd_sc_hd__mux2_1 _390_ (.A0(net7),
    .A1(\u_mem.mem[9] [4]),
    .S(_172_),
    .X(_134_));
 sky130_fd_sc_hd__mux2_1 _391_ (.A0(net8),
    .A1(\u_mem.mem[9] [5]),
    .S(_172_),
    .X(_135_));
 sky130_fd_sc_hd__mux2_1 _392_ (.A0(net9),
    .A1(\u_mem.mem[9] [6]),
    .S(_172_),
    .X(_136_));
 sky130_fd_sc_hd__mux2_1 _393_ (.A0(net10),
    .A1(\u_mem.mem[9] [7]),
    .S(_172_),
    .X(_137_));
 sky130_fd_sc_hd__and2_2 _394_ (.A(_142_),
    .B(_165_),
    .X(_173_));
 sky130_fd_sc_hd__nand2_1 _395_ (.A(_142_),
    .B(_165_),
    .Y(_174_));
 sky130_fd_sc_hd__nor2_1 _396_ (.A(_142_),
    .B(_165_),
    .Y(_175_));
 sky130_fd_sc_hd__nor2_4 _397_ (.A(_173_),
    .B(_175_),
    .Y(_176_));
 sky130_fd_sc_hd__xnor2_1 _398_ (.A(net23),
    .B(_173_),
    .Y(_177_));
 sky130_fd_sc_hd__lpflow_isobufsrc_1 _399_ (.A(net22),
    .SLEEP(_177_),
    .X(_178_));
 sky130_fd_sc_hd__maj3_1 _400_ (.A(net22),
    .B(net23),
    .C(_173_),
    .X(_179_));
 sky130_fd_sc_hd__xnor2_1 _401_ (.A(net24),
    .B(_173_),
    .Y(_180_));
 sky130_fd_sc_hd__or4_1 _402_ (.A(net22),
    .B(net23),
    .C(net24),
    .D(_174_),
    .X(_181_));
 sky130_fd_sc_hd__nand4_1 _403_ (.A(net22),
    .B(net23),
    .C(net24),
    .D(_174_),
    .Y(_182_));
 sky130_fd_sc_hd__mux2_1 _404_ (.A0(_181_),
    .A1(_182_),
    .S(net25),
    .X(_183_));
 sky130_fd_sc_hd__nor2_1 _405_ (.A(_176_),
    .B(_183_),
    .Y(_184_));
 sky130_fd_sc_hd__xor2_2 _406_ (.A(net26),
    .B(_184_),
    .X(\u_ctrl.count_nxt [4]));
 sky130_fd_sc_hd__a21oi_1 _407_ (.A1(_181_),
    .A2(_182_),
    .B1(_176_),
    .Y(_185_));
 sky130_fd_sc_hd__xnor2_1 _408_ (.A(net25),
    .B(_185_),
    .Y(_186_));
 sky130_fd_sc_hd__inv_1 _409_ (.A(_186_),
    .Y(\u_ctrl.count_nxt [3]));
 sky130_fd_sc_hd__nor2b_1 _410_ (.A(net22),
    .B_N(_177_),
    .Y(_187_));
 sky130_fd_sc_hd__nand2_1 _411_ (.A(net23),
    .B(_176_),
    .Y(_188_));
 sky130_fd_sc_hd__o31ai_4 _412_ (.A1(_176_),
    .A2(_178_),
    .A3(_187_),
    .B1(_188_),
    .Y(\u_ctrl.count_nxt [1]));
 sky130_fd_sc_hd__xnor2_1 _413_ (.A(_179_),
    .B(_180_),
    .Y(_189_));
 sky130_fd_sc_hd__mux2i_2 _414_ (.A0(_189_),
    .A1(net24),
    .S(_176_),
    .Y(_190_));
 sky130_fd_sc_hd__inv_1 _415_ (.A(_190_),
    .Y(\u_ctrl.count_nxt [2]));
 sky130_fd_sc_hd__a31o_1 _416_ (.A1(\u_ctrl.count_nxt [3]),
    .A2(\u_ctrl.count_nxt [1]),
    .A3(\u_ctrl.count_nxt [2]),
    .B1(\u_ctrl.count_nxt [4]),
    .X(_000_));
 sky130_fd_sc_hd__nand2_1 _417_ (.A(_186_),
    .B(_190_),
    .Y(_191_));
 sky130_fd_sc_hd__xnor2_2 _418_ (.A(net22),
    .B(_176_),
    .Y(\u_ctrl.count_nxt [0]));
 sky130_fd_sc_hd__a211oi_1 _419_ (.A1(\u_ctrl.count_nxt [1]),
    .A2(\u_ctrl.count_nxt [0]),
    .B1(_191_),
    .C1(\u_ctrl.count_nxt [4]),
    .Y(_001_));
 sky130_fd_sc_hd__nor2_1 _420_ (.A(\u_ctrl.count_nxt [1]),
    .B(\u_ctrl.count_nxt [0]),
    .Y(_192_));
 sky130_fd_sc_hd__nor4_1 _421_ (.A(\u_ctrl.count_nxt [4]),
    .B(\u_ctrl.count_nxt [1]),
    .C(_191_),
    .D(\u_ctrl.count_nxt [0]),
    .Y(_138_));
 sky130_fd_sc_hd__and4_1 _422_ (.A(\u_ctrl.count_nxt [4]),
    .B(_186_),
    .C(_190_),
    .D(_192_),
    .X(_139_));
 sky130_fd_sc_hd__mux4_1 _423_ (.A0(\u_mem.mem[12] [0]),
    .A1(\u_mem.mem[14] [0]),
    .A2(\u_mem.mem[13] [0]),
    .A3(\u_mem.mem[15] [0]),
    .S0(\u_ctrl.rd_ptr [1]),
    .S1(\u_ctrl.rd_ptr [0]),
    .X(_193_));
 sky130_fd_sc_hd__mux4_1 _424_ (.A0(\u_mem.mem[8] [0]),
    .A1(\u_mem.mem[9] [0]),
    .A2(\u_mem.mem[10] [0]),
    .A3(\u_mem.mem[11] [0]),
    .S0(\u_ctrl.rd_ptr [0]),
    .S1(\u_ctrl.rd_ptr [1]),
    .X(_194_));
 sky130_fd_sc_hd__mux4_1 _425_ (.A0(\u_mem.mem[4] [0]),
    .A1(\u_mem.mem[5] [0]),
    .A2(\u_mem.mem[6] [0]),
    .A3(\u_mem.mem[7] [0]),
    .S0(\u_ctrl.rd_ptr [0]),
    .S1(\u_ctrl.rd_ptr [1]),
    .X(_195_));
 sky130_fd_sc_hd__mux4_1 _426_ (.A0(\u_mem.mem[0] [0]),
    .A1(\u_mem.mem[2] [0]),
    .A2(\u_mem.mem[1] [0]),
    .A3(\u_mem.mem[3] [0]),
    .S0(\u_ctrl.rd_ptr [1]),
    .S1(\u_ctrl.rd_ptr [0]),
    .X(_196_));
 sky130_fd_sc_hd__mux4_1 _427_ (.A0(_196_),
    .A1(_195_),
    .A2(_194_),
    .A3(_193_),
    .S0(\u_ctrl.rd_ptr [2]),
    .S1(\u_ctrl.rd_ptr [3]),
    .X(net12));
 sky130_fd_sc_hd__mux4_1 _428_ (.A0(\u_mem.mem[12] [1]),
    .A1(\u_mem.mem[14] [1]),
    .A2(\u_mem.mem[13] [1]),
    .A3(\u_mem.mem[15] [1]),
    .S0(\u_ctrl.rd_ptr [1]),
    .S1(\u_ctrl.rd_ptr [0]),
    .X(_197_));
 sky130_fd_sc_hd__mux4_1 _429_ (.A0(\u_mem.mem[8] [1]),
    .A1(\u_mem.mem[9] [1]),
    .A2(\u_mem.mem[10] [1]),
    .A3(\u_mem.mem[11] [1]),
    .S0(\u_ctrl.rd_ptr [0]),
    .S1(\u_ctrl.rd_ptr [1]),
    .X(_198_));
 sky130_fd_sc_hd__mux4_1 _430_ (.A0(\u_mem.mem[4] [1]),
    .A1(\u_mem.mem[5] [1]),
    .A2(\u_mem.mem[6] [1]),
    .A3(\u_mem.mem[7] [1]),
    .S0(\u_ctrl.rd_ptr [0]),
    .S1(\u_ctrl.rd_ptr [1]),
    .X(_199_));
 sky130_fd_sc_hd__mux4_1 _431_ (.A0(\u_mem.mem[0] [1]),
    .A1(\u_mem.mem[2] [1]),
    .A2(\u_mem.mem[1] [1]),
    .A3(\u_mem.mem[3] [1]),
    .S0(\u_ctrl.rd_ptr [1]),
    .S1(\u_ctrl.rd_ptr [0]),
    .X(_200_));
 sky130_fd_sc_hd__mux4_1 _432_ (.A0(_200_),
    .A1(_199_),
    .A2(_198_),
    .A3(_197_),
    .S0(\u_ctrl.rd_ptr [2]),
    .S1(\u_ctrl.rd_ptr [3]),
    .X(net13));
 sky130_fd_sc_hd__mux4_1 _433_ (.A0(\u_mem.mem[12] [2]),
    .A1(\u_mem.mem[14] [2]),
    .A2(\u_mem.mem[13] [2]),
    .A3(\u_mem.mem[15] [2]),
    .S0(\u_ctrl.rd_ptr [1]),
    .S1(\u_ctrl.rd_ptr [0]),
    .X(_201_));
 sky130_fd_sc_hd__mux4_1 _434_ (.A0(\u_mem.mem[8] [2]),
    .A1(\u_mem.mem[9] [2]),
    .A2(\u_mem.mem[10] [2]),
    .A3(\u_mem.mem[11] [2]),
    .S0(\u_ctrl.rd_ptr [0]),
    .S1(\u_ctrl.rd_ptr [1]),
    .X(_202_));
 sky130_fd_sc_hd__mux4_1 _435_ (.A0(\u_mem.mem[4] [2]),
    .A1(\u_mem.mem[5] [2]),
    .A2(\u_mem.mem[6] [2]),
    .A3(\u_mem.mem[7] [2]),
    .S0(\u_ctrl.rd_ptr [0]),
    .S1(\u_ctrl.rd_ptr [1]),
    .X(_203_));
 sky130_fd_sc_hd__mux4_1 _436_ (.A0(\u_mem.mem[0] [2]),
    .A1(\u_mem.mem[2] [2]),
    .A2(\u_mem.mem[1] [2]),
    .A3(\u_mem.mem[3] [2]),
    .S0(\u_ctrl.rd_ptr [1]),
    .S1(\u_ctrl.rd_ptr [0]),
    .X(_204_));
 sky130_fd_sc_hd__mux4_1 _437_ (.A0(_204_),
    .A1(_203_),
    .A2(_202_),
    .A3(_201_),
    .S0(\u_ctrl.rd_ptr [2]),
    .S1(\u_ctrl.rd_ptr [3]),
    .X(net14));
 sky130_fd_sc_hd__mux4_1 _438_ (.A0(\u_mem.mem[12] [3]),
    .A1(\u_mem.mem[14] [3]),
    .A2(\u_mem.mem[13] [3]),
    .A3(\u_mem.mem[15] [3]),
    .S0(\u_ctrl.rd_ptr [1]),
    .S1(\u_ctrl.rd_ptr [0]),
    .X(_205_));
 sky130_fd_sc_hd__mux4_1 _439_ (.A0(\u_mem.mem[8] [3]),
    .A1(\u_mem.mem[9] [3]),
    .A2(\u_mem.mem[10] [3]),
    .A3(\u_mem.mem[11] [3]),
    .S0(\u_ctrl.rd_ptr [0]),
    .S1(\u_ctrl.rd_ptr [1]),
    .X(_206_));
 sky130_fd_sc_hd__mux4_1 _440_ (.A0(\u_mem.mem[4] [3]),
    .A1(\u_mem.mem[5] [3]),
    .A2(\u_mem.mem[6] [3]),
    .A3(\u_mem.mem[7] [3]),
    .S0(\u_ctrl.rd_ptr [0]),
    .S1(\u_ctrl.rd_ptr [1]),
    .X(_207_));
 sky130_fd_sc_hd__mux4_1 _441_ (.A0(\u_mem.mem[0] [3]),
    .A1(\u_mem.mem[2] [3]),
    .A2(\u_mem.mem[1] [3]),
    .A3(\u_mem.mem[3] [3]),
    .S0(\u_ctrl.rd_ptr [1]),
    .S1(\u_ctrl.rd_ptr [0]),
    .X(_208_));
 sky130_fd_sc_hd__mux4_1 _442_ (.A0(_208_),
    .A1(_207_),
    .A2(_206_),
    .A3(_205_),
    .S0(\u_ctrl.rd_ptr [2]),
    .S1(\u_ctrl.rd_ptr [3]),
    .X(net15));
 sky130_fd_sc_hd__mux4_1 _443_ (.A0(\u_mem.mem[12] [4]),
    .A1(\u_mem.mem[14] [4]),
    .A2(\u_mem.mem[13] [4]),
    .A3(\u_mem.mem[15] [4]),
    .S0(\u_ctrl.rd_ptr [1]),
    .S1(\u_ctrl.rd_ptr [0]),
    .X(_209_));
 sky130_fd_sc_hd__mux4_1 _444_ (.A0(\u_mem.mem[8] [4]),
    .A1(\u_mem.mem[9] [4]),
    .A2(\u_mem.mem[10] [4]),
    .A3(\u_mem.mem[11] [4]),
    .S0(\u_ctrl.rd_ptr [0]),
    .S1(\u_ctrl.rd_ptr [1]),
    .X(_210_));
 sky130_fd_sc_hd__mux4_1 _445_ (.A0(\u_mem.mem[4] [4]),
    .A1(\u_mem.mem[5] [4]),
    .A2(\u_mem.mem[6] [4]),
    .A3(\u_mem.mem[7] [4]),
    .S0(\u_ctrl.rd_ptr [0]),
    .S1(\u_ctrl.rd_ptr [1]),
    .X(_211_));
 sky130_fd_sc_hd__mux4_1 _446_ (.A0(\u_mem.mem[0] [4]),
    .A1(\u_mem.mem[2] [4]),
    .A2(\u_mem.mem[1] [4]),
    .A3(\u_mem.mem[3] [4]),
    .S0(\u_ctrl.rd_ptr [1]),
    .S1(\u_ctrl.rd_ptr [0]),
    .X(_212_));
 sky130_fd_sc_hd__mux4_1 _447_ (.A0(_212_),
    .A1(_211_),
    .A2(_210_),
    .A3(_209_),
    .S0(\u_ctrl.rd_ptr [2]),
    .S1(\u_ctrl.rd_ptr [3]),
    .X(net16));
 sky130_fd_sc_hd__mux4_1 _448_ (.A0(\u_mem.mem[12] [5]),
    .A1(\u_mem.mem[14] [5]),
    .A2(\u_mem.mem[13] [5]),
    .A3(\u_mem.mem[15] [5]),
    .S0(\u_ctrl.rd_ptr [1]),
    .S1(\u_ctrl.rd_ptr [0]),
    .X(_213_));
 sky130_fd_sc_hd__mux4_1 _449_ (.A0(\u_mem.mem[8] [5]),
    .A1(\u_mem.mem[9] [5]),
    .A2(\u_mem.mem[10] [5]),
    .A3(\u_mem.mem[11] [5]),
    .S0(\u_ctrl.rd_ptr [0]),
    .S1(\u_ctrl.rd_ptr [1]),
    .X(_214_));
 sky130_fd_sc_hd__mux4_1 _450_ (.A0(\u_mem.mem[4] [5]),
    .A1(\u_mem.mem[5] [5]),
    .A2(\u_mem.mem[6] [5]),
    .A3(\u_mem.mem[7] [5]),
    .S0(\u_ctrl.rd_ptr [0]),
    .S1(\u_ctrl.rd_ptr [1]),
    .X(_215_));
 sky130_fd_sc_hd__mux4_1 _451_ (.A0(\u_mem.mem[0] [5]),
    .A1(\u_mem.mem[2] [5]),
    .A2(\u_mem.mem[1] [5]),
    .A3(\u_mem.mem[3] [5]),
    .S0(\u_ctrl.rd_ptr [1]),
    .S1(\u_ctrl.rd_ptr [0]),
    .X(_216_));
 sky130_fd_sc_hd__mux4_1 _452_ (.A0(_216_),
    .A1(_215_),
    .A2(_214_),
    .A3(_213_),
    .S0(\u_ctrl.rd_ptr [2]),
    .S1(\u_ctrl.rd_ptr [3]),
    .X(net17));
 sky130_fd_sc_hd__mux4_1 _453_ (.A0(\u_mem.mem[12] [6]),
    .A1(\u_mem.mem[14] [6]),
    .A2(\u_mem.mem[13] [6]),
    .A3(\u_mem.mem[15] [6]),
    .S0(\u_ctrl.rd_ptr [1]),
    .S1(\u_ctrl.rd_ptr [0]),
    .X(_217_));
 sky130_fd_sc_hd__mux4_1 _454_ (.A0(\u_mem.mem[8] [6]),
    .A1(\u_mem.mem[9] [6]),
    .A2(\u_mem.mem[10] [6]),
    .A3(\u_mem.mem[11] [6]),
    .S0(\u_ctrl.rd_ptr [0]),
    .S1(\u_ctrl.rd_ptr [1]),
    .X(_218_));
 sky130_fd_sc_hd__mux4_1 _455_ (.A0(\u_mem.mem[4] [6]),
    .A1(\u_mem.mem[5] [6]),
    .A2(\u_mem.mem[6] [6]),
    .A3(\u_mem.mem[7] [6]),
    .S0(\u_ctrl.rd_ptr [0]),
    .S1(\u_ctrl.rd_ptr [1]),
    .X(_219_));
 sky130_fd_sc_hd__mux4_1 _456_ (.A0(\u_mem.mem[0] [6]),
    .A1(\u_mem.mem[2] [6]),
    .A2(\u_mem.mem[1] [6]),
    .A3(\u_mem.mem[3] [6]),
    .S0(\u_ctrl.rd_ptr [1]),
    .S1(\u_ctrl.rd_ptr [0]),
    .X(_220_));
 sky130_fd_sc_hd__mux4_1 _457_ (.A0(_220_),
    .A1(_219_),
    .A2(_218_),
    .A3(_217_),
    .S0(\u_ctrl.rd_ptr [2]),
    .S1(\u_ctrl.rd_ptr [3]),
    .X(net18));
 sky130_fd_sc_hd__mux4_1 _458_ (.A0(\u_mem.mem[12] [7]),
    .A1(\u_mem.mem[14] [7]),
    .A2(\u_mem.mem[13] [7]),
    .A3(\u_mem.mem[15] [7]),
    .S0(\u_ctrl.rd_ptr [1]),
    .S1(\u_ctrl.rd_ptr [0]),
    .X(_221_));
 sky130_fd_sc_hd__mux4_1 _459_ (.A0(\u_mem.mem[8] [7]),
    .A1(\u_mem.mem[9] [7]),
    .A2(\u_mem.mem[10] [7]),
    .A3(\u_mem.mem[11] [7]),
    .S0(\u_ctrl.rd_ptr [0]),
    .S1(\u_ctrl.rd_ptr [1]),
    .X(_222_));
 sky130_fd_sc_hd__mux4_1 _460_ (.A0(\u_mem.mem[4] [7]),
    .A1(\u_mem.mem[5] [7]),
    .A2(\u_mem.mem[6] [7]),
    .A3(\u_mem.mem[7] [7]),
    .S0(\u_ctrl.rd_ptr [0]),
    .S1(\u_ctrl.rd_ptr [1]),
    .X(_223_));
 sky130_fd_sc_hd__mux4_1 _461_ (.A0(\u_mem.mem[0] [7]),
    .A1(\u_mem.mem[2] [7]),
    .A2(\u_mem.mem[1] [7]),
    .A3(\u_mem.mem[3] [7]),
    .S0(\u_ctrl.rd_ptr [1]),
    .S1(\u_ctrl.rd_ptr [0]),
    .X(_224_));
 sky130_fd_sc_hd__mux4_1 _462_ (.A0(_224_),
    .A1(_223_),
    .A2(_222_),
    .A3(_221_),
    .S0(\u_ctrl.rd_ptr [2]),
    .S1(\u_ctrl.rd_ptr [3]),
    .X(net19));
 sky130_fd_sc_hd__dfxtp_1 _463_ (.CLK(clknet_4_12_0_clk),
    .D(_002_),
    .Q(\u_mem.mem[13] [0]));
 sky130_fd_sc_hd__dfxtp_1 _464_ (.CLK(clknet_4_6_0_clk),
    .D(_003_),
    .Q(\u_mem.mem[13] [1]));
 sky130_fd_sc_hd__dfxtp_1 _465_ (.CLK(clknet_4_3_0_clk),
    .D(_004_),
    .Q(\u_mem.mem[13] [2]));
 sky130_fd_sc_hd__dfxtp_1 _466_ (.CLK(clknet_4_4_0_clk),
    .D(_005_),
    .Q(\u_mem.mem[13] [3]));
 sky130_fd_sc_hd__dfxtp_1 _467_ (.CLK(clknet_4_14_0_clk),
    .D(_006_),
    .Q(\u_mem.mem[13] [4]));
 sky130_fd_sc_hd__dfxtp_1 _468_ (.CLK(clknet_4_8_0_clk),
    .D(_007_),
    .Q(\u_mem.mem[13] [5]));
 sky130_fd_sc_hd__dfxtp_1 _469_ (.CLK(clknet_4_3_0_clk),
    .D(_008_),
    .Q(\u_mem.mem[13] [6]));
 sky130_fd_sc_hd__dfxtp_1 _470_ (.CLK(clknet_4_11_0_clk),
    .D(_009_),
    .Q(\u_mem.mem[13] [7]));
 sky130_fd_sc_hd__dfxtp_1 _471_ (.CLK(clknet_4_7_0_clk),
    .D(_010_),
    .Q(\u_mem.mem[14] [0]));
 sky130_fd_sc_hd__dfxtp_1 _472_ (.CLK(clknet_4_7_0_clk),
    .D(_011_),
    .Q(\u_mem.mem[14] [1]));
 sky130_fd_sc_hd__dfxtp_1 _473_ (.CLK(clknet_4_1_0_clk),
    .D(_012_),
    .Q(\u_mem.mem[14] [2]));
 sky130_fd_sc_hd__dfxtp_1 _474_ (.CLK(clknet_4_5_0_clk),
    .D(_013_),
    .Q(\u_mem.mem[14] [3]));
 sky130_fd_sc_hd__dfxtp_1 _475_ (.CLK(clknet_4_15_0_clk),
    .D(_014_),
    .Q(\u_mem.mem[14] [4]));
 sky130_fd_sc_hd__dfxtp_1 _476_ (.CLK(clknet_4_9_0_clk),
    .D(_015_),
    .Q(\u_mem.mem[14] [5]));
 sky130_fd_sc_hd__dfxtp_1 _477_ (.CLK(clknet_4_3_0_clk),
    .D(_016_),
    .Q(\u_mem.mem[14] [6]));
 sky130_fd_sc_hd__dfxtp_1 _478_ (.CLK(clknet_4_11_0_clk),
    .D(_017_),
    .Q(\u_mem.mem[14] [7]));
 sky130_fd_sc_hd__dfxtp_1 _479_ (.CLK(clknet_4_13_0_clk),
    .D(_018_),
    .Q(\u_mem.mem[4] [0]));
 sky130_fd_sc_hd__dfxtp_1 _480_ (.CLK(clknet_4_7_0_clk),
    .D(_019_),
    .Q(\u_mem.mem[4] [1]));
 sky130_fd_sc_hd__dfxtp_1 _481_ (.CLK(clknet_4_0_0_clk),
    .D(_020_),
    .Q(\u_mem.mem[4] [2]));
 sky130_fd_sc_hd__dfxtp_1 _482_ (.CLK(clknet_4_5_0_clk),
    .D(_021_),
    .Q(\u_mem.mem[4] [3]));
 sky130_fd_sc_hd__dfxtp_1 _483_ (.CLK(clknet_4_15_0_clk),
    .D(_022_),
    .Q(\u_mem.mem[4] [4]));
 sky130_fd_sc_hd__dfxtp_1 _484_ (.CLK(clknet_4_8_0_clk),
    .D(_023_),
    .Q(\u_mem.mem[4] [5]));
 sky130_fd_sc_hd__dfxtp_1 _485_ (.CLK(clknet_4_1_0_clk),
    .D(_024_),
    .Q(\u_mem.mem[4] [6]));
 sky130_fd_sc_hd__dfxtp_1 _486_ (.CLK(clknet_4_15_0_clk),
    .D(_025_),
    .Q(\u_mem.mem[4] [7]));
 sky130_fd_sc_hd__dfxtp_1 _487_ (.CLK(clknet_4_9_0_clk),
    .D(_026_),
    .Q(\u_mem.mem[11] [0]));
 sky130_fd_sc_hd__dfxtp_1 _488_ (.CLK(clknet_4_6_0_clk),
    .D(_027_),
    .Q(\u_mem.mem[11] [1]));
 sky130_fd_sc_hd__dfxtp_1 _489_ (.CLK(clknet_4_2_0_clk),
    .D(_028_),
    .Q(\u_mem.mem[11] [2]));
 sky130_fd_sc_hd__dfxtp_1 _490_ (.CLK(clknet_4_4_0_clk),
    .D(_029_),
    .Q(\u_mem.mem[11] [3]));
 sky130_fd_sc_hd__dfxtp_1 _491_ (.CLK(clknet_4_12_0_clk),
    .D(_030_),
    .Q(\u_mem.mem[11] [4]));
 sky130_fd_sc_hd__dfxtp_1 _492_ (.CLK(clknet_4_2_0_clk),
    .D(_031_),
    .Q(\u_mem.mem[11] [5]));
 sky130_fd_sc_hd__dfxtp_1 _493_ (.CLK(clknet_4_2_0_clk),
    .D(_032_),
    .Q(\u_mem.mem[11] [6]));
 sky130_fd_sc_hd__dfxtp_1 _494_ (.CLK(clknet_4_9_0_clk),
    .D(_033_),
    .Q(\u_mem.mem[11] [7]));
 sky130_fd_sc_hd__dfxtp_1 _495_ (.CLK(clknet_4_9_0_clk),
    .D(_034_),
    .Q(\u_mem.mem[10] [0]));
 sky130_fd_sc_hd__dfxtp_1 _496_ (.CLK(clknet_4_6_0_clk),
    .D(_035_),
    .Q(\u_mem.mem[10] [1]));
 sky130_fd_sc_hd__dfxtp_1 _497_ (.CLK(clknet_4_2_0_clk),
    .D(_036_),
    .Q(\u_mem.mem[10] [2]));
 sky130_fd_sc_hd__dfxtp_1 _498_ (.CLK(clknet_4_4_0_clk),
    .D(_037_),
    .Q(\u_mem.mem[10] [3]));
 sky130_fd_sc_hd__dfxtp_1 _499_ (.CLK(clknet_4_12_0_clk),
    .D(_038_),
    .Q(\u_mem.mem[10] [4]));
 sky130_fd_sc_hd__dfxtp_1 _500_ (.CLK(clknet_4_2_0_clk),
    .D(_039_),
    .Q(\u_mem.mem[10] [5]));
 sky130_fd_sc_hd__dfxtp_1 _501_ (.CLK(clknet_4_2_0_clk),
    .D(_040_),
    .Q(\u_mem.mem[10] [6]));
 sky130_fd_sc_hd__dfxtp_1 _502_ (.CLK(clknet_4_9_0_clk),
    .D(_041_),
    .Q(\u_mem.mem[10] [7]));
 sky130_fd_sc_hd__dfxtp_1 _503_ (.CLK(clknet_4_13_0_clk),
    .D(_042_),
    .Q(\u_mem.mem[5] [0]));
 sky130_fd_sc_hd__dfxtp_1 _504_ (.CLK(clknet_4_7_0_clk),
    .D(_043_),
    .Q(\u_mem.mem[5] [1]));
 sky130_fd_sc_hd__dfxtp_1 _505_ (.CLK(clknet_4_0_0_clk),
    .D(_044_),
    .Q(\u_mem.mem[5] [2]));
 sky130_fd_sc_hd__dfxtp_1 _506_ (.CLK(clknet_4_5_0_clk),
    .D(_045_),
    .Q(\u_mem.mem[5] [3]));
 sky130_fd_sc_hd__dfxtp_1 _507_ (.CLK(clknet_4_15_0_clk),
    .D(_046_),
    .Q(\u_mem.mem[5] [4]));
 sky130_fd_sc_hd__dfxtp_1 _508_ (.CLK(clknet_4_8_0_clk),
    .D(_047_),
    .Q(\u_mem.mem[5] [5]));
 sky130_fd_sc_hd__dfxtp_1 _509_ (.CLK(clknet_4_2_0_clk),
    .D(_048_),
    .Q(\u_mem.mem[5] [6]));
 sky130_fd_sc_hd__dfxtp_1 _510_ (.CLK(clknet_4_14_0_clk),
    .D(_049_),
    .Q(\u_mem.mem[5] [7]));
 sky130_fd_sc_hd__dfxtp_1 _511_ (.CLK(clknet_4_13_0_clk),
    .D(_050_),
    .Q(\u_mem.mem[12] [0]));
 sky130_fd_sc_hd__dfxtp_1 _512_ (.CLK(clknet_4_7_0_clk),
    .D(_051_),
    .Q(\u_mem.mem[12] [1]));
 sky130_fd_sc_hd__dfxtp_1 _513_ (.CLK(clknet_4_1_0_clk),
    .D(_052_),
    .Q(\u_mem.mem[12] [2]));
 sky130_fd_sc_hd__dfxtp_1 _514_ (.CLK(clknet_4_5_0_clk),
    .D(_053_),
    .Q(\u_mem.mem[12] [3]));
 sky130_fd_sc_hd__dfxtp_1 _515_ (.CLK(clknet_4_15_0_clk),
    .D(_054_),
    .Q(\u_mem.mem[12] [4]));
 sky130_fd_sc_hd__dfxtp_1 _516_ (.CLK(clknet_4_9_0_clk),
    .D(_055_),
    .Q(\u_mem.mem[12] [5]));
 sky130_fd_sc_hd__dfxtp_1 _517_ (.CLK(clknet_4_6_0_clk),
    .D(_056_),
    .Q(\u_mem.mem[12] [6]));
 sky130_fd_sc_hd__dfxtp_1 _518_ (.CLK(clknet_4_14_0_clk),
    .D(_057_),
    .Q(\u_mem.mem[12] [7]));
 sky130_fd_sc_hd__dfxtp_1 _519_ (.CLK(clknet_4_7_0_clk),
    .D(_058_),
    .Q(\u_mem.mem[0] [0]));
 sky130_fd_sc_hd__dfxtp_1 _520_ (.CLK(clknet_4_7_0_clk),
    .D(_059_),
    .Q(\u_mem.mem[0] [1]));
 sky130_fd_sc_hd__dfxtp_1 _521_ (.CLK(clknet_4_1_0_clk),
    .D(_060_),
    .Q(\u_mem.mem[0] [2]));
 sky130_fd_sc_hd__dfxtp_1 _522_ (.CLK(clknet_4_5_0_clk),
    .D(_061_),
    .Q(\u_mem.mem[0] [3]));
 sky130_fd_sc_hd__dfxtp_1 _523_ (.CLK(clknet_4_13_0_clk),
    .D(_062_),
    .Q(\u_mem.mem[0] [4]));
 sky130_fd_sc_hd__dfxtp_1 _524_ (.CLK(clknet_4_3_0_clk),
    .D(_063_),
    .Q(\u_mem.mem[0] [5]));
 sky130_fd_sc_hd__dfxtp_1 _525_ (.CLK(clknet_4_4_0_clk),
    .D(_064_),
    .Q(\u_mem.mem[0] [6]));
 sky130_fd_sc_hd__dfxtp_1 _526_ (.CLK(clknet_4_14_0_clk),
    .D(_065_),
    .Q(\u_mem.mem[0] [7]));
 sky130_fd_sc_hd__dfxtp_1 _527_ (.CLK(clknet_4_12_0_clk),
    .D(_066_),
    .Q(\u_mem.mem[8] [0]));
 sky130_fd_sc_hd__dfxtp_1 _528_ (.CLK(clknet_4_6_0_clk),
    .D(_067_),
    .Q(\u_mem.mem[8] [1]));
 sky130_fd_sc_hd__dfxtp_1 _529_ (.CLK(clknet_4_3_0_clk),
    .D(_068_),
    .Q(\u_mem.mem[8] [2]));
 sky130_fd_sc_hd__dfxtp_1 _530_ (.CLK(clknet_4_4_0_clk),
    .D(_069_),
    .Q(\u_mem.mem[8] [3]));
 sky130_fd_sc_hd__dfxtp_1 _531_ (.CLK(clknet_4_13_0_clk),
    .D(_070_),
    .Q(\u_mem.mem[8] [4]));
 sky130_fd_sc_hd__dfxtp_1 _532_ (.CLK(clknet_4_2_0_clk),
    .D(_071_),
    .Q(\u_mem.mem[8] [5]));
 sky130_fd_sc_hd__dfxtp_1 _533_ (.CLK(clknet_4_2_0_clk),
    .D(_072_),
    .Q(\u_mem.mem[8] [6]));
 sky130_fd_sc_hd__dfxtp_1 _534_ (.CLK(clknet_4_12_0_clk),
    .D(_073_),
    .Q(\u_mem.mem[8] [7]));
 sky130_fd_sc_hd__dfxtp_1 _535_ (.CLK(clknet_4_13_0_clk),
    .D(_074_),
    .Q(\u_mem.mem[7] [0]));
 sky130_fd_sc_hd__dfxtp_1 _536_ (.CLK(clknet_4_7_0_clk),
    .D(_075_),
    .Q(\u_mem.mem[7] [1]));
 sky130_fd_sc_hd__dfxtp_1 _537_ (.CLK(clknet_4_0_0_clk),
    .D(_076_),
    .Q(\u_mem.mem[7] [2]));
 sky130_fd_sc_hd__dfxtp_1 _538_ (.CLK(clknet_4_5_0_clk),
    .D(_077_),
    .Q(\u_mem.mem[7] [3]));
 sky130_fd_sc_hd__dfxtp_1 _539_ (.CLK(clknet_4_15_0_clk),
    .D(_078_),
    .Q(\u_mem.mem[7] [4]));
 sky130_fd_sc_hd__dfxtp_1 _540_ (.CLK(clknet_4_8_0_clk),
    .D(_079_),
    .Q(\u_mem.mem[7] [5]));
 sky130_fd_sc_hd__dfxtp_1 _541_ (.CLK(clknet_4_0_0_clk),
    .D(_080_),
    .Q(\u_mem.mem[7] [6]));
 sky130_fd_sc_hd__dfxtp_1 _542_ (.CLK(clknet_4_14_0_clk),
    .D(_081_),
    .Q(\u_mem.mem[7] [7]));
 sky130_fd_sc_hd__dfxtp_1 _543_ (.CLK(clknet_4_13_0_clk),
    .D(_082_),
    .Q(\u_mem.mem[6] [0]));
 sky130_fd_sc_hd__dfxtp_1 _544_ (.CLK(clknet_4_7_0_clk),
    .D(_083_),
    .Q(\u_mem.mem[6] [1]));
 sky130_fd_sc_hd__dfxtp_1 _545_ (.CLK(clknet_4_0_0_clk),
    .D(_084_),
    .Q(\u_mem.mem[6] [2]));
 sky130_fd_sc_hd__dfxtp_1 _546_ (.CLK(clknet_4_4_0_clk),
    .D(_085_),
    .Q(\u_mem.mem[6] [3]));
 sky130_fd_sc_hd__dfxtp_1 _547_ (.CLK(clknet_4_15_0_clk),
    .D(_086_),
    .Q(\u_mem.mem[6] [4]));
 sky130_fd_sc_hd__dfxtp_1 _548_ (.CLK(clknet_4_8_0_clk),
    .D(_087_),
    .Q(\u_mem.mem[6] [5]));
 sky130_fd_sc_hd__dfxtp_1 _549_ (.CLK(clknet_4_0_0_clk),
    .D(_088_),
    .Q(\u_mem.mem[6] [6]));
 sky130_fd_sc_hd__dfxtp_1 _550_ (.CLK(clknet_4_14_0_clk),
    .D(_089_),
    .Q(\u_mem.mem[6] [7]));
 sky130_fd_sc_hd__dfxtp_1 _551_ (.CLK(clknet_4_13_0_clk),
    .D(_090_),
    .Q(\u_mem.mem[2] [0]));
 sky130_fd_sc_hd__dfxtp_1 _552_ (.CLK(clknet_4_7_0_clk),
    .D(_091_),
    .Q(\u_mem.mem[2] [1]));
 sky130_fd_sc_hd__dfxtp_1 _553_ (.CLK(clknet_4_1_0_clk),
    .D(_092_),
    .Q(\u_mem.mem[2] [2]));
 sky130_fd_sc_hd__dfxtp_1 _554_ (.CLK(clknet_4_5_0_clk),
    .D(_093_),
    .Q(\u_mem.mem[2] [3]));
 sky130_fd_sc_hd__dfxtp_1 _555_ (.CLK(clknet_4_15_0_clk),
    .D(_094_),
    .Q(\u_mem.mem[2] [4]));
 sky130_fd_sc_hd__dfxtp_1 _556_ (.CLK(clknet_4_3_0_clk),
    .D(_095_),
    .Q(\u_mem.mem[2] [5]));
 sky130_fd_sc_hd__dfxtp_1 _557_ (.CLK(clknet_4_4_0_clk),
    .D(_096_),
    .Q(\u_mem.mem[2] [6]));
 sky130_fd_sc_hd__dfxtp_1 _558_ (.CLK(clknet_4_12_0_clk),
    .D(_097_),
    .Q(\u_mem.mem[2] [7]));
 sky130_fd_sc_hd__dfstp_1 _559_ (.CLK(clknet_4_10_0_clk),
    .D(_001_),
    .SET_B(net2),
    .Q(net20));
 sky130_fd_sc_hd__dfrtp_1 _560_ (.CLK(clknet_4_10_0_clk),
    .D(_000_),
    .RESET_B(net2),
    .Q(net21));
 sky130_fd_sc_hd__dfstp_1 _561_ (.CLK(clknet_4_10_0_clk),
    .D(_138_),
    .SET_B(net2),
    .Q(net27));
 sky130_fd_sc_hd__dfrtp_1 _562_ (.CLK(clknet_4_11_0_clk),
    .D(_139_),
    .RESET_B(net2),
    .Q(net28));
 sky130_fd_sc_hd__dfrtp_4 _563_ (.CLK(clknet_4_10_0_clk),
    .D(\u_ctrl.count_nxt [0]),
    .RESET_B(net2),
    .Q(net22));
 sky130_fd_sc_hd__dfrtp_2 _564_ (.CLK(clknet_4_10_0_clk),
    .D(\u_ctrl.count_nxt [1]),
    .RESET_B(net2),
    .Q(net23));
 sky130_fd_sc_hd__dfrtp_2 _565_ (.CLK(clknet_4_10_0_clk),
    .D(\u_ctrl.count_nxt [2]),
    .RESET_B(net2),
    .Q(net24));
 sky130_fd_sc_hd__dfrtp_1 _566_ (.CLK(clknet_4_10_0_clk),
    .D(\u_ctrl.count_nxt [3]),
    .RESET_B(net2),
    .Q(net25));
 sky130_fd_sc_hd__dfrtp_1 _567_ (.CLK(clknet_4_10_0_clk),
    .D(\u_ctrl.count_nxt [4]),
    .RESET_B(net2),
    .Q(net26));
 sky130_fd_sc_hd__dfrtp_4 _568_ (.CLK(clknet_4_10_0_clk),
    .D(_098_),
    .RESET_B(net2),
    .Q(\u_ctrl.wr_ptr [0]));
 sky130_fd_sc_hd__dfrtp_4 _569_ (.CLK(clknet_4_10_0_clk),
    .D(_099_),
    .RESET_B(net2),
    .Q(\u_ctrl.wr_ptr [1]));
 sky130_fd_sc_hd__dfrtp_4 _570_ (.CLK(clknet_4_8_0_clk),
    .D(_100_),
    .RESET_B(net2),
    .Q(\u_ctrl.wr_ptr [2]));
 sky130_fd_sc_hd__dfrtp_4 _571_ (.CLK(clknet_4_8_0_clk),
    .D(_101_),
    .RESET_B(net2),
    .Q(\u_ctrl.wr_ptr [3]));
 sky130_fd_sc_hd__dfrtp_4 _572_ (.CLK(clknet_4_11_0_clk),
    .D(_102_),
    .RESET_B(net2),
    .Q(\u_ctrl.rd_ptr [0]));
 sky130_fd_sc_hd__dfrtp_4 _573_ (.CLK(clknet_4_11_0_clk),
    .D(_103_),
    .RESET_B(net2),
    .Q(\u_ctrl.rd_ptr [1]));
 sky130_fd_sc_hd__dfrtp_4 _574_ (.CLK(clknet_4_11_0_clk),
    .D(_104_),
    .RESET_B(net2),
    .Q(\u_ctrl.rd_ptr [2]));
 sky130_fd_sc_hd__dfrtp_4 _575_ (.CLK(clknet_4_11_0_clk),
    .D(_105_),
    .RESET_B(net2),
    .Q(\u_ctrl.rd_ptr [3]));
 sky130_fd_sc_hd__dfxtp_1 _576_ (.CLK(clknet_4_13_0_clk),
    .D(_106_),
    .Q(\u_mem.mem[1] [0]));
 sky130_fd_sc_hd__dfxtp_1 _577_ (.CLK(clknet_4_7_0_clk),
    .D(_107_),
    .Q(\u_mem.mem[1] [1]));
 sky130_fd_sc_hd__dfxtp_1 _578_ (.CLK(clknet_4_0_0_clk),
    .D(_108_),
    .Q(\u_mem.mem[1] [2]));
 sky130_fd_sc_hd__dfxtp_1 _579_ (.CLK(clknet_4_5_0_clk),
    .D(_109_),
    .Q(\u_mem.mem[1] [3]));
 sky130_fd_sc_hd__dfxtp_1 _580_ (.CLK(clknet_4_15_0_clk),
    .D(_110_),
    .Q(\u_mem.mem[1] [4]));
 sky130_fd_sc_hd__dfxtp_1 _581_ (.CLK(clknet_4_2_0_clk),
    .D(_111_),
    .Q(\u_mem.mem[1] [5]));
 sky130_fd_sc_hd__dfxtp_1 _582_ (.CLK(clknet_4_1_0_clk),
    .D(_112_),
    .Q(\u_mem.mem[1] [6]));
 sky130_fd_sc_hd__dfxtp_1 _583_ (.CLK(clknet_4_9_0_clk),
    .D(_113_),
    .Q(\u_mem.mem[1] [7]));
 sky130_fd_sc_hd__dfxtp_1 _584_ (.CLK(clknet_4_13_0_clk),
    .D(_114_),
    .Q(\u_mem.mem[3] [0]));
 sky130_fd_sc_hd__dfxtp_1 _585_ (.CLK(clknet_4_7_0_clk),
    .D(_115_),
    .Q(\u_mem.mem[3] [1]));
 sky130_fd_sc_hd__dfxtp_1 _586_ (.CLK(clknet_4_0_0_clk),
    .D(_116_),
    .Q(\u_mem.mem[3] [2]));
 sky130_fd_sc_hd__dfxtp_1 _587_ (.CLK(clknet_4_5_0_clk),
    .D(_117_),
    .Q(\u_mem.mem[3] [3]));
 sky130_fd_sc_hd__dfxtp_1 _588_ (.CLK(clknet_4_13_0_clk),
    .D(_118_),
    .Q(\u_mem.mem[3] [4]));
 sky130_fd_sc_hd__dfxtp_1 _589_ (.CLK(clknet_4_3_0_clk),
    .D(_119_),
    .Q(\u_mem.mem[3] [5]));
 sky130_fd_sc_hd__dfxtp_1 _590_ (.CLK(clknet_4_1_0_clk),
    .D(_120_),
    .Q(\u_mem.mem[3] [6]));
 sky130_fd_sc_hd__dfxtp_1 _591_ (.CLK(clknet_4_11_0_clk),
    .D(_121_),
    .Q(\u_mem.mem[3] [7]));
 sky130_fd_sc_hd__dfxtp_1 _592_ (.CLK(clknet_4_12_0_clk),
    .D(_122_),
    .Q(\u_mem.mem[15] [0]));
 sky130_fd_sc_hd__dfxtp_1 _593_ (.CLK(clknet_4_6_0_clk),
    .D(_123_),
    .Q(\u_mem.mem[15] [1]));
 sky130_fd_sc_hd__dfxtp_1 _594_ (.CLK(clknet_4_3_0_clk),
    .D(_124_),
    .Q(\u_mem.mem[15] [2]));
 sky130_fd_sc_hd__dfxtp_1 _595_ (.CLK(clknet_4_6_0_clk),
    .D(_125_),
    .Q(\u_mem.mem[15] [3]));
 sky130_fd_sc_hd__dfxtp_1 _596_ (.CLK(clknet_4_14_0_clk),
    .D(_126_),
    .Q(\u_mem.mem[15] [4]));
 sky130_fd_sc_hd__dfxtp_1 _597_ (.CLK(clknet_4_9_0_clk),
    .D(_127_),
    .Q(\u_mem.mem[15] [5]));
 sky130_fd_sc_hd__dfxtp_1 _598_ (.CLK(clknet_4_3_0_clk),
    .D(_128_),
    .Q(\u_mem.mem[15] [6]));
 sky130_fd_sc_hd__dfxtp_1 _599_ (.CLK(clknet_4_11_0_clk),
    .D(_129_),
    .Q(\u_mem.mem[15] [7]));
 sky130_fd_sc_hd__dfxtp_1 _600_ (.CLK(clknet_4_12_0_clk),
    .D(_130_),
    .Q(\u_mem.mem[9] [0]));
 sky130_fd_sc_hd__dfxtp_1 _601_ (.CLK(clknet_4_6_0_clk),
    .D(_131_),
    .Q(\u_mem.mem[9] [1]));
 sky130_fd_sc_hd__dfxtp_1 _602_ (.CLK(clknet_4_2_0_clk),
    .D(_132_),
    .Q(\u_mem.mem[9] [2]));
 sky130_fd_sc_hd__dfxtp_1 _603_ (.CLK(clknet_4_6_0_clk),
    .D(_133_),
    .Q(\u_mem.mem[9] [3]));
 sky130_fd_sc_hd__dfxtp_1 _604_ (.CLK(clknet_4_12_0_clk),
    .D(_134_),
    .Q(\u_mem.mem[9] [4]));
 sky130_fd_sc_hd__dfxtp_1 _605_ (.CLK(clknet_4_2_0_clk),
    .D(_135_),
    .Q(\u_mem.mem[9] [5]));
 sky130_fd_sc_hd__dfxtp_1 _606_ (.CLK(clknet_4_2_0_clk),
    .D(_136_),
    .Q(\u_mem.mem[9] [6]));
 sky130_fd_sc_hd__dfxtp_1 _607_ (.CLK(clknet_4_9_0_clk),
    .D(_137_),
    .Q(\u_mem.mem[9] [7]));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Right_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Right_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Right_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Right_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Right_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Right_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Right_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Right_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Right_19 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Right_20 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Right_21 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Right_22 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Right_23 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Right_24 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_25_Right_25 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_26_Right_26 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_27_Right_27 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_28_Right_28 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_29_Right_29 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_30_Right_30 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_31_Right_31 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_32_Right_32 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_33_Right_33 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_34_Right_34 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_35_Right_35 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_36_Right_36 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_37_Right_37 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_38_Right_38 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_39 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_40 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_41 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_42 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_43 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_44 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_45 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_46 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_47 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_48 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_49 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_50 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Left_51 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Left_52 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Left_53 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Left_54 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Left_55 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Left_56 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Left_57 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Left_58 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Left_59 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Left_60 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Left_61 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Left_62 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Left_63 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_25_Left_64 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_26_Left_65 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_27_Left_66 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_28_Left_67 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_29_Left_68 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_30_Left_69 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_31_Left_70 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_32_Left_71 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_33_Left_72 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_34_Left_73 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_35_Left_74 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_36_Left_75 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_37_Left_76 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_38_Left_77 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_78 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_79 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_80 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_81 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_82 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_83 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_84 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_85 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_86 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_87 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_88 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_89 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_90 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_91 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_92 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_93 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_94 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_95 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_96 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_97 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_98 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_99 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_100 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_101 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_102 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_103 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_104 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_105 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_106 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_107 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_108 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_109 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_110 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_111 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_112 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_113 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_114 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_115 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_116 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_117 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_118 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_119 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_120 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_121 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_122 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_123 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_124 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_125 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_126 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_127 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_128 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_129 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_130 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_131 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_132 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_133 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_134 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_135 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_136 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_137 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_138 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_139 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_140 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_141 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_142 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_143 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_144 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_145 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_146 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_147 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_148 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_149 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_150 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_151 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_152 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_153 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_154 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_155 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_156 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_157 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_158 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_159 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_160 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_161 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_162 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_163 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_164 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_165 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_166 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_167 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_168 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_169 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_170 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_171 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_172 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_173 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_174 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_175 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_176 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_177 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_178 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_179 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_180 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_181 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_182 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_183 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_184 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_185 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_186 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_187 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_188 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_189 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_190 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_191 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_192 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_193 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_194 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_195 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_196 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_197 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_198 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_199 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_200 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_201 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_202 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_203 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_204 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_205 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_206 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_207 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_208 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_209 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_210 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_211 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_212 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_213 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_214 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_215 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_216 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_217 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_218 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_219 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_220 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_221 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_222 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_223 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_224 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_225 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_226 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_227 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_228 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_229 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_230 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_231 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_232 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_233 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_234 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_235 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_236 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_237 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_238 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_239 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_240 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_241 ();
 sky130_fd_sc_hd__clkbuf_1 input1 (.A(rd_en),
    .X(net1));
 sky130_fd_sc_hd__clkbuf_8 input2 (.A(rst_n),
    .X(net2));
 sky130_fd_sc_hd__buf_2 input3 (.A(wr_data[0]),
    .X(net3));
 sky130_fd_sc_hd__buf_2 input4 (.A(wr_data[1]),
    .X(net4));
 sky130_fd_sc_hd__buf_2 input5 (.A(wr_data[2]),
    .X(net5));
 sky130_fd_sc_hd__clkbuf_4 input6 (.A(wr_data[3]),
    .X(net6));
 sky130_fd_sc_hd__buf_2 input7 (.A(wr_data[4]),
    .X(net7));
 sky130_fd_sc_hd__clkbuf_4 input8 (.A(wr_data[5]),
    .X(net8));
 sky130_fd_sc_hd__clkbuf_4 input9 (.A(wr_data[6]),
    .X(net9));
 sky130_fd_sc_hd__buf_2 input10 (.A(wr_data[7]),
    .X(net10));
 sky130_fd_sc_hd__buf_1 input11 (.A(wr_en),
    .X(net11));
 sky130_fd_sc_hd__buf_1 output12 (.A(net12),
    .X(rd_data[0]));
 sky130_fd_sc_hd__buf_1 output13 (.A(net13),
    .X(rd_data[1]));
 sky130_fd_sc_hd__buf_1 output14 (.A(net14),
    .X(rd_data[2]));
 sky130_fd_sc_hd__buf_1 output15 (.A(net15),
    .X(rd_data[3]));
 sky130_fd_sc_hd__buf_1 output16 (.A(net16),
    .X(rd_data[4]));
 sky130_fd_sc_hd__buf_1 output17 (.A(net17),
    .X(rd_data[5]));
 sky130_fd_sc_hd__buf_1 output18 (.A(net18),
    .X(rd_data[6]));
 sky130_fd_sc_hd__buf_1 output19 (.A(net19),
    .X(rd_data[7]));
 sky130_fd_sc_hd__buf_1 output20 (.A(net20),
    .X(\u_ctrl.almost_empty_r ));
 sky130_fd_sc_hd__buf_1 output21 (.A(net21),
    .X(\u_ctrl.almost_full_r ));
 sky130_fd_sc_hd__buf_1 output22 (.A(net22),
    .X(\u_ctrl.count [0]));
 sky130_fd_sc_hd__buf_1 output23 (.A(net23),
    .X(\u_ctrl.count [1]));
 sky130_fd_sc_hd__buf_1 output24 (.A(net24),
    .X(\u_ctrl.count [2]));
 sky130_fd_sc_hd__buf_1 output25 (.A(net25),
    .X(\u_ctrl.count [3]));
 sky130_fd_sc_hd__buf_1 output26 (.A(net26),
    .X(\u_ctrl.count [4]));
 sky130_fd_sc_hd__buf_1 output27 (.A(net27),
    .X(\u_ctrl.empty_r ));
 sky130_fd_sc_hd__buf_1 output28 (.A(net28),
    .X(\u_ctrl.full_r ));
 sky130_fd_sc_hd__buf_4 max_cap29 (.A(_161_),
    .X(net29));
 sky130_fd_sc_hd__clkbuf_2 max_cap30 (.A(_153_),
    .X(net30));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_0_0_clk (.A(clknet_0_clk),
    .X(clknet_4_0_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_1_0_clk (.A(clknet_0_clk),
    .X(clknet_4_1_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_2_0_clk (.A(clknet_0_clk),
    .X(clknet_4_2_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_3_0_clk (.A(clknet_0_clk),
    .X(clknet_4_3_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_4_0_clk (.A(clknet_0_clk),
    .X(clknet_4_4_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_5_0_clk (.A(clknet_0_clk),
    .X(clknet_4_5_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_6_0_clk (.A(clknet_0_clk),
    .X(clknet_4_6_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_7_0_clk (.A(clknet_0_clk),
    .X(clknet_4_7_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_8_0_clk (.A(clknet_0_clk),
    .X(clknet_4_8_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_9_0_clk (.A(clknet_0_clk),
    .X(clknet_4_9_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_10_0_clk (.A(clknet_0_clk),
    .X(clknet_4_10_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_11_0_clk (.A(clknet_0_clk),
    .X(clknet_4_11_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_12_0_clk (.A(clknet_0_clk),
    .X(clknet_4_12_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_13_0_clk (.A(clknet_0_clk),
    .X(clknet_4_13_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_14_0_clk (.A(clknet_0_clk),
    .X(clknet_4_14_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_15_0_clk (.A(clknet_0_clk),
    .X(clknet_4_15_0_clk));
 sky130_fd_sc_hd__clkinvlp_4 clkload0 (.A(clknet_4_0_0_clk));
 sky130_fd_sc_hd__clkinv_4 clkload1 (.A(clknet_4_1_0_clk));
 sky130_fd_sc_hd__bufinv_16 clkload2 (.A(clknet_4_3_0_clk));
 sky130_fd_sc_hd__clkinv_4 clkload3 (.A(clknet_4_4_0_clk));
 sky130_fd_sc_hd__bufinv_16 clkload4 (.A(clknet_4_5_0_clk));
 sky130_fd_sc_hd__bufinv_16 clkload5 (.A(clknet_4_6_0_clk));
 sky130_fd_sc_hd__clkbuf_4 clkload6 (.A(clknet_4_7_0_clk));
 sky130_fd_sc_hd__clkinv_4 clkload7 (.A(clknet_4_8_0_clk));
 sky130_fd_sc_hd__bufinv_16 clkload8 (.A(clknet_4_9_0_clk));
 sky130_fd_sc_hd__clkinv_2 clkload9 (.A(clknet_4_10_0_clk));
 sky130_fd_sc_hd__bufinv_16 clkload10 (.A(clknet_4_11_0_clk));
 sky130_fd_sc_hd__bufinv_16 clkload11 (.A(clknet_4_12_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkload12 (.A(clknet_4_13_0_clk));
 sky130_fd_sc_hd__clkinv_4 clkload13 (.A(clknet_4_14_0_clk));
 sky130_fd_sc_hd__bufinv_16 clkload14 (.A(clknet_4_15_0_clk));
 assign almost_empty = \u_ctrl.almost_empty_r ;
 assign almost_full = \u_ctrl.almost_full_r ;
 assign occupancy[0] = \u_ctrl.count [0];
 assign occupancy[1] = \u_ctrl.count [1];
 assign occupancy[2] = \u_ctrl.count [2];
 assign occupancy[3] = \u_ctrl.count [3];
 assign occupancy[4] = \u_ctrl.count [4];
 assign empty = \u_ctrl.empty_r ;
 assign full = \u_ctrl.full_r ;
endmodule
