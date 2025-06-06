/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : W-2024.09
// Date      : Wed Jun  4 12:33:54 2025
/////////////////////////////////////////////////////////////


module shifter_8bit ( DATA_IN, N, DIR, Clock, DATA_OUT );
  input [7:0] DATA_IN;
  input [2:0] N;
  output [7:0] DATA_OUT;
  input DIR, Clock;
  wire   N18, N19, N20, N21, N22, N23, N24, N25, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135;

  DFFX1_RVT \DATA_OUT_reg[7]  ( .D(N25), .CLK(Clock), .Q(DATA_OUT[7]) );
  DFFX1_RVT \DATA_OUT_reg[6]  ( .D(N24), .CLK(Clock), .Q(DATA_OUT[6]) );
  DFFX1_RVT \DATA_OUT_reg[5]  ( .D(N23), .CLK(Clock), .Q(DATA_OUT[5]) );
  DFFX1_RVT \DATA_OUT_reg[4]  ( .D(N22), .CLK(Clock), .Q(DATA_OUT[4]) );
  DFFX1_RVT \DATA_OUT_reg[3]  ( .D(N21), .CLK(Clock), .Q(DATA_OUT[3]) );
  DFFX1_RVT \DATA_OUT_reg[2]  ( .D(N20), .CLK(Clock), .Q(DATA_OUT[2]) );
  DFFX1_RVT \DATA_OUT_reg[1]  ( .D(N19), .CLK(Clock), .Q(DATA_OUT[1]) );
  DFFX1_RVT \DATA_OUT_reg[0]  ( .D(N18), .CLK(Clock), .Q(DATA_OUT[0]) );
  INVX0_RVT U61 ( .A(DIR), .Y(n51) );
  INVX0_RVT U62 ( .A(n51), .Y(n52) );
  INVX0_RVT U63 ( .A(N[2]), .Y(n53) );
  INVX0_RVT U64 ( .A(n53), .Y(n54) );
  INVX0_RVT U65 ( .A(DATA_IN[7]), .Y(n55) );
  INVX0_RVT U66 ( .A(n55), .Y(n56) );
  INVX0_RVT U67 ( .A(DATA_IN[0]), .Y(n57) );
  INVX0_RVT U68 ( .A(n57), .Y(n58) );
  INVX0_RVT U69 ( .A(DATA_IN[4]), .Y(n59) );
  INVX0_RVT U70 ( .A(n59), .Y(n60) );
  INVX0_RVT U71 ( .A(DATA_IN[2]), .Y(n61) );
  INVX0_RVT U72 ( .A(n61), .Y(n62) );
  INVX0_RVT U73 ( .A(DATA_IN[3]), .Y(n63) );
  INVX0_RVT U74 ( .A(n63), .Y(n64) );
  INVX1_RVT U75 ( .A(n66), .Y(n128) );
  INVX0_RVT U76 ( .A(n65), .Y(n66) );
  INVX0_RVT U77 ( .A(n67), .Y(n68) );
  INVX1_RVT U78 ( .A(N[1]), .Y(n67) );
  INVX1_RVT U79 ( .A(n54), .Y(n69) );
  INVX0_RVT U80 ( .A(n109), .Y(n119) );
  INVX0_RVT U81 ( .A(n52), .Y(n105) );
  INVX0_RVT U82 ( .A(n77), .Y(n101) );
  NAND2X0_RVT U83 ( .A1(n66), .A2(n68), .Y(n109) );
  INVX0_RVT U84 ( .A(n71), .Y(n127) );
  INVX0_RVT U85 ( .A(n73), .Y(n117) );
  INVX1_RVT U86 ( .A(N[0]), .Y(n65) );
  INVX0_RVT U87 ( .A(DATA_IN[5]), .Y(n70) );
  INVX0_RVT U88 ( .A(n70), .Y(n71) );
  INVX0_RVT U89 ( .A(DATA_IN[6]), .Y(n72) );
  INVX0_RVT U90 ( .A(n72), .Y(n73) );
  INVX0_RVT U91 ( .A(n58), .Y(n74) );
  INVX0_RVT U92 ( .A(n60), .Y(n75) );
  INVX0_RVT U93 ( .A(DATA_IN[1]), .Y(n76) );
  INVX0_RVT U94 ( .A(n76), .Y(n77) );
  INVX0_RVT U95 ( .A(n62), .Y(n78) );
  NAND2X0_RVT U96 ( .A1(n68), .A2(n128), .Y(n79) );
  AND2X1_RVT U97 ( .A1(n66), .A2(n67), .Y(n93) );
  NAND2X0_RVT U98 ( .A1(n93), .A2(n71), .Y(n120) );
  AO22X1_RVT U99 ( .A1(n66), .A2(n56), .A3(n128), .A4(n73), .Y(n91) );
  NAND2X0_RVT U100 ( .A1(n91), .A2(n68), .Y(n80) );
  NAND2X0_RVT U101 ( .A1(n128), .A2(n67), .Y(n118) );
  INVX0_RVT U102 ( .A(n118), .Y(n98) );
  NAND2X0_RVT U103 ( .A1(n98), .A2(n60), .Y(n103) );
  NAND3X0_RVT U104 ( .A1(n120), .A2(n80), .A3(n103), .Y(n107) );
  AND2X1_RVT U105 ( .A1(n52), .A2(n54), .Y(n99) );
  AND2X1_RVT U106 ( .A1(n98), .A2(n58), .Y(n106) );
  AO22X1_RVT U107 ( .A1(n66), .A2(n64), .A3(n128), .A4(n62), .Y(n81) );
  AO22X1_RVT U108 ( .A1(n68), .A2(n81), .A3(n93), .A4(n77), .Y(n82) );
  AND2X1_RVT U109 ( .A1(n52), .A2(n69), .Y(n123) );
  AO222X1_RVT U110 ( .A1(n107), .A2(n99), .A3(n69), .A4(n106), .A5(n82), .A6(
        n123), .Y(N18) );
  NAND2X0_RVT U111 ( .A1(n98), .A2(n77), .Y(n84) );
  NAND2X0_RVT U112 ( .A1(n93), .A2(n62), .Y(n96) );
  NAND3X0_RVT U113 ( .A1(n68), .A2(n64), .A3(n128), .Y(n112) );
  NAND3X0_RVT U114 ( .A1(n66), .A2(n68), .A3(n60), .Y(n83) );
  NAND4X0_RVT U115 ( .A1(n84), .A2(n96), .A3(n112), .A4(n83), .Y(n86) );
  AO22X1_RVT U116 ( .A1(n93), .A2(n58), .A3(n98), .A4(n77), .Y(n115) );
  AND2X1_RVT U117 ( .A1(n105), .A2(n69), .Y(n134) );
  NAND2X0_RVT U118 ( .A1(n93), .A2(n73), .Y(n130) );
  NAND3X0_RVT U119 ( .A1(n68), .A2(n56), .A3(n128), .Y(n85) );
  NAND2X0_RVT U120 ( .A1(n71), .A2(n98), .Y(n113) );
  NAND3X0_RVT U121 ( .A1(n130), .A2(n85), .A3(n113), .Y(n114) );
  AO222X1_RVT U122 ( .A1(n86), .A2(n123), .A3(n115), .A4(n134), .A5(n114), 
        .A6(n99), .Y(N19) );
  NAND2X0_RVT U123 ( .A1(n98), .A2(n62), .Y(n88) );
  NAND2X0_RVT U124 ( .A1(n93), .A2(n64), .Y(n102) );
  AO221X1_RVT U125 ( .A1(n66), .A2(n127), .A3(n128), .A4(n75), .A5(n67), .Y(
        n87) );
  NAND3X0_RVT U126 ( .A1(n88), .A2(n102), .A3(n87), .Y(n92) );
  NAND2X0_RVT U127 ( .A1(n93), .A2(n77), .Y(n90) );
  NAND3X0_RVT U128 ( .A1(n68), .A2(n58), .A3(n128), .Y(n89) );
  NAND3X0_RVT U129 ( .A1(n90), .A2(n89), .A3(n88), .Y(n125) );
  AND2X1_RVT U130 ( .A1(n67), .A2(n91), .Y(n124) );
  AO222X1_RVT U131 ( .A1(n92), .A2(n123), .A3(n125), .A4(n134), .A5(n124), 
        .A6(n99), .Y(N20) );
  OA22X1_RVT U132 ( .A1(n117), .A2(n109), .A3(n127), .A4(n79), .Y(n94) );
  NAND2X0_RVT U133 ( .A1(n98), .A2(n64), .Y(n95) );
  NAND2X0_RVT U134 ( .A1(n93), .A2(n60), .Y(n111) );
  NAND3X0_RVT U135 ( .A1(n94), .A2(n95), .A3(n111), .Y(n100) );
  OA22X1_RVT U136 ( .A1(n74), .A2(n109), .A3(n101), .A4(n79), .Y(n97) );
  NAND3X0_RVT U137 ( .A1(n97), .A2(n96), .A3(n95), .Y(n132) );
  AND2X1_RVT U138 ( .A1(n98), .A2(n56), .Y(n133) );
  AO222X1_RVT U139 ( .A1(n100), .A2(n123), .A3(n132), .A4(n134), .A5(n133), 
        .A6(n99), .Y(N21) );
  OA22X1_RVT U140 ( .A1(n101), .A2(n109), .A3(n78), .A4(n79), .Y(n104) );
  NAND3X0_RVT U141 ( .A1(n104), .A2(n103), .A3(n102), .Y(n108) );
  AND2X1_RVT U142 ( .A1(n54), .A2(n105), .Y(n131) );
  AO222X1_RVT U143 ( .A1(n108), .A2(n134), .A3(n107), .A4(n123), .A5(n131), 
        .A6(n106), .Y(N22) );
  NAND2X0_RVT U144 ( .A1(n62), .A2(n119), .Y(n110) );
  NAND4X0_RVT U145 ( .A1(n113), .A2(n112), .A3(n111), .A4(n110), .Y(n116) );
  AO222X1_RVT U146 ( .A1(n116), .A2(n134), .A3(n115), .A4(n131), .A5(n114), 
        .A6(n123), .Y(N23) );
  OA22X1_RVT U147 ( .A1(n118), .A2(n117), .A3(n75), .A4(n79), .Y(n122) );
  NAND2X0_RVT U148 ( .A1(n119), .A2(n64), .Y(n121) );
  NAND3X0_RVT U149 ( .A1(n122), .A2(n121), .A3(n120), .Y(n126) );
  AO222X1_RVT U150 ( .A1(n126), .A2(n134), .A3(n125), .A4(n131), .A5(n124), 
        .A6(n123), .Y(N24) );
  AO221X1_RVT U151 ( .A1(n66), .A2(n75), .A3(n128), .A4(n127), .A5(n67), .Y(
        n129) );
  NAND2X0_RVT U152 ( .A1(n130), .A2(n129), .Y(n135) );
  AO222X1_RVT U153 ( .A1(n135), .A2(n134), .A3(n69), .A4(n133), .A5(n132), 
        .A6(n131), .Y(N25) );
endmodule

