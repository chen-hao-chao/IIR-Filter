/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Thu May 31 15:48:04 2018
/////////////////////////////////////////////////////////////


module IIR_DW01_inc_0 ( A, SUM );
  input [19:0] A;
  output [19:0] SUM;

  wire   [19:2] carry;

  ADDHXL U1_1_18 ( .A(A[18]), .B(carry[18]), .CO(carry[19]), .S(SUM[18]) );
  ADDHXL U1_1_17 ( .A(A[17]), .B(carry[17]), .CO(carry[18]), .S(SUM[17]) );
  ADDHXL U1_1_16 ( .A(A[16]), .B(carry[16]), .CO(carry[17]), .S(SUM[16]) );
  ADDHXL U1_1_15 ( .A(A[15]), .B(carry[15]), .CO(carry[16]), .S(SUM[15]) );
  ADDHXL U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  ADDHXL U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  ADDHXL U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[19]), .B(A[19]), .Y(SUM[19]) );
endmodule


module IIR_DW01_add_0 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  CLKINVX1 U1 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U2 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_41 ( A, B, CI, SUM, CO );
  input [23:0] A;
  input [23:0] B;
  output [23:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [23:1] carry;
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];

  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_40 ( A, B, CI, SUM, CO );
  input [22:0] A;
  input [22:0] B;
  output [22:0] SUM;
  input CI;
  output CO;
  wire   \B[0] , n1, n2;
  wire   [22:1] carry;
  assign \B[0]  = B[0];
  assign SUM[0] = \B[0] ;
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  XNOR2X1 U1 ( .A(B[1]), .B(n1), .Y(SUM[1]) );
  CLKINVX1 U2 ( .A(A[1]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[2]) );
  CLKINVX1 U4 ( .A(B[1]), .Y(n2) );
endmodule


module IIR_DW01_add_37 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];

  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_36 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[5] = B[5];
  assign SUM[4] = B[4];

  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[7]) );
  CLKINVX1 U2 ( .A(B[6]), .Y(n2) );
  XNOR2X1 U3 ( .A(B[6]), .B(n1), .Y(SUM[6]) );
  CLKINVX1 U4 ( .A(A[6]), .Y(n1) );
endmodule


module IIR_DW01_add_35 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];
  assign SUM[13] = carry[13];
  assign SUM[12] = carry[12];
  assign SUM[11] = carry[11];

  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_sub_9 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   \B[0] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27;
  wire   [25:0] carry;
  assign \B[0]  = B[0];
  assign DIFF[0] = \B[0] ;

  ADDFXL U2_19 ( .A(A[19]), .B(n17), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n18), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n19), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n20), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n21), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n22), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n23), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n24), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n25), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n26), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n27), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n4), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n5), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n6), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  XOR3X1 U2_24 ( .A(A[24]), .B(n12), .C(carry[24]), .Y(DIFF[24]) );
  ADDFXL U2_23 ( .A(A[23]), .B(n13), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFXL U2_22 ( .A(A[22]), .B(n14), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFXL U2_21 ( .A(A[21]), .B(n15), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n16), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  XNOR2X1 U1 ( .A(n11), .B(\B[0] ), .Y(DIFF[1]) );
  XNOR2X1 U2 ( .A(n10), .B(n1), .Y(DIFF[2]) );
  XNOR2X1 U3 ( .A(n9), .B(n2), .Y(DIFF[3]) );
  XNOR2X1 U4 ( .A(n8), .B(n3), .Y(DIFF[4]) );
  CLKINVX1 U5 ( .A(B[20]), .Y(n16) );
  CLKINVX1 U6 ( .A(B[21]), .Y(n15) );
  CLKINVX1 U7 ( .A(B[22]), .Y(n14) );
  CLKINVX1 U8 ( .A(B[23]), .Y(n13) );
  NAND2BX1 U9 ( .AN(\B[0] ), .B(n11), .Y(n1) );
  NAND2BX1 U10 ( .AN(n1), .B(n10), .Y(n2) );
  NAND2BX1 U11 ( .AN(n2), .B(n9), .Y(n3) );
  CLKINVX1 U12 ( .A(B[24]), .Y(n12) );
  CLKINVX1 U13 ( .A(B[3]), .Y(n9) );
  CLKINVX1 U14 ( .A(B[4]), .Y(n8) );
  CLKINVX1 U15 ( .A(B[2]), .Y(n10) );
  NOR2X1 U16 ( .A(n3), .B(B[4]), .Y(carry[5]) );
  CLKINVX1 U17 ( .A(B[5]), .Y(n7) );
  CLKINVX1 U18 ( .A(B[6]), .Y(n6) );
  CLKINVX1 U19 ( .A(B[7]), .Y(n5) );
  CLKINVX1 U20 ( .A(B[8]), .Y(n4) );
  CLKINVX1 U21 ( .A(B[9]), .Y(n27) );
  CLKINVX1 U22 ( .A(B[10]), .Y(n26) );
  CLKINVX1 U23 ( .A(B[11]), .Y(n25) );
  CLKINVX1 U24 ( .A(B[12]), .Y(n24) );
  CLKINVX1 U25 ( .A(B[13]), .Y(n23) );
  CLKINVX1 U26 ( .A(B[14]), .Y(n22) );
  CLKINVX1 U27 ( .A(B[15]), .Y(n21) );
  CLKINVX1 U28 ( .A(B[16]), .Y(n20) );
  CLKINVX1 U29 ( .A(B[17]), .Y(n19) );
  CLKINVX1 U30 ( .A(B[18]), .Y(n18) );
  CLKINVX1 U31 ( .A(B[19]), .Y(n17) );
  CLKINVX1 U32 ( .A(B[1]), .Y(n11) );
endmodule


module IIR_DW01_add_34 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[3] = A[3];
  assign SUM[2] = A[2];
  assign SUM[1] = A[1];

  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  CLKINVX1 U1 ( .A(A[4]), .Y(n1) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[5]) );
  CLKINVX1 U3 ( .A(B[4]), .Y(n2) );
  XNOR2X1 U4 ( .A(B[4]), .B(n1), .Y(SUM[4]) );
endmodule


module IIR_DW01_add_32 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[1] = A[1];
  assign SUM[0] = A[0];

  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  CLKINVX1 U1 ( .A(A[2]), .Y(n1) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[3]) );
  CLKINVX1 U3 ( .A(B[2]), .Y(n2) );
  XNOR2X1 U4 ( .A(B[2]), .B(n1), .Y(SUM[2]) );
endmodule


module IIR_DW01_add_31 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[0] = B[0];

  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  XNOR2X1 U1 ( .A(B[1]), .B(n1), .Y(SUM[1]) );
  CLKINVX1 U2 ( .A(A[1]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[2]) );
  CLKINVX1 U4 ( .A(B[1]), .Y(n2) );
endmodule


module IIR_DW01_sub_8 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13;
  wire   [25:0] carry;
  assign DIFF[0] = B[0];

  ADDFXL U2_5 ( .A(A[5]), .B(n8), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n7), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  XOR3X1 U2_24 ( .A(A[24]), .B(n2), .C(carry[24]), .Y(DIFF[24]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n2), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n2), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n2), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n2), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n2), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n2), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n2), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n2), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n2), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n3), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n13), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n12), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n11), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n10), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n9), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_23 ( .A(A[23]), .B(n2), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFXL U2_22 ( .A(A[22]), .B(n2), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFXL U2_21 ( .A(A[21]), .B(n2), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  CLKBUFX3 U1 ( .A(n3), .Y(n2) );
  CLKINVX1 U2 ( .A(B[11]), .Y(n3) );
  XNOR2X1 U3 ( .A(n4), .B(B[0]), .Y(DIFF[1]) );
  XNOR2X1 U4 ( .A(n5), .B(n1), .Y(DIFF[2]) );
  CLKINVX1 U5 ( .A(B[6]), .Y(n9) );
  CLKINVX1 U6 ( .A(B[7]), .Y(n10) );
  CLKINVX1 U7 ( .A(B[8]), .Y(n11) );
  CLKINVX1 U8 ( .A(B[9]), .Y(n12) );
  CLKINVX1 U9 ( .A(B[10]), .Y(n13) );
  CLKINVX1 U10 ( .A(B[2]), .Y(n5) );
  NAND2BX1 U11 ( .AN(B[0]), .B(n4), .Y(n1) );
  CLKINVX1 U12 ( .A(B[1]), .Y(n4) );
  CLKINVX1 U13 ( .A(B[3]), .Y(n6) );
  NOR2X1 U14 ( .A(n1), .B(B[2]), .Y(carry[3]) );
  CLKINVX1 U15 ( .A(B[4]), .Y(n7) );
  CLKINVX1 U16 ( .A(B[5]), .Y(n8) );
endmodule


module IIR_DW01_add_29 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_28 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];

  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_27 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_sub_7 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24;
  wire   [25:0] carry;

  ADDFXL U2_2 ( .A(A[2]), .B(n22), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_1 ( .A(A[1]), .B(n23), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  XOR3X1 U2_24 ( .A(A[24]), .B(n2), .C(carry[24]), .Y(DIFF[24]) );
  ADDFXL U2_8 ( .A(A[8]), .B(n16), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n17), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n18), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n19), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n20), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n21), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_23 ( .A(A[23]), .B(n2), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFXL U2_22 ( .A(A[22]), .B(n2), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFXL U2_21 ( .A(A[21]), .B(n3), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n4), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n5), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n6), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n7), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n8), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n9), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n10), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n11), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n12), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n13), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n14), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n15), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  CLKINVX1 U1 ( .A(B[24]), .Y(n2) );
  CLKINVX1 U2 ( .A(B[9]), .Y(n15) );
  CLKINVX1 U3 ( .A(B[10]), .Y(n14) );
  CLKINVX1 U4 ( .A(B[11]), .Y(n13) );
  CLKINVX1 U5 ( .A(B[12]), .Y(n12) );
  CLKINVX1 U6 ( .A(B[13]), .Y(n11) );
  CLKINVX1 U7 ( .A(B[14]), .Y(n10) );
  CLKINVX1 U8 ( .A(B[15]), .Y(n9) );
  CLKINVX1 U9 ( .A(B[16]), .Y(n8) );
  CLKINVX1 U10 ( .A(B[17]), .Y(n7) );
  CLKINVX1 U11 ( .A(B[18]), .Y(n6) );
  CLKINVX1 U12 ( .A(B[19]), .Y(n5) );
  CLKINVX1 U13 ( .A(B[20]), .Y(n4) );
  CLKINVX1 U14 ( .A(B[21]), .Y(n3) );
  CLKINVX1 U15 ( .A(B[3]), .Y(n21) );
  CLKINVX1 U16 ( .A(B[4]), .Y(n20) );
  CLKINVX1 U17 ( .A(B[5]), .Y(n19) );
  CLKINVX1 U18 ( .A(B[6]), .Y(n18) );
  CLKINVX1 U19 ( .A(B[7]), .Y(n17) );
  CLKINVX1 U20 ( .A(B[8]), .Y(n16) );
  XNOR2X1 U21 ( .A(n24), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U22 ( .A(B[0]), .Y(n24) );
  NAND2X1 U23 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U24 ( .A(B[1]), .Y(n23) );
  CLKINVX1 U25 ( .A(B[2]), .Y(n22) );
  CLKINVX1 U26 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_sub_6 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   \B[0] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17;
  wire   [25:0] carry;
  assign \B[0]  = B[0];
  assign DIFF[0] = \B[0] ;

  ADDFXL U2_21 ( .A(A[21]), .B(n6), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n6), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n6), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n6), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n6), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n6), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n6), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n6), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n6), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n6), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n7), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n7), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n17), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n16), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n15), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  XOR3X1 U2_24 ( .A(A[24]), .B(n6), .C(carry[24]), .Y(DIFF[24]) );
  ADDFXL U2_23 ( .A(A[23]), .B(n6), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFXL U2_22 ( .A(A[22]), .B(n6), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  CLKBUFX3 U1 ( .A(n8), .Y(n6) );
  CLKBUFX3 U2 ( .A(n8), .Y(n7) );
  CLKINVX1 U3 ( .A(B[10]), .Y(n8) );
  XNOR2X1 U4 ( .A(n9), .B(\B[0] ), .Y(DIFF[1]) );
  XNOR2X1 U5 ( .A(n10), .B(n1), .Y(DIFF[2]) );
  XNOR2X1 U6 ( .A(n11), .B(n2), .Y(DIFF[3]) );
  XNOR2X1 U7 ( .A(n12), .B(n3), .Y(DIFF[4]) );
  XNOR2X1 U8 ( .A(n13), .B(n4), .Y(DIFF[5]) );
  XNOR2X1 U9 ( .A(n14), .B(n5), .Y(DIFF[6]) );
  NAND2BX1 U10 ( .AN(\B[0] ), .B(n9), .Y(n1) );
  NAND2BX1 U11 ( .AN(n1), .B(n10), .Y(n2) );
  NAND2BX1 U12 ( .AN(n2), .B(n11), .Y(n3) );
  NAND2BX1 U13 ( .AN(n3), .B(n12), .Y(n4) );
  NAND2BX1 U14 ( .AN(n4), .B(n13), .Y(n5) );
  CLKINVX1 U15 ( .A(B[5]), .Y(n13) );
  CLKINVX1 U16 ( .A(B[6]), .Y(n14) );
  CLKINVX1 U17 ( .A(B[2]), .Y(n10) );
  CLKINVX1 U18 ( .A(B[3]), .Y(n11) );
  CLKINVX1 U19 ( .A(B[1]), .Y(n9) );
  CLKINVX1 U20 ( .A(B[4]), .Y(n12) );
  CLKINVX1 U21 ( .A(B[7]), .Y(n15) );
  NOR2X1 U22 ( .A(n5), .B(B[6]), .Y(carry[7]) );
  CLKINVX1 U23 ( .A(B[8]), .Y(n16) );
  CLKINVX1 U24 ( .A(B[9]), .Y(n17) );
endmodule


module IIR_DW01_add_26 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];
  assign SUM[13] = carry[13];

  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_sub_5 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26;
  wire   [25:0] carry;

  XOR3X1 U2_24 ( .A(A[24]), .B(n2), .C(carry[24]), .Y(DIFF[24]) );
  ADDFXL U2_21 ( .A(A[21]), .B(n5), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n6), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n7), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n8), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n9), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n10), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n11), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n12), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n13), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n14), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n15), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n16), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n17), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n18), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n19), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n20), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n21), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n22), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n23), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n24), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_1 ( .A(A[1]), .B(n25), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_23 ( .A(A[23]), .B(n3), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFXL U2_22 ( .A(A[22]), .B(n4), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  CLKINVX1 U1 ( .A(B[22]), .Y(n4) );
  CLKINVX1 U2 ( .A(B[23]), .Y(n3) );
  CLKINVX1 U3 ( .A(B[1]), .Y(n25) );
  NAND2X1 U4 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U5 ( .A(B[2]), .Y(n24) );
  CLKINVX1 U6 ( .A(B[3]), .Y(n23) );
  CLKINVX1 U7 ( .A(B[4]), .Y(n22) );
  CLKINVX1 U8 ( .A(B[5]), .Y(n21) );
  CLKINVX1 U9 ( .A(B[6]), .Y(n20) );
  CLKINVX1 U10 ( .A(B[7]), .Y(n19) );
  CLKINVX1 U11 ( .A(B[8]), .Y(n18) );
  CLKINVX1 U12 ( .A(B[9]), .Y(n17) );
  CLKINVX1 U13 ( .A(B[10]), .Y(n16) );
  CLKINVX1 U14 ( .A(B[11]), .Y(n15) );
  CLKINVX1 U15 ( .A(B[12]), .Y(n14) );
  CLKINVX1 U16 ( .A(B[13]), .Y(n13) );
  CLKINVX1 U17 ( .A(B[14]), .Y(n12) );
  CLKINVX1 U18 ( .A(B[15]), .Y(n11) );
  CLKINVX1 U19 ( .A(B[16]), .Y(n10) );
  CLKINVX1 U20 ( .A(B[17]), .Y(n9) );
  CLKINVX1 U21 ( .A(B[18]), .Y(n8) );
  CLKINVX1 U22 ( .A(B[19]), .Y(n7) );
  CLKINVX1 U23 ( .A(B[20]), .Y(n6) );
  CLKINVX1 U24 ( .A(B[21]), .Y(n5) );
  CLKINVX1 U25 ( .A(B[24]), .Y(n2) );
  CLKINVX1 U26 ( .A(B[0]), .Y(n26) );
  XNOR2X1 U27 ( .A(n26), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U28 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_sub_4 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20;
  wire   [25:0] carry;
  assign DIFF[3] = A[3];
  assign DIFF[2] = A[2];
  assign DIFF[1] = A[1];
  assign DIFF[0] = A[0];

  ADDFXL U2_6 ( .A(A[6]), .B(n20), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n2), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  XOR3X1 U2_24 ( .A(A[24]), .B(n4), .C(carry[24]), .Y(DIFF[24]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n15), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n16), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n17), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n18), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n19), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_21 ( .A(A[21]), .B(n5), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n6), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n7), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n8), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n9), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n10), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n11), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n12), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n13), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n14), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_23 ( .A(A[23]), .B(n4), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFXL U2_22 ( .A(A[22]), .B(n4), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  CLKINVX1 U1 ( .A(B[24]), .Y(n4) );
  CLKINVX1 U2 ( .A(B[12]), .Y(n14) );
  CLKINVX1 U3 ( .A(B[13]), .Y(n13) );
  CLKINVX1 U4 ( .A(B[14]), .Y(n12) );
  CLKINVX1 U5 ( .A(B[15]), .Y(n11) );
  CLKINVX1 U6 ( .A(B[16]), .Y(n10) );
  CLKINVX1 U7 ( .A(B[17]), .Y(n9) );
  CLKINVX1 U8 ( .A(B[18]), .Y(n8) );
  CLKINVX1 U9 ( .A(B[19]), .Y(n7) );
  CLKINVX1 U10 ( .A(B[20]), .Y(n6) );
  CLKINVX1 U11 ( .A(B[21]), .Y(n5) );
  CLKINVX1 U12 ( .A(A[4]), .Y(n1) );
  XNOR2X1 U13 ( .A(n3), .B(A[4]), .Y(DIFF[4]) );
  CLKINVX1 U14 ( .A(B[7]), .Y(n19) );
  CLKINVX1 U15 ( .A(B[8]), .Y(n18) );
  CLKINVX1 U16 ( .A(B[9]), .Y(n17) );
  CLKINVX1 U17 ( .A(B[10]), .Y(n16) );
  CLKINVX1 U18 ( .A(B[11]), .Y(n15) );
  CLKINVX1 U19 ( .A(B[4]), .Y(n3) );
  NAND2X1 U20 ( .A(B[4]), .B(n1), .Y(carry[5]) );
  CLKINVX1 U21 ( .A(B[5]), .Y(n2) );
  CLKINVX1 U22 ( .A(B[6]), .Y(n20) );
endmodule


module IIR_DW01_add_25 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_sub_3 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25;
  wire   [25:0] carry;

  ADDFXL U2_4 ( .A(A[4]), .B(n21), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n22), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n23), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_1 ( .A(A[1]), .B(n24), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  XOR3X1 U2_24 ( .A(A[24]), .B(n2), .C(carry[24]), .Y(DIFF[24]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n11), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n12), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n13), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n14), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n15), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n16), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n17), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n18), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n19), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n20), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_23 ( .A(A[23]), .B(n2), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFXL U2_22 ( .A(A[22]), .B(n3), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFXL U2_21 ( .A(A[21]), .B(n4), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n5), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n6), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n7), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n8), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n9), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n10), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  CLKINVX1 U1 ( .A(B[15]), .Y(n10) );
  CLKINVX1 U2 ( .A(B[16]), .Y(n9) );
  CLKINVX1 U3 ( .A(B[17]), .Y(n8) );
  CLKINVX1 U4 ( .A(B[18]), .Y(n7) );
  CLKINVX1 U5 ( .A(B[19]), .Y(n6) );
  CLKINVX1 U6 ( .A(B[20]), .Y(n5) );
  CLKINVX1 U7 ( .A(B[21]), .Y(n4) );
  CLKINVX1 U8 ( .A(B[22]), .Y(n3) );
  CLKINVX1 U9 ( .A(B[24]), .Y(n2) );
  CLKINVX1 U10 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U11 ( .A(B[5]), .Y(n20) );
  CLKINVX1 U12 ( .A(B[6]), .Y(n19) );
  CLKINVX1 U13 ( .A(B[7]), .Y(n18) );
  CLKINVX1 U14 ( .A(B[8]), .Y(n17) );
  CLKINVX1 U15 ( .A(B[9]), .Y(n16) );
  CLKINVX1 U16 ( .A(B[10]), .Y(n15) );
  CLKINVX1 U17 ( .A(B[11]), .Y(n14) );
  CLKINVX1 U18 ( .A(B[12]), .Y(n13) );
  CLKINVX1 U19 ( .A(B[13]), .Y(n12) );
  CLKINVX1 U20 ( .A(B[14]), .Y(n11) );
  XNOR2X1 U21 ( .A(n25), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U22 ( .A(B[1]), .Y(n24) );
  NAND2X1 U23 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U24 ( .A(B[2]), .Y(n23) );
  CLKINVX1 U25 ( .A(B[3]), .Y(n22) );
  CLKINVX1 U26 ( .A(B[4]), .Y(n21) );
  CLKINVX1 U27 ( .A(B[0]), .Y(n25) );
endmodule


module IIR_DW01_add_24 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];

  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_23 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_sub_2 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26;
  wire   [25:0] carry;

  ADDFXL U2_7 ( .A(A[7]), .B(n25), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_14 ( .A(A[14]), .B(n18), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n19), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n20), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n21), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n22), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n23), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n24), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n2), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n3), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n4), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n6), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n7), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  XOR3X1 U2_24 ( .A(A[24]), .B(n8), .C(carry[24]), .Y(DIFF[24]) );
  ADDFXL U2_23 ( .A(A[23]), .B(n9), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFXL U2_22 ( .A(A[22]), .B(n10), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFXL U2_21 ( .A(A[21]), .B(n11), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n12), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n13), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n14), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n15), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n16), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n17), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  CLKINVX1 U1 ( .A(B[15]), .Y(n17) );
  CLKINVX1 U2 ( .A(B[16]), .Y(n16) );
  CLKINVX1 U3 ( .A(B[17]), .Y(n15) );
  CLKINVX1 U4 ( .A(B[18]), .Y(n14) );
  CLKINVX1 U5 ( .A(B[19]), .Y(n13) );
  CLKINVX1 U6 ( .A(B[20]), .Y(n12) );
  CLKINVX1 U7 ( .A(B[21]), .Y(n11) );
  CLKINVX1 U8 ( .A(B[22]), .Y(n10) );
  CLKINVX1 U9 ( .A(B[23]), .Y(n9) );
  CLKINVX1 U10 ( .A(B[24]), .Y(n8) );
  XNOR2X1 U11 ( .A(n26), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U12 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U13 ( .A(B[1]), .Y(n7) );
  NAND2X1 U14 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U15 ( .A(B[2]), .Y(n6) );
  CLKINVX1 U16 ( .A(B[3]), .Y(n5) );
  CLKINVX1 U17 ( .A(B[4]), .Y(n4) );
  CLKINVX1 U18 ( .A(B[5]), .Y(n3) );
  CLKINVX1 U19 ( .A(B[6]), .Y(n2) );
  CLKINVX1 U20 ( .A(B[8]), .Y(n24) );
  CLKINVX1 U21 ( .A(B[9]), .Y(n23) );
  CLKINVX1 U22 ( .A(B[10]), .Y(n22) );
  CLKINVX1 U23 ( .A(B[11]), .Y(n21) );
  CLKINVX1 U24 ( .A(B[12]), .Y(n20) );
  CLKINVX1 U25 ( .A(B[13]), .Y(n19) );
  CLKINVX1 U26 ( .A(B[14]), .Y(n18) );
  CLKINVX1 U27 ( .A(B[0]), .Y(n26) );
  CLKINVX1 U28 ( .A(B[7]), .Y(n25) );
endmodule


module IIR_DW01_add_21 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];
  assign SUM[13] = carry[13];
  assign SUM[12] = carry[12];
  assign SUM[11] = carry[11];
  assign SUM[10] = carry[10];
  assign SUM[9] = carry[9];

  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_20 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_19 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_18 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26;
  wire   [25:0] carry;

  XOR3X1 U2_24 ( .A(A[24]), .B(n2), .C(carry[24]), .Y(DIFF[24]) );
  ADDFXL U2_23 ( .A(A[23]), .B(n3), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFXL U2_22 ( .A(A[22]), .B(n4), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFXL U2_21 ( .A(A[21]), .B(n5), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n6), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n7), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n8), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n9), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n10), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n11), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n12), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n13), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n14), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n15), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n16), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n17), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n18), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n19), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n20), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n21), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n22), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n23), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n24), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_1 ( .A(A[1]), .B(n25), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(n26), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U3 ( .A(B[1]), .Y(n25) );
  NAND2X1 U4 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U5 ( .A(B[2]), .Y(n24) );
  CLKINVX1 U6 ( .A(B[3]), .Y(n23) );
  CLKINVX1 U7 ( .A(B[4]), .Y(n22) );
  CLKINVX1 U8 ( .A(B[5]), .Y(n21) );
  CLKINVX1 U9 ( .A(B[6]), .Y(n20) );
  CLKINVX1 U10 ( .A(B[7]), .Y(n19) );
  CLKINVX1 U11 ( .A(B[8]), .Y(n18) );
  CLKINVX1 U12 ( .A(B[9]), .Y(n17) );
  CLKINVX1 U13 ( .A(B[10]), .Y(n16) );
  CLKINVX1 U14 ( .A(B[11]), .Y(n15) );
  CLKINVX1 U15 ( .A(B[12]), .Y(n14) );
  CLKINVX1 U16 ( .A(B[13]), .Y(n13) );
  CLKINVX1 U17 ( .A(B[14]), .Y(n12) );
  CLKINVX1 U18 ( .A(B[15]), .Y(n11) );
  CLKINVX1 U19 ( .A(B[16]), .Y(n10) );
  CLKINVX1 U20 ( .A(B[17]), .Y(n9) );
  CLKINVX1 U21 ( .A(B[18]), .Y(n8) );
  CLKINVX1 U22 ( .A(B[19]), .Y(n7) );
  CLKINVX1 U23 ( .A(B[20]), .Y(n6) );
  CLKINVX1 U24 ( .A(B[21]), .Y(n5) );
  CLKINVX1 U25 ( .A(B[22]), .Y(n4) );
  CLKINVX1 U26 ( .A(B[23]), .Y(n3) );
  CLKINVX1 U27 ( .A(B[0]), .Y(n26) );
  CLKINVX1 U28 ( .A(B[24]), .Y(n2) );
endmodule


module IIR_DW01_add_17 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_14 ( A, B, CI, SUM, CO );
  input [22:0] A;
  input [22:0] B;
  output [22:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [22:1] carry;

  XOR3X1 U1_22 ( .A(A[22]), .B(B[22]), .C(carry[22]), .Y(SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_13 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [21:1] carry;

  XOR3X1 U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_12 ( A, B, CI, SUM, CO );
  input [23:0] A;
  input [23:0] B;
  output [23:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [23:1] carry;

  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_23 ( .A(A[23]), .B(B[23]), .C(carry[23]), .Y(SUM[23]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U3 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_10 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [21:1] carry;

  XOR3X1 U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_9 ( A, B, CI, SUM, CO );
  input [20:0] A;
  input [20:0] B;
  output [20:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [20:1] carry;

  XOR3X1 U1_20 ( .A(A[20]), .B(B[20]), .C(carry[20]), .Y(SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_8 ( A, B, CI, SUM, CO );
  input [22:0] A;
  input [22:0] B;
  output [22:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [22:1] carry;

  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_22 ( .A(A[22]), .B(B[22]), .C(carry[22]), .Y(SUM[22]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U3 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_5 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [21:1] carry;

  XOR3X1 U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_4 ( A, B, CI, SUM, CO );
  input [20:0] A;
  input [20:0] B;
  output [20:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [20:1] carry;

  XOR3X1 U1_20 ( .A(A[20]), .B(B[20]), .C(carry[20]), .Y(SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_3 ( A, B, CI, SUM, CO );
  input [22:0] A;
  input [22:0] B;
  output [22:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [22:1] carry;

  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_22 ( .A(A[22]), .B(B[22]), .C(carry[22]), .Y(SUM[22]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR ( clk, rst, load, DIn, RAddr, data_done, WEN, Yn, WAddr, Finish );
  input [15:0] DIn;
  output [19:0] RAddr;
  output [15:0] Yn;
  output [19:0] WAddr;
  input clk, rst, data_done;
  output load, WEN, Finish;
  wire   extended_m1_24, extended_m2_24, extended_m3_24, extended_m4_24,
         extended_m5_24, N40, N41, N42, N43, N44, N45, N46, N47, N48, N49, N50,
         N51, N52, Wa5_24, N159, N160, N161, N162, N163, N164, N165, N166,
         N167, Wa4_24, Wa3_24, ans_23, ans_22, \next_counter[0] , N1052, N1053,
         N1054, N1055, N1056, N1057, N1058, N1059, N1060, N1061, N1062, N1063,
         N1064, N1065, N1066, N1067, N1068, N1069, N1070, N1071, N1072, N1073,
         N1074, N1075, N1076, N1077, N1078, N1079, N1080, N1081, N1082, N1083,
         N1084, N1085, N1086, N1087, N1088, N1089, N1090, N1091, N1092, N1093,
         N1094, N1095, N1096, N1097, N1098, N1099, N1100, N1101, N1102, N1103,
         N1104, N1105, N1106, N1107, N1108, N1109, N1110, N1111, N1112, N1113,
         N1114, N1115, N1116, N1117, N1118, N1119, N1120, N1121, N1122, N1123,
         N1124, N1125, N1126, N1127, N1128, N1129, N1130, N1131, N1132, N1133,
         N1134, N1135, N1136, N1137, N1138, N1139, N1140, N1141, N1142, N1143,
         N1144, N1145, N1146, N1147, N1148, N1149, N1150, N1151, N1152, N1153,
         N1154, N1155, N1156, N1157, N1158, N1159, N1160, N1161, N1162, N1163,
         N1164, N1165, N1166, N1167, N1168, N1169, N1170, N1171, N1172, N1173,
         N1174, N1175, N1176, N1177, N1178, N1179, N1180, N1181, N1182, N1183,
         N1184, N1185, N1186, N1187, N1188, N1189, N1190, N1191, N1192, N1193,
         N1194, N1195, N1196, N1197, N1198, N1199, N1200, N1201, N1202, N1203,
         N1204, N1205, N1206, N1207, N1208, N1209, N1219, N1220, N1221, N1231,
         N1232, N1233, N1234, N1235, N1236, N1237, N1238, N1239, N1240, N1241,
         N1242, N1243, N1244, N1245, N1246, N1247, N1248, N1249, N1250, N1251,
         N1252, N1253, N1254, N1255, N1256, N1257, N1258, N1259, N1260, N1261,
         N1262, N1263, N1264, N1265, N1266, N1267, N1268, N1269, N1270, N1271,
         N1272, N1273, N1274, N1275, N1276, N1277, N1278, N1279, N1280, N1281,
         N1282, N1283, N1284, N1285, N1286, N1287, N1288, N1289, N1290, N1291,
         N1292, N1293, N1294, N1295, N1296, N1297, N1298, N1299, N1300, N1301,
         N1302, N1303, N1304, N1305, N1306, N1307, N1308, N1309, N1310, N1318,
         N1319, N1320, N1321, N1322, N1323, N1324, N1325, N1326, N1327, N1328,
         N1329, N1330, N1331, N1332, N1333, N1334, N1335, N1336, N1337, N1338,
         N1339, N1340, N1341, N1342, N1343, N1344, N1345, N1346, N1347, N1348,
         N1349, N1350, N1351, N1352, N1353, N1354, N1355, N1356, N1357, N1382,
         N1383, N1384, N1385, N1386, N1387, N1388, N1389, N1390, N1391, N1392,
         N1393, N1394, N1395, N1396, N1397, N1398, N1399, N1400, N1401, N1402,
         N1403, N1404, N1405, N1406, N1407, N1408, N1409, N1410, N1411, N1412,
         N1413, N1414, N1415, N1416, N1417, N1418, N1419, N1420, N1421, N1453,
         N1454, N1455, N1456, N1457, N1458, N1459, N1460, N1461, N1462, N1463,
         N1464, N1465, N1466, N1467, N1468, N1469, N1470, N1471, N1472, N1473,
         N1474, N1475, N1476, N1477, N1478, N1479, N1480, N1481, N1482, N1483,
         N1484, N1485, N1486, N1487, N1488, N1489, N1490, N1491, N1492, N1493,
         N1494, N1495, N1496, N1497, N1498, N1499, N1500, N1501, N1502, N1536,
         N1551, N1552, N1553, N1554, N1555, N1556, N1558, N1559, N1560, N1561,
         N1562, N1563, N1564, N1565, N1566, N1567, N1568, N1569, N1570, N1571,
         N1572, N1573, N1574, N1575, N1576, N1577, N1578, N1579, N1580, N1581,
         N1582, N1583, N1584, N1585, N1586, N1587, N1588, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, \pb_weight[9] , \pb_weight[8] , \pb_weight[7] ,
         \pb_weight[6] , \pb_weight[5] , \pb_weight[4] , \pb_weight[3] ,
         \pb_weight[2] , \pb_weight[24] , \pb_weight[23] , \pb_weight[22] ,
         \pb_weight[21] , \pb_weight[20] , \pb_weight[1] , \pb_weight[19] ,
         \pb_weight[18] , \pb_weight[17] , \pb_weight[16] , \pb_weight[15] ,
         \pb_weight[14] , \pb_weight[13] , \pb_weight[12] , \pb_weight[11] ,
         \pb_weight[10] , \pb_weight[0] , \Wb4[9] , \Wb4[8] , \Wb4[7] ,
         \Wb4[6] , \Wb4[5] , \Wb4[4] , \Wb4[3] , \Wb4[2] , \Wb4[24] ,
         \Wb4[23] , \Wb4[22] , \Wb4[21] , \Wb4[20] , \Wb4[1] , \Wb4[19] ,
         \Wb4[18] , \Wb4[17] , \Wb4[16] , \Wb4[15] , \Wb4[14] , \Wb4[13] ,
         \Wb4[12] , \Wb4[11] , \Wb4[10] , \Wb4[0] , \Wb3[9] , \Wb3[8] ,
         \Wb3[7] , \Wb3[6] , \Wb3[5] , \Wb3[4] , \Wb3[3] , \Wb3[2] , \Wb3[24] ,
         \Wb3[23] , \Wb3[22] , \Wb3[21] , \Wb3[20] , \Wb3[1] , \Wb3[19] ,
         \Wb3[18] , \Wb3[17] , \Wb3[16] , \Wb3[15] , \Wb3[14] , \Wb3[13] ,
         \Wb3[12] , \Wb3[11] , \Wb3[10] , \Wb2[9] , \Wb2[8] , \Wb2[7] ,
         \Wb2[6] , \Wb2[5] , \Wb2[24] , \Wb2[23] , \Wb2[22] , \Wb2[21] ,
         \Wb2[20] , \Wb2[19] , \Wb2[18] , \Wb2[17] , \Wb2[16] , \Wb2[15] ,
         \Wb2[14] , \Wb2[13] , \Wb2[12] , \Wb2[11] , \Wb2[10] , \Wb1[9] ,
         \Wb1[8] , \Wb1[7] , \Wb1[6] , \Wb1[5] , \Wb1[4] , \Wb1[3] , \Wb1[2] ,
         \Wb1[24] , \Wb1[23] , \Wb1[22] , \Wb1[21] , \Wb1[20] , \Wb1[1] ,
         \Wb1[19] , \Wb1[18] , \Wb1[17] , \Wb1[16] , \Wb1[15] , \Wb1[14] ,
         \Wb1[13] , \Wb1[12] , \Wb1[11] , \Wb1[10] , \Wb1[0] , \Wb0[9] ,
         \Wb0[8] , \Wb0[7] , \Wb0[6] , \Wb0[5] , \Wb0[4] , \Wb0[3] , \Wb0[2] ,
         \Wb0[24] , \Wb0[23] , \Wb0[22] , \Wb0[21] , \Wb0[20] , \Wb0[1] ,
         \Wb0[19] , \Wb0[18] , \Wb0[17] , \Wb0[16] , \Wb0[15] , \Wb0[14] ,
         \Wb0[13] , \Wb0[12] , \Wb0[11] , \Wb0[10] , \Wb0[0] , N999, N998,
         N997, N996, N995, N994, N993, N992, N991, N990, N989, N988, N987,
         N986, N985, N984, N983, N982, N981, N980, N979, N978, N977, N976,
         N975, N974, N973, N972, N971, N970, N969, N968, N967, N966, N965,
         N964, N963, N962, N961, N960, N959, N958, N957, N956, N955, N954,
         N953, N952, N951, N950, N949, N948, N947, N946, N945, N944, N943,
         N942, N941, N940, N939, N938, N937, N936, N935, N934, N933, N932,
         N931, N930, N929, N928, N927, N926, N925, N924, N923, N922, N921,
         N920, N919, N918, N917, N916, N915, N914, N913, N912, N911, N910,
         N909, N908, N907, N906, N905, N904, N881, N880, N879, N878, N877,
         N876, N875, N874, N873, N872, N871, N870, N869, N868, N867, N866,
         N865, N864, N863, N862, N861, N860, N859, N858, N856, N855, N854,
         N853, N852, N851, N850, N849, N848, N847, N846, N845, N844, N843,
         N842, N841, N840, N839, N838, N837, N836, N835, N834, N833, N832,
         N831, N830, N829, N828, N827, N826, N825, N824, N823, N822, N821,
         N820, N819, N818, N817, N816, N815, N814, N813, N812, N811, N810,
         N809, N808, N807, N806, N805, N804, N803, N802, N801, N800, N799,
         N798, N797, N796, N795, N794, N793, N792, N791, N790, N789, N788,
         N787, N786, N785, N784, N783, N782, N781, N780, N779, N778, N777,
         N776, N775, N774, N773, N772, N771, N770, N769, N768, N767, N766,
         N765, N764, N763, N762, N761, N760, N759, N758, N757, N756, N755,
         N754, N753, N752, N751, N750, N749, N748, N747, N746, N745, N744,
         N743, N742, N741, N740, N739, N738, N737, N736, N735, N734, N733,
         N732, N731, N730, N729, N728, N727, N726, N725, N724, N723, N722,
         N721, N720, N719, N718, N717, N716, N715, N714, N713, N712, N711,
         N710, N709, N708, N707, N706, N705, N704, N703, N702, N701, N700,
         N699, N698, N697, N696, N695, N694, N693, N692, N691, N690, N689,
         N688, N687, N686, N685, N684, N683, N682, N657, N656, N655, N654,
         N653, N652, N651, N650, N649, N648, N647, N646, N645, N644, N643,
         N642, N641, N640, N639, N638, N637, N636, N635, N634, N633, N632,
         N631, N630, N629, N628, N627, N626, N625, N624, N623, N622, N621,
         N620, N619, N618, N617, N616, N615, N614, N613, N612, N611, N610,
         N609, N608, N607, N606, N605, N604, N603, N602, N601, N600, N599,
         N598, N597, N596, N595, N594, N593, N592, N591, N590, N589, N588,
         N587, N586, N585, N584, N583, N582, N581, N580, N579, N578, N577,
         N576, N575, N574, N573, N572, N571, N570, N569, N568, N567, N566,
         N565, N564, N563, N562, N561, N560, N559, N558, N557, N556, N555,
         N554, N553, N552, N551, N550, N549, N548, N547, N546, N545, N544,
         N543, N542, N541, N540, N539, N538, N537, N536, N535, N534, N533,
         N532, N531, N530, N529, N528, N527, N526, N525, N524, N523, N522,
         N521, N520, N519, N518, N517, N516, N515, N514, N513, N512, N511,
         N510, N509, N508, N507, N506, N505, N504, N503, N502, N501, N500,
         N499, N498, N497, N496, N495, N494, N493, N492, N491, N490, N489,
         N488, N487, N486, N485, N484, N483, N482, N481, N480, N479, N478,
         N477, N476, N475, N474, N473, N472, N471, N470, N469, N468, N467,
         N466, N465, N464, N463, N462, N457, N456, N455, N454, N453, N452,
         N451, N450, N449, N448, N447, N446, N445, N444, N443, N442, N441,
         N440, N439, N438, N437, N436, N435, N434, N433, N432, N431, N430,
         N429, N428, N427, N426, N425, N424, N423, N422, N421, N420, N419,
         N418, N417, N416, N415, N414, N413, N412, N411, N410, N409, N408,
         N407, N406, N405, N404, N403, N402, N401, N400, N399, N398, N397,
         N396, N395, N394, N393, N392, N391, N390, N389, N388, N387, N386,
         N385, N384, N383, N382, N381, N380, N379, N378, N377, N376, N375,
         N374, N373, N372, N371, N370, N369, N368, N367, N366, N365, N364,
         N363, N362, N361, N360, N359, N358, N357, N356, N355, N354, N353,
         N352, N351, N350, N349, N348, N347, N346, N345, N344, N343, N342,
         N341, N340, N339, N338, N337, N336, N335, N334, N333, N1452, N1451,
         N1450, N1449, N1448, N1447, N1446, N1445, N1444, N1443, N1442, N1441,
         N1440, N1439, N1438, N1437, N1436, N1435, N1434, N1433, N1432, N1431,
         N1430, N1429, N1428, N1050, N1049, N1048, N1047, N1046, N1045, N1044,
         N1043, N1042, N1041, N1040, N1039, N1038, N1037, N1036, N1035, N1034,
         N1033, N1032, N1031, N1030, N1029, N1028, N1027, N1026, N1025, N1024,
         N1023, N1022, N1021, N1020, N1019, N1018, N1017, N1016, N1015, N1014,
         N1013, N1012, N1011, N1010, N1009, N1008, N1007, N1006, N1000, N326,
         N325, N324, N323, N322, N321, N320, N319, N318, N317, N316, N315,
         N314, N313, N312, N311, N310, N309, N308, N307, N306, N305, N304,
         N303, N302, N301, N300, N299, N298, N297, N296, N295, N294, N293,
         N292, N291, N290, N289, N288, N287, N286, N285, N284, N283, N282,
         N260, N254, N253, N252, N251, N250, N249, N248, N247, N246, N245,
         N244, N243, N242, N241, N239, N238, N237, N236, N235, N234, N233,
         N232, N231, N230, N229, N228, N227, N226, N225, N224, N223, N222,
         N221, N220, N219, N218, N217, N216, N215, N214, N213, N212, N211,
         N210, N209, N208, N207, N206, N205, N204, N203, N202, N201, N200,
         N199, N198, N197, N196, N195, N194, N193, N192, N191, N190, N189,
         N188, N187, N186, N185, N184, N183, N182, N181, N180, N179, N138,
         N137, N136, N135, N134, N133, N132, N131, N130, N129, N128, N127,
         N126, N125, N124, N123, N99, N98, N97, N96, N95, N94, N93, N92, N91,
         N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N69, N68,
         N67, N66, N65, N64, N63, N62, N61, N60, N59, N38, N37, N36, N35, N34,
         N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N121, N120,
         N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109,
         N108, N107, N106, N105, N104, N103, N102, N101, N100, \r525/carry[1] ,
         \r525/carry[2] , \r525/carry[3] , \r525/carry[4] , \r525/carry[5] ,
         \r525/carry[6] , \r525/carry[7] , \r519/carry[1] , \r519/carry[2] ,
         \r519/carry[3] , \r519/carry[4] , \r519/carry[5] , \r519/carry[6] ,
         \r519/carry[7] , \r519/carry[8] , \r519/carry[9] , \r519/carry[10] ,
         \r519/carry[11] , \add_5_root_add_57_6/carry[2] ,
         \add_5_root_add_57_6/carry[3] , \add_5_root_add_57_6/carry[4] ,
         \add_5_root_add_57_6/carry[5] , \add_5_root_add_57_6/carry[6] ,
         \add_5_root_add_57_6/carry[7] , \add_5_root_add_57_6/carry[8] ,
         \add_5_root_add_57_6/carry[9] , \add_5_root_add_57_6/carry[10] ,
         \add_5_root_add_57_6/carry[11] , \add_5_root_add_57_6/carry[12] ,
         \add_5_root_add_57_6/carry[13] , \add_5_root_add_57_6/carry[14] ,
         \add_5_root_add_57_6/carry[15] , \add_3_root_add_57_6/carry[1] ,
         \add_3_root_add_57_6/carry[2] , \add_3_root_add_57_6/carry[3] ,
         \add_3_root_add_57_6/carry[4] , \add_3_root_add_57_6/carry[5] ,
         \add_3_root_add_57_6/carry[6] , \add_3_root_add_57_6/carry[7] ,
         \add_3_root_add_57_6/carry[8] , \add_3_root_add_57_6/carry[9] ,
         \add_5_root_add_58_6/carry[2] , \add_5_root_add_58_6/carry[3] ,
         \add_5_root_add_58_6/carry[4] , \add_5_root_add_58_6/carry[5] ,
         \add_5_root_add_58_6/carry[6] , \add_5_root_add_58_6/carry[7] ,
         \add_5_root_add_58_6/carry[8] , \add_5_root_add_58_6/carry[9] ,
         \add_5_root_add_58_6/carry[10] , \add_5_root_add_58_6/carry[11] ,
         \add_5_root_add_58_6/carry[12] , \add_5_root_add_58_6/carry[13] ,
         \add_5_root_add_58_6/carry[14] , \add_5_root_add_58_6/carry[15] ,
         \add_5_root_add_59_6/carry[3] , \add_5_root_add_59_6/carry[4] ,
         \add_5_root_add_59_6/carry[5] , \add_5_root_add_59_6/carry[6] ,
         \add_5_root_add_59_6/carry[7] , \add_5_root_add_59_6/carry[8] ,
         \add_5_root_add_59_6/carry[9] , \add_5_root_add_59_6/carry[10] ,
         \add_5_root_add_59_6/carry[11] , \add_5_root_add_59_6/carry[12] ,
         \add_5_root_add_59_6/carry[13] , \add_5_root_add_59_6/carry[14] ,
         \add_5_root_add_59_6/carry[15] , \add_5_root_add_59_6/carry[16] ,
         \add_4_root_add_59_6/carry[1] , \add_4_root_add_59_6/carry[2] ,
         \add_4_root_add_59_6/carry[3] , \add_4_root_add_59_6/carry[4] ,
         \add_4_root_add_59_6/carry[5] , \add_4_root_add_59_6/carry[6] ,
         \add_4_root_add_59_6/carry[7] , \add_4_root_add_59_6/carry[8] ,
         \add_4_root_add_59_6/carry[9] , \add_4_root_add_59_6/carry[10] ,
         \add_4_root_add_59_6/carry[11] , \add_4_root_add_59_6/carry[12] ,
         \add_17_root_sub_0_root_add_167_2/carry[8] ,
         \add_17_root_sub_0_root_add_167_2/carry[9] ,
         \add_17_root_sub_0_root_add_167_2/carry[10] ,
         \add_17_root_sub_0_root_add_167_2/carry[11] ,
         \add_17_root_sub_0_root_add_167_2/carry[12] ,
         \add_17_root_sub_0_root_add_167_2/carry[13] ,
         \add_17_root_sub_0_root_add_167_2/carry[14] ,
         \add_17_root_sub_0_root_add_167_2/carry[15] ,
         \add_17_root_sub_0_root_add_167_2/carry[16] ,
         \add_17_root_sub_0_root_add_167_2/carry[17] ,
         \add_17_root_sub_0_root_add_167_2/carry[18] ,
         \add_17_root_sub_0_root_add_167_2/carry[19] ,
         \add_17_root_sub_0_root_add_167_2/carry[20] ,
         \add_17_root_sub_0_root_add_167_2/carry[21] ,
         \add_29_root_sub_0_root_add_167_2/carry[6] ,
         \add_29_root_sub_0_root_add_167_2/carry[7] ,
         \add_29_root_sub_0_root_add_167_2/carry[8] ,
         \add_29_root_sub_0_root_add_167_2/carry[9] ,
         \add_29_root_sub_0_root_add_167_2/carry[10] ,
         \add_29_root_sub_0_root_add_167_2/carry[11] ,
         \add_29_root_sub_0_root_add_167_2/carry[12] ,
         \add_29_root_sub_0_root_add_167_2/carry[13] ,
         \add_29_root_sub_0_root_add_167_2/carry[14] ,
         \add_29_root_sub_0_root_add_167_2/carry[15] ,
         \add_29_root_sub_0_root_add_167_2/carry[16] ,
         \add_29_root_sub_0_root_add_167_2/carry[17] ,
         \add_29_root_sub_0_root_add_167_2/carry[18] ,
         \add_29_root_sub_0_root_add_167_2/carry[19] ,
         \add_28_root_sub_0_root_add_167_2/carry[9] ,
         \add_28_root_sub_0_root_add_167_2/carry[10] ,
         \add_28_root_sub_0_root_add_167_2/carry[11] ,
         \add_28_root_sub_0_root_add_167_2/carry[12] ,
         \add_28_root_sub_0_root_add_167_2/carry[13] ,
         \add_28_root_sub_0_root_add_167_2/carry[14] ,
         \add_28_root_sub_0_root_add_167_2/carry[15] ,
         \add_28_root_sub_0_root_add_167_2/carry[16] ,
         \add_28_root_sub_0_root_add_167_2/carry[17] ,
         \add_28_root_sub_0_root_add_167_2/carry[18] ,
         \add_28_root_sub_0_root_add_167_2/carry[19] ,
         \add_28_root_sub_0_root_add_167_2/carry[20] ,
         \add_28_root_sub_0_root_add_167_2/carry[21] ,
         \add_28_root_sub_0_root_add_167_2/carry[22] ,
         \add_22_root_add_167_2/carry[7] , \add_22_root_add_167_2/carry[8] ,
         \add_22_root_add_167_2/carry[9] , \add_22_root_add_167_2/carry[10] ,
         \add_22_root_add_167_2/carry[11] , \add_22_root_add_167_2/carry[12] ,
         \add_22_root_add_167_2/carry[13] , \add_22_root_add_167_2/carry[14] ,
         \add_22_root_add_167_2/carry[15] , \add_22_root_add_167_2/carry[16] ,
         \add_22_root_add_167_2/carry[17] , \add_22_root_add_167_2/carry[18] ,
         \add_22_root_add_167_2/carry[19] , \add_22_root_add_167_2/carry[20] ,
         \add_22_root_add_167_2/carry[21] , \add_22_root_add_167_2/carry[22] ,
         \add_22_root_add_167_2/SUM[6] , \add_22_root_add_167_2/SUM[7] ,
         \add_22_root_add_167_2/SUM[8] , \add_22_root_add_167_2/SUM[9] ,
         \add_22_root_add_167_2/SUM[10] , \add_22_root_add_167_2/SUM[11] ,
         \add_22_root_add_167_2/SUM[12] , \add_22_root_add_167_2/SUM[13] ,
         \add_22_root_add_167_2/SUM[14] , \add_22_root_add_167_2/SUM[15] ,
         \add_22_root_add_167_2/SUM[16] , \add_22_root_add_167_2/SUM[17] ,
         \add_22_root_add_167_2/SUM[18] , \add_22_root_add_167_2/SUM[19] ,
         \add_22_root_add_167_2/SUM[20] ,
         \add_32_root_sub_0_root_add_167_2/carry[10] ,
         \add_32_root_sub_0_root_add_167_2/carry[11] ,
         \add_32_root_sub_0_root_add_167_2/carry[12] ,
         \add_32_root_sub_0_root_add_167_2/carry[13] ,
         \add_32_root_sub_0_root_add_167_2/carry[14] ,
         \add_32_root_sub_0_root_add_167_2/carry[15] ,
         \add_32_root_sub_0_root_add_167_2/carry[16] ,
         \add_32_root_sub_0_root_add_167_2/carry[17] ,
         \add_32_root_sub_0_root_add_167_2/carry[18] ,
         \add_32_root_sub_0_root_add_167_2/carry[19] ,
         \add_32_root_sub_0_root_add_167_2/carry[20] ,
         \add_32_root_sub_0_root_add_167_2/carry[21] ,
         \add_32_root_sub_0_root_add_167_2/carry[22] ,
         \add_32_root_sub_0_root_add_167_2/carry[23] ,
         \add_25_root_sub_0_root_add_167_2/carry[9] ,
         \add_25_root_sub_0_root_add_167_2/carry[10] ,
         \add_25_root_sub_0_root_add_167_2/carry[11] ,
         \add_25_root_sub_0_root_add_167_2/carry[12] ,
         \add_25_root_sub_0_root_add_167_2/carry[13] ,
         \add_25_root_sub_0_root_add_167_2/carry[14] ,
         \add_25_root_sub_0_root_add_167_2/carry[15] ,
         \add_25_root_sub_0_root_add_167_2/carry[16] ,
         \add_25_root_sub_0_root_add_167_2/carry[17] ,
         \add_25_root_sub_0_root_add_167_2/carry[18] ,
         \add_25_root_sub_0_root_add_167_2/carry[19] ,
         \add_25_root_sub_0_root_add_167_2/carry[20] ,
         \add_25_root_sub_0_root_add_167_2/carry[21] ,
         \add_25_root_sub_0_root_add_167_2/carry[22] , n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299,
         n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310,
         n311, n312, n313, n314, n315, n316, n317, n318, n319, n320, n321,
         n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, n332,
         n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343,
         n344, n345, n346, n347, n348, n349, n350, n351, n352, n353, n354,
         n355, n356, n357, n358, n359, n360, n361, n362, n363, n364, n365,
         n366, n367, n368, n369, n370, n371, n372, n373, n374, n375, n376,
         n377, n378, n379, n380, n381, n382, n383, n384, n385, n386, n387,
         n388, n389, n390, n391, n392, n393, n394, n395, n396, n397, n398,
         n399, n400, n401, n402, n403, n404, n405, n406, n407, n408, n409,
         n410, n411, n412, n413, n414, n415, n416, n417, n418, n419, n420,
         n421, n422, n423, n424, n425, n426, n427, n428, n429, n430, n431,
         n432, n433, n434, n435, n436, n437, n438, n439, n440, n441, n442,
         n443, n444, n445, n446, n447, n448, n449, n450, n451, n452, n453,
         n454, n455, n456, n457, n458, n459, n460, n461, n462, n463, n464,
         n465, n466, n467, n468, n469, n470;
  wire   [21:7] extended_m1;
  wire   [21:7] extended_m2;
  wire   [21:7] extended_m3;
  wire   [21:7] extended_m4;
  wire   [21:7] extended_m5;
  wire   [21:0] Wa5;
  wire   [21:0] Wa4;
  wire   [22:0] Wa3;
  wire   [5:0] counter;
  wire   [24:0] pa_weight;
  wire   [6:0] ans;
  wire   [2:0] over;
  wire   [1:0] last;
  wire   [20:0] \sub_147_aco/carry ;
  wire   [24:1] \add_26_root_sub_0_root_add_167_2/carry ;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4;
  assign Finish = N1588;
  assign N260 = DIn[15];
  assign N223 = DIn[2];
  assign N222 = DIn[1];

  IIR_DW01_inc_0 r570 ( .A(WAddr), .SUM({N1357, N1356, N1355, N1354, N1353, 
        N1352, N1351, N1350, N1349, N1348, N1347, N1346, N1345, N1344, N1343, 
        N1342, N1341, N1340, N1339, N1338}) );
  IIR_DW01_add_0 r550 ( .A({Yn[15], ans_23, ans_22, Yn[14:0], ans}), .B({
        pa_weight[24], pa_weight[24], pa_weight[22], n441, n442, n443, n444, 
        n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, n455, n456, 
        n457, n458, n459, n460, n461, n462}), .CI(1'b0), .SUM({N1502, N1501, 
        N1500, N1499, N1498, N1497, N1496, N1495, N1494, N1493, N1492, N1491, 
        N1490, N1489, N1488, N1487, N1486, N1485, N1484, N1483, N1482, N1481, 
        N1480, N1479, N1478}) );
  IIR_DW01_add_41 add_20_root_add_167_2 ( .A({n425, n370, n370, n370, n370, 
        n370, n369, n369, n369, n369, n372, n374, n376, n378, n380, n382, n384, 
        n386, n388, \Wb4[0] , extended_m4[11:8]}), .B({n425, n368, n370, n368, 
        extended_m4_24, n368, n368, n368, n367, extended_m4_24, extended_m4_24, 
        n367, n371, n373, n375, n377, n379, n381, n383, n385, n387, \Wb4[0] , 
        extended_m4[11:10]}), .CI(1'b0), .SUM({N950, N949, N948, N947, N946, 
        N945, N944, N943, N942, N941, N940, N939, N938, N937, N936, N935, N934, 
        N933, N932, N931, N930, N929, N928, N927}) );
  IIR_DW01_add_40 add_21_root_add_167_2 ( .A({n425, n369, n370, n369, n369, 
        n369, n370, n372, n374, n376, n378, n380, n382, n384, n386, n388, 
        \Wb4[0] , extended_m4[11:7], 1'b0}), .B({n425, n368, n368, n368, n368, 
        n369, n368, n370, n371, n373, n375, n377, n379, n381, n383, n385, n387, 
        \Wb4[0] , extended_m4[11:7]}), .CI(1'b0), .SUM({N926, N925, N924, N923, 
        N922, N921, N920, N919, N918, N917, N916, N915, N914, N913, N912, N911, 
        N910, N909, N908, N907, N906, N905, N904}) );
  IIR_DW01_add_37 add_27_root_sub_0_root_add_167_2 ( .A({n428, n428, n428, 
        n428, n428, n428, n428, n428, n428, n428, n428, extended_m3[21:14], 
        \Wb3[7] , \Wb3[6] , \Wb3[5] , \Wb3[4] , \Wb3[3] , \Wb3[2] }), .B({n428, 
        n426, n426, n426, n426, n426, n427, n426, n427, n426, 
        extended_m3[21:14], \Wb3[7] , \Wb3[6] , \Wb3[5] , \Wb3[4] , \Wb3[3] , 
        \Wb3[2] , \Wb3[1] }), .CI(1'b0), .SUM({N507, N506, N505, N504, N503, 
        N502, N501, N500, N499, N498, N497, N496, N495, N494, N493, N492, N491, 
        N490, N489, N488, N487, N486, N485, N484, N483}) );
  IIR_DW01_add_36 add_23_root_sub_0_root_add_167_2 ( .A({n432, n432, n432, 
        n432, extended_m1[21], \Wb0[7] , \Wb0[6] , \Wb0[5] , \Wb0[4] , 
        \Wb0[3] , \Wb0[2] , \Wb0[1] , \Wb0[0] , extended_m1[12:7], 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .B({n421, n421, n421, n421, n421, n421, 
        extended_m5, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM({N482, N481, 
        N480, N479, N478, N477, N476, N475, N474, N473, N472, N471, N470, N469, 
        N468, N467, N466, N465, N464, N463, N462, SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3}) );
  IIR_DW01_add_35 add_22_root_sub_0_root_add_167_2 ( .A({n424, n424, n424, 
        n424, n424, n424, n424, n424, n424, n424, n424, n423, n423, n423, 
        extended_m5[21:11]}), .B({n424, n423, n423, n423, n423, n423, n423, 
        n423, n423, n423, n421, n421, n421, n421, n421, n421, 
        extended_m5[21:13]}), .CI(1'b0), .SUM({N457, N456, N455, N454, N453, 
        N452, N451, N450, N449, N448, N447, N446, N445, N444, N443, N442, N441, 
        N440, N439, N438, N437, N436, N435, N434, N433}) );
  IIR_DW01_sub_9 sub_20_root_sub_0_root_add_167_2 ( .A({n424, n424, n424, n424, 
        n424, extended_m5, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({N975, N974, 
        N973, N972, N971, N970, N969, N968, N967, N966, N965, N964, N963, N962, 
        N961, N960, N959, N958, N957, N956, N955, N954, N953, N952, N951}), 
        .CI(1'b0), .DIFF({\Wb1[24] , \Wb1[23] , \Wb1[22] , \Wb1[21] , 
        \Wb1[20] , \Wb1[19] , \Wb1[18] , \Wb1[17] , \Wb1[16] , \Wb1[15] , 
        \Wb1[14] , \Wb1[13] , \Wb1[12] , \Wb1[11] , \Wb1[10] , \Wb1[9] , 
        \Wb1[8] , \Wb1[7] , \Wb1[6] , \Wb1[5] , \Wb1[4] , \Wb1[3] , \Wb1[2] , 
        \Wb1[1] , \Wb1[0] }) );
  IIR_DW01_add_34 add_19_root_sub_0_root_add_167_2 ( .A({\Wb3[24] , \Wb3[23] , 
        \Wb3[22] , \Wb3[21] , \Wb3[20] , \Wb3[19] , \Wb3[18] , \Wb3[17] , 
        \Wb3[16] , \Wb3[15] , \Wb3[14] , \Wb3[13] , \Wb3[12] , \Wb3[11] , 
        \Wb3[10] , \Wb3[9] , \Wb3[8] , \Wb3[7] , \Wb3[6] , \Wb3[5] , \Wb3[4] , 
        \Wb3[3] , \Wb3[2] , \Wb3[1] , 1'b0}), .B({N482, N481, N480, N479, N478, 
        N477, N476, N475, N474, N473, N472, N471, N470, N469, N468, N467, N466, 
        N465, N464, N463, N462, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM({
        N881, N880, N879, N878, N877, N876, N875, N874, N873, N872, N871, N870, 
        N869, N868, N867, N866, N865, N864, N863, N862, N861, N860, N859, N858, 
        SYNOPSYS_UNCONNECTED__4}) );
  IIR_DW01_add_32 add_15_root_sub_0_root_add_167_2 ( .A({\Wb0[24] , \Wb0[23] , 
        \Wb0[22] , \Wb0[21] , \Wb0[20] , \Wb0[19] , \Wb0[18] , \Wb0[17] , 
        \Wb0[16] , \Wb0[15] , \Wb0[14] , \Wb0[13] , \Wb0[12] , \Wb0[11] , 
        \Wb0[10] , \Wb0[9] , \Wb0[8] , \Wb0[7] , \Wb0[6] , \Wb0[5] , \Wb0[4] , 
        \Wb0[3] , \Wb0[2] , \Wb0[1] , \Wb0[0] }), .B({\Wb2[24] , \Wb2[23] , 
        \Wb2[22] , \Wb2[21] , \Wb2[20] , \Wb2[19] , \Wb2[18] , \Wb2[17] , 
        \Wb2[16] , \Wb2[15] , \Wb2[14] , \Wb2[13] , \Wb2[12] , \Wb2[11] , 
        \Wb2[10] , \Wb2[9] , \Wb2[8] , \Wb2[7] , \Wb2[6] , \Wb2[5] , \Wb3[3] , 
        \Wb3[2] , \Wb3[1] , 1'b0, 1'b0}), .CI(1'b0), .SUM({N856, N855, N854, 
        N853, N852, N851, N850, N849, N848, N847, N846, N845, N844, N843, N842, 
        N841, N840, N839, N838, N837, N836, N835, N834, N833, N832}) );
  IIR_DW01_add_31 add_14_root_sub_0_root_add_167_2 ( .A({N881, N880, N879, 
        N878, N877, N876, N875, N874, N873, N872, N871, N870, N869, N868, N867, 
        N866, N865, N864, N863, N862, N861, N860, N859, N858, 1'b0}), .B({N457, 
        N456, N455, N454, N453, N452, N451, N450, N449, N448, N447, N446, N445, 
        N444, N443, N442, N441, N440, N439, N438, N437, N436, N435, N434, N433}), .CI(1'b0), .SUM({N831, N830, N829, N828, N827, N826, N825, N824, N823, N822, 
        N821, N820, N819, N818, N817, N816, N815, N814, N813, N812, N811, N810, 
        N809, N808, N807}) );
  IIR_DW01_sub_8 sub_18_root_sub_0_root_add_167_2 ( .A({N1025, N1024, N1023, 
        N1022, N1021, N1020, N1019, N1018, N1017, N1016, N1015, N1014, N1013, 
        N1012, N1011, N1010, N1009, N1008, N1007, N1006, \Wb3[2] , \Wb3[1] , 
        1'b0, 1'b0, 1'b0}), .B({n425, n425, n425, n425, n425, n425, n425, n425, 
        n425, n425, n425, n425, n425, extended_m4_24, n372, n374, n376, n378, 
        n380, n382, n384, n386, n388, \Wb4[0] , extended_m4[11]}), .CI(1'b0), 
        .DIFF({N632, N631, N630, N629, N628, N627, N626, N625, N624, N623, 
        N622, N621, N620, N619, N618, N617, N616, N615, N614, N613, N612, N611, 
        N610, N609, N608}) );
  IIR_DW01_add_29 add_12_root_sub_0_root_add_167_2 ( .A({N632, N631, N630, 
        N629, N628, N627, N626, N625, N624, N623, N622, N621, N620, N619, N618, 
        N617, N616, N615, N614, N613, N612, N611, N610, N609, N608}), .B({N507, 
        N506, N505, N504, N503, N502, N501, N500, N499, N498, N497, N496, N495, 
        N494, N493, N492, N491, N490, N489, N488, N487, N486, N485, N484, N483}), .CI(1'b0), .SUM({N806, N805, N804, N803, N802, N801, N800, N799, N798, N797, 
        N796, N795, N794, N793, N792, N791, N790, N789, N788, N787, N786, N785, 
        N784, N783, N782}) );
  IIR_DW01_add_28 add_24_root_sub_0_root_add_167_2 ( .A({n433, n433, n433, 
        n433, n433, n433, n433, n433, n433, n433, extended_m1[21], \Wb0[7] , 
        \Wb0[6] , \Wb0[5] , \Wb0[4] , \Wb0[3] , \Wb0[2] , \Wb0[1] , \Wb0[0] , 
        extended_m1[12:7]}), .B({n433, n432, n432, n432, n432, n432, n432, 
        n432, n432, n432, n432, n431, n431, n431, n431, n431, n431, 
        extended_m1[21], \Wb0[7] , \Wb0[6] , \Wb0[5] , \Wb0[4] , \Wb0[3] , 
        \Wb0[2] , \Wb0[1] }), .CI(1'b0), .SUM({N1000, N999, N998, N997, N996, 
        N995, N994, N993, N992, N991, N990, N989, N988, N987, N986, N985, N984, 
        N983, N982, N981, N980, N979, N978, N977, N976}) );
  IIR_DW01_add_27 add_11_root_sub_0_root_add_167_2 ( .A({\Wb1[24] , \Wb1[23] , 
        \Wb1[22] , \Wb1[21] , \Wb1[20] , \Wb1[19] , \Wb1[18] , \Wb1[17] , 
        \Wb1[16] , \Wb1[15] , \Wb1[14] , \Wb1[13] , \Wb1[12] , \Wb1[11] , 
        \Wb1[10] , \Wb1[9] , \Wb1[8] , \Wb1[7] , \Wb1[6] , \Wb1[5] , \Wb1[4] , 
        \Wb1[3] , \Wb1[2] , \Wb1[1] , \Wb1[0] }), .B({N1000, N999, N998, N997, 
        N996, N995, N994, N993, N992, N991, N990, N989, N988, N987, N986, N985, 
        N984, N983, N982, N981, N980, N979, N978, N977, N976}), .CI(1'b0), 
        .SUM({N781, N780, N779, N778, N777, N776, N775, N774, N773, N772, N771, 
        N770, N769, N768, N767, N766, N765, N764, N763, N762, N761, N760, N759, 
        N758, N757}) );
  IIR_DW01_sub_7 sub_8_root_sub_0_root_add_167_2 ( .A({N856, N855, N854, N853, 
        N852, N851, N850, N849, N848, N847, N846, N845, N844, N843, N842, N841, 
        N840, N839, N838, N837, N836, N835, N834, N833, N832}), .B({N926, N926, 
        N926, N925, N924, N923, N922, N921, N920, N919, N918, N917, N916, N915, 
        N914, N913, N912, N911, N910, N909, N908, N907, N906, N905, N904}), 
        .CI(1'b0), .DIFF({N756, N755, N754, N753, N752, N751, N750, N749, N748, 
        N747, N746, N745, N744, N743, N742, N741, N740, N739, N738, N737, N736, 
        N735, N734, N733, N732}) );
  IIR_DW01_sub_6 sub_30_root_sub_0_root_add_167_2 ( .A({n427, n428, n428, 
        extended_m3[21:14], \Wb3[7] , \Wb3[6] , \Wb3[5] , \Wb3[4] , \Wb3[3] , 
        \Wb3[2] , \Wb3[1] , 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({
        n429, n429, n429, n429, n429, n429, n429, n429, n429, n429, n429, n429, 
        n429, n429, extended_m2_24, extended_m2[21:16], N959, N958, N957, N956}), .CI(1'b0), .DIFF({N357, N356, N355, N354, N353, N352, N351, N350, N349, 
        N348, N347, N346, N345, N344, N343, N342, N341, N340, N339, N338, N337, 
        N336, N335, N334, N333}) );
  IIR_DW01_add_26 add_31_root_sub_0_root_add_167_2 ( .A({n429, extended_m2_24, 
        n429, n429, extended_m2_24, n429, extended_m2_24, n429, n429, 
        extended_m2_24, n429, extended_m2_24, extended_m2_24, 
        extended_m2[21:16], N959, N958, N957, N956, N955, N954}), .B({n429, 
        n429, n429, extended_m2_24, extended_m2_24, n429, n429, extended_m2_24, 
        extended_m2_24, n429, n429, extended_m2_24, extended_m2[21:16], N959, 
        N958, N957, N956, N955, N954, N953}), .CI(1'b0), .SUM({N382, N381, 
        N380, N379, N378, N377, N376, N375, N374, N373, N372, N371, N370, N369, 
        N368, N367, N366, N365, N364, N363, N362, N361, N360, N359, N358}) );
  IIR_DW01_sub_5 sub_13_root_sub_0_root_add_167_2 ( .A({N357, N356, N355, N354, 
        N353, N352, N351, N350, N349, N348, N347, N346, N345, N344, N343, N342, 
        N341, N340, N339, N338, N337, N336, N335, N334, N333}), .B({N382, N381, 
        N380, N379, N378, N377, N376, N375, N374, N373, N372, N371, N370, N369, 
        N368, N367, N366, N365, N364, N363, N362, N361, N360, N359, N358}), 
        .CI(1'b0), .DIFF({N607, N606, N605, N604, N603, N602, N601, N600, N599, 
        N598, N597, N596, N595, N594, N593, N592, N591, N590, N589, N588, N587, 
        N586, N585, N584, N583}) );
  IIR_DW01_sub_4 sub_10_root_sub_0_root_add_167_2 ( .A({N607, N606, N605, N604, 
        N603, N602, N601, N600, N599, N598, N597, N596, N595, N594, N593, N592, 
        N591, N590, N589, N588, N587, N586, N585, N584, N583}), .B({
        \add_22_root_add_167_2/carry[22] , \add_22_root_add_167_2/carry[22] , 
        \add_22_root_add_167_2/carry[22] , \add_22_root_add_167_2/carry[21] , 
        \add_22_root_add_167_2/SUM[20] , \add_22_root_add_167_2/SUM[19] , 
        \add_22_root_add_167_2/SUM[18] , \add_22_root_add_167_2/SUM[17] , 
        \add_22_root_add_167_2/SUM[16] , \add_22_root_add_167_2/SUM[15] , 
        \add_22_root_add_167_2/SUM[14] , \add_22_root_add_167_2/SUM[13] , 
        \add_22_root_add_167_2/SUM[12] , \add_22_root_add_167_2/SUM[11] , 
        \add_22_root_add_167_2/SUM[10] , \add_22_root_add_167_2/SUM[9] , 
        \add_22_root_add_167_2/SUM[8] , \add_22_root_add_167_2/SUM[7] , 
        \add_22_root_add_167_2/SUM[6] , extended_m4[8:7], 1'b0, 1'b0, 1'b0, 
        1'b0}), .CI(1'b0), .DIFF({N582, N581, N580, N579, N578, N577, N576, 
        N575, N574, N573, N572, N571, N570, N569, N568, N567, N566, N565, N564, 
        N563, N562, N561, N560, N559, N558}) );
  IIR_DW01_add_25 add_7_root_sub_0_root_add_167_2 ( .A({N582, N581, N580, N579, 
        N578, N577, N576, N575, N574, N573, N572, N571, N570, N569, N568, N567, 
        N566, N565, N564, N563, N562, N561, N560, N559, N558}), .B({N781, N780, 
        N779, N778, N777, N776, N775, N774, N773, N772, N771, N770, N769, N768, 
        N767, N766, N765, N764, N763, N762, N761, N760, N759, N758, N757}), 
        .CI(1'b0), .SUM({N731, N730, N729, N728, N727, N726, N725, N724, N723, 
        N722, N721, N720, N719, N718, N717, N716, N715, N714, N713, N712, N711, 
        N710, N709, N708, N707}) );
  IIR_DW01_sub_3 sub_5_root_sub_0_root_add_167_2 ( .A({N731, N730, N729, N728, 
        N727, N726, N725, N724, N723, N722, N721, N720, N719, N718, N717, N716, 
        N715, N714, N713, N712, N711, N710, N709, N708, N707}), .B({N950, N950, 
        N949, N948, N947, N946, N945, N944, N943, N942, N941, N940, N939, N938, 
        N937, N936, N935, N934, N933, N932, N931, N930, N929, N928, N927}), 
        .CI(1'b0), .DIFF({N706, N705, N704, N703, N702, N701, N700, N699, N698, 
        N697, N696, N695, N694, N693, N692, N691, N690, N689, N688, N687, N686, 
        N685, N684, N683, N682}) );
  IIR_DW01_add_24 add_21_root_sub_0_root_add_167_2 ( .A({n424, n424, n424, 
        n424, n424, n424, n424, n424, n424, n424, n424, extended_m5[21:8]}), 
        .B({n424, n421, n422, n422, n422, n422, n422, n422, n422, n422, n422, 
        n422, n422, n422, n422, n423, n423, extended_m5[21:14]}), .CI(1'b0), 
        .SUM({N657, N656, N655, N654, N653, N652, N651, N650, N649, N648, N647, 
        N646, N645, N644, N643, N642, N641, N640, N639, N638, N637, N636, N635, 
        N634, N633}) );
  IIR_DW01_add_23 add_6_root_sub_0_root_add_167_2 ( .A({N1502, N1501, N1500, 
        N1499, N1498, N1497, N1496, N1495, N1494, N1493, N1492, N1491, N1490, 
        N1489, N1488, N1487, N1486, N1485, N1484, N1483, N1482, N1481, N1480, 
        N1479, N1478}), .B({N831, N830, N829, N828, N827, N826, N825, N824, 
        N823, N822, N821, N820, N819, N818, N817, N816, N815, N814, N813, N812, 
        N811, N810, N809, N808, N807}), .CI(1'b0), .SUM({N557, N556, N555, 
        N554, N553, N552, N551, N550, N549, N548, N547, N546, N545, N544, N543, 
        N542, N541, N540, N539, N538, N537, N536, N535, N534, N533}) );
  IIR_DW01_sub_2 sub_9_root_sub_0_root_add_167_2 ( .A({N657, N656, N655, N654, 
        N653, N652, N651, N650, N649, N648, N647, N646, N645, N644, N643, N642, 
        N641, N640, N639, N638, N637, N636, N635, N634, N633}), .B({\Wb4[24] , 
        \Wb4[23] , \Wb4[22] , \Wb4[21] , \Wb4[20] , \Wb4[19] , \Wb4[18] , 
        \Wb4[17] , \Wb4[16] , \Wb4[15] , \Wb4[14] , \Wb4[13] , \Wb4[12] , 
        \Wb4[11] , \Wb4[10] , \Wb4[9] , \Wb4[8] , \Wb4[7] , n378, n380, n382, 
        n384, n386, n388, \Wb4[0] }), .CI(1'b0), .DIFF({N432, N431, N430, N429, 
        N428, N427, N426, N425, N424, N423, N422, N421, N420, N419, N418, N417, 
        N416, N415, N414, N413, N412, N411, N410, N409, N408}) );
  IIR_DW01_add_21 add_16_root_sub_0_root_add_167_2 ( .A({n425, n425, n425, 
        n425, n425, n425, n425, n425, n425, n425, n425, n425, n425, n425, n425, 
        n425, n370, n425, n370, n372, n374, n376, n378, n380, n382}), .B({n425, 
        n367, n367, extended_m4_24, n368, n368, n367, n367, n367, 
        extended_m4_24, n367, extended_m4_24, extended_m4_24, n369, 
        extended_m4_24, n368, n371, n373, n375, n377, n379, n381, n383, n385, 
        n387}), .CI(1'b0), .SUM({\pb_weight[24] , \pb_weight[23] , 
        \pb_weight[22] , \pb_weight[21] , \pb_weight[20] , \pb_weight[19] , 
        \pb_weight[18] , \pb_weight[17] , \pb_weight[16] , \pb_weight[15] , 
        \pb_weight[14] , \pb_weight[13] , \pb_weight[12] , \pb_weight[11] , 
        \pb_weight[10] , \pb_weight[9] , \pb_weight[8] , \pb_weight[7] , 
        \pb_weight[6] , \pb_weight[5] , \pb_weight[4] , \pb_weight[3] , 
        \pb_weight[2] , \pb_weight[1] , \pb_weight[0] }) );
  IIR_DW01_add_20 add_4_root_sub_0_root_add_167_2 ( .A({N806, N805, N804, N803, 
        N802, N801, N800, N799, N798, N797, N796, N795, N794, N793, N792, N791, 
        N790, N789, N788, N787, N786, N785, N784, N783, N782}), .B({N557, N556, 
        N555, N554, N553, N552, N551, N550, N549, N548, N547, N546, N545, N544, 
        N543, N542, N541, N540, N539, N538, N537, N536, N535, N534, N533}), 
        .CI(1'b0), .SUM({N532, N531, N530, N529, N528, N527, N526, N525, N524, 
        N523, N522, N521, N520, N519, N518, N517, N516, N515, N514, N513, N512, 
        N511, N510, N509, N508}) );
  IIR_DW01_add_19 add_3_root_sub_0_root_add_167_2 ( .A({N756, N755, N754, N753, 
        N752, N751, N750, N749, N748, N747, N746, N745, N744, N743, N742, N741, 
        N740, N739, N738, N737, N736, N735, N734, N733, N732}), .B({N532, N531, 
        N530, N529, N528, N527, N526, N525, N524, N523, N522, N521, N520, N519, 
        N518, N517, N516, N515, N514, N513, N512, N511, N510, N509, N508}), 
        .CI(1'b0), .SUM({N407, N406, N405, N404, N403, N402, N401, N400, N399, 
        N398, N397, N396, N395, N394, N393, N392, N391, N390, N389, N388, N387, 
        N386, N385, N384, N383}) );
  IIR_DW01_add_18 add_2_root_sub_0_root_add_167_2 ( .A({N706, N705, N704, N703, 
        N702, N701, N700, N699, N698, N697, N696, N695, N694, N693, N692, N691, 
        N690, N689, N688, N687, N686, N685, N684, N683, N682}), .B({N407, N406, 
        N405, N404, N403, N402, N401, N400, N399, N398, N397, N396, N395, N394, 
        N393, N392, N391, N390, N389, N388, N387, N386, N385, N384, N383}), 
        .CI(1'b0), .SUM({N1050, N1049, N1048, N1047, N1046, N1045, N1044, 
        N1043, N1042, N1041, N1040, N1039, N1038, N1037, N1036, N1035, N1034, 
        N1033, N1032, N1031, N1030, N1029, N1028, N1027, N1026}) );
  IIR_DW01_sub_1 sub_1_root_sub_0_root_add_167_2 ( .A({N1050, N1049, N1048, 
        N1047, N1046, N1045, N1044, N1043, N1042, N1041, N1040, N1039, N1038, 
        N1037, N1036, N1035, N1034, N1033, N1032, N1031, N1030, N1029, N1028, 
        N1027, N1026}), .B({\pb_weight[24] , \pb_weight[23] , \pb_weight[22] , 
        \pb_weight[21] , \pb_weight[20] , \pb_weight[19] , \pb_weight[18] , 
        \pb_weight[17] , \pb_weight[16] , \pb_weight[15] , \pb_weight[14] , 
        \pb_weight[13] , \pb_weight[12] , \pb_weight[11] , \pb_weight[10] , 
        \pb_weight[9] , \pb_weight[8] , \pb_weight[7] , \pb_weight[6] , 
        \pb_weight[5] , \pb_weight[4] , \pb_weight[3] , \pb_weight[2] , 
        \pb_weight[1] , \pb_weight[0] }), .CI(1'b0), .DIFF({N1452, N1451, 
        N1450, N1449, N1448, N1447, N1446, N1445, N1444, N1443, N1442, N1441, 
        N1440, N1439, N1438, N1437, N1436, N1435, N1434, N1433, N1432, N1431, 
        N1430, N1429, N1428}) );
  IIR_DW01_add_17 add_0_root_sub_0_root_add_167_2 ( .A({N432, N431, N430, N429, 
        N428, N427, N426, N425, N424, N423, N422, N421, N420, N419, N418, N417, 
        N416, N415, N414, N413, N412, N411, N410, N409, N408}), .B({N1452, 
        N1451, N1450, N1449, N1448, N1447, N1446, N1445, N1444, N1443, N1442, 
        N1441, N1440, N1439, N1438, N1437, N1436, N1435, N1434, N1433, N1432, 
        N1431, N1430, N1429, N1428}), .CI(1'b0), .SUM({N1477, N1476, N1475, 
        N1474, N1473, N1472, N1471, N1470, N1469, N1468, N1467, N1466, N1465, 
        N1464, N1463, N1462, N1461, N1460, N1459, N1458, N1457, N1456, N1455, 
        N1454, N1453}) );
  IIR_DW01_add_14 add_1_root_add_59_6 ( .A({N260, N260, N260, N260, N260, N260, 
        N260, N260, N260, N254, N253, N252, N251, N250, N249, N248, N247, N246, 
        N245, N244, N243, N242, N241}), .B({N260, N260, N260, N260, N260, N260, 
        N260, N260, N260, N260, N260, N260, N260, N260, N167, N166, N165, N164, 
        N163, N162, N161, N160, N159}), .CI(1'b0), .SUM({N326, N325, N324, 
        N323, N322, N321, N320, N319, N318, N317, N316, N315, N314, N313, N312, 
        N311, N310, N309, N308, N307, N306, N305, N304}) );
  IIR_DW01_add_13 add_2_root_add_59_6 ( .A({N260, N260, N260, N260, N260, N260, 
        N260, N260, N260, N260, N260, N260, N260, N260, N260, N260, DIn[14:9]}), .B({N260, N260, N260, N260, N239, N238, N237, N236, N235, N234, N233, N232, 
        N231, N230, N229, N228, N227, N226, N225, N224, N223, N222}), .CI(1'b0), .SUM({N303, N302, N301, N300, N299, N298, N297, N296, N295, N294, N293, N292, 
        N291, N290, N289, N288, N287, N286, N285, N284, N283, N282}) );
  IIR_DW01_add_12 add_0_root_add_59_6 ( .A({N303, N303, N303, N302, N301, N300, 
        N299, N298, N297, N296, N295, N294, N293, N292, N291, N290, N289, N288, 
        N287, N286, N285, N284, N283, N282}), .B({N326, N326, N325, N324, N323, 
        N322, N321, N320, N319, N318, N317, N316, N315, N314, N313, N312, N311, 
        N310, N309, N308, N307, N306, N305, N304}), .CI(1'b0), .SUM({Wa3_24, 
        Wa3}) );
  IIR_DW01_add_10 add_1_root_add_58_6 ( .A({N260, N260, N260, N260, N260, N260, 
        N260, N260, N260, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, 
        N42, N41, N40}), .B({N260, N260, N260, N260, N260, N260, N260, N260, 
        N260, N260, N260, N260, N260, N167, N166, N165, N164, N163, N162, N161, 
        N160, N159}), .CI(1'b0), .SUM({N221, N220, N219, N218, N217, N216, 
        N215, N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, N204, 
        N203, N202, N201, N200}) );
  IIR_DW01_add_9 add_2_root_add_58_6 ( .A({N260, N260, N260, N260, N260, N260, 
        N260, N260, N260, N260, N260, N260, N260, N260, N260, DIn[14:9]}), .B(
        {N260, N260, N260, N260, N138, N137, N136, N135, N134, N133, N132, 
        N131, N130, N129, N128, N127, N126, N125, N124, N123, N222}), .CI(1'b0), .SUM({N199, N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, 
        N187, N186, N185, N184, N183, N182, N181, N180, N179}) );
  IIR_DW01_add_8 add_0_root_add_58_6 ( .A({N199, N199, N199, N198, N197, N196, 
        N195, N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, 
        N183, N182, N181, N180, N179}), .B({N221, N221, N220, N219, N218, N217, 
        N216, N215, N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, 
        N204, N203, N202, N201, N200}), .CI(1'b0), .SUM({Wa4_24, Wa4}) );
  IIR_DW01_add_5 add_1_root_add_57_6 ( .A({N260, N260, N260, N260, N260, N260, 
        N260, N260, N260, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, 
        N42, N41, N40}), .B({N260, N260, N260, N260, N260, N260, N260, N260, 
        N260, N260, N260, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, 
        N59}), .CI(1'b0), .SUM({N121, N120, N119, N118, N117, N116, N115, N114, 
        N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, 
        N101, N100}) );
  IIR_DW01_add_4 add_2_root_add_57_6 ( .A({N260, N260, N260, N260, N260, N260, 
        N260, N260, N260, N260, N260, N260, N260, N260, N260, DIn[14:9]}), .B(
        {N260, N260, N260, N260, N38, N37, N36, N35, N34, N33, N32, N31, N30, 
        N29, N28, N27, N26, N25, N24, N23, N223}), .CI(1'b0), .SUM({N99, N98, 
        N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, 
        N83, N82, N81, N80, N79}) );
  IIR_DW01_add_3 add_0_root_add_57_6 ( .A({N99, N99, N99, N98, N97, N96, N95, 
        N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, 
        N80, N79}), .B({N121, N121, N120, N119, N118, N117, N116, N115, N114, 
        N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, 
        N101, N100}), .CI(1'b0), .SUM({Wa5_24, Wa5}) );
  DFFQX1 \counter_reg[3]  ( .D(N1177), .CK(clk), .Q(counter[3]) );
  DFFQX1 \counter_reg[2]  ( .D(N1176), .CK(clk), .Q(counter[2]) );
  TLATX1 \next_over_reg[0]  ( .G(n403), .D(N1583), .QN(n365) );
  TLATX1 \next_state_reg[0]  ( .G(N1219), .D(N1220), .QN(n364) );
  TLATX1 \next_state_reg[1]  ( .G(N1219), .D(n419), .QN(n363) );
  TLATX1 \next_last_reg[0]  ( .G(n403), .D(N1586), .QN(n362) );
  TLATX1 \next_last_reg[1]  ( .G(n403), .D(N1587), .QN(n361) );
  TLATX1 \next_write_addr_reg[0]  ( .G(n403), .D(N1402), .QN(n360) );
  TLATX1 \next_write_addr_reg[1]  ( .G(n403), .D(N1403), .QN(n359) );
  TLATX1 \next_write_addr_reg[2]  ( .G(n403), .D(N1404), .QN(n358) );
  TLATX1 \next_write_addr_reg[3]  ( .G(n403), .D(N1405), .QN(n357) );
  TLATX1 \next_write_addr_reg[4]  ( .G(n403), .D(N1406), .QN(n356) );
  TLATX1 \next_write_addr_reg[5]  ( .G(n403), .D(N1407), .QN(n355) );
  TLATX1 \next_write_addr_reg[6]  ( .G(n403), .D(N1408), .QN(n354) );
  TLATX1 \next_write_addr_reg[7]  ( .G(n403), .D(N1409), .QN(n353) );
  TLATX1 \next_write_addr_reg[8]  ( .G(n403), .D(N1410), .QN(n352) );
  TLATX1 \next_write_addr_reg[9]  ( .G(n403), .D(N1411), .QN(n351) );
  TLATX1 \next_write_addr_reg[10]  ( .G(n404), .D(N1412), .QN(n350) );
  TLATX1 \next_write_addr_reg[11]  ( .G(n404), .D(N1413), .QN(n349) );
  TLATX1 \next_write_addr_reg[12]  ( .G(n404), .D(N1414), .QN(n348) );
  TLATX1 \next_write_addr_reg[13]  ( .G(n404), .D(N1415), .QN(n347) );
  TLATX1 \next_write_addr_reg[14]  ( .G(n404), .D(N1416), .QN(n346) );
  TLATX1 \next_write_addr_reg[15]  ( .G(n404), .D(N1417), .QN(n345) );
  TLATX1 \next_write_addr_reg[16]  ( .G(n404), .D(N1418), .QN(n344) );
  TLATX1 \next_write_addr_reg[17]  ( .G(n404), .D(N1419), .QN(n343) );
  TLATX1 \next_write_addr_reg[18]  ( .G(n404), .D(N1420), .QN(n342) );
  TLATX1 \next_write_addr_reg[19]  ( .G(n404), .D(N1421), .QN(n341) );
  TLATX1 \next_over_reg[1]  ( .G(n404), .D(N1584), .QN(n340) );
  TLATX1 \next_over_reg[2]  ( .G(n404), .D(N1585), .QN(n339) );
  TLATX1 \next_read_addr_reg[0]  ( .G(n404), .D(N1382), .QN(n338) );
  TLATX1 \next_read_addr_reg[1]  ( .G(n405), .D(N1383), .QN(n337) );
  TLATX1 \next_read_addr_reg[2]  ( .G(n405), .D(N1384), .QN(n336) );
  TLATX1 \next_read_addr_reg[3]  ( .G(n405), .D(N1385), .QN(n335) );
  TLATX1 \next_read_addr_reg[4]  ( .G(n405), .D(N1386), .QN(n334) );
  TLATX1 \next_read_addr_reg[5]  ( .G(n405), .D(N1387), .QN(n333) );
  TLATX1 \next_read_addr_reg[6]  ( .G(n405), .D(N1388), .QN(n332) );
  TLATX1 \next_read_addr_reg[7]  ( .G(n405), .D(N1389), .QN(n331) );
  TLATX1 \next_read_addr_reg[8]  ( .G(n405), .D(N1390), .QN(n330) );
  TLATX1 \next_read_addr_reg[9]  ( .G(n405), .D(N1391), .QN(n329) );
  TLATX1 \next_read_addr_reg[10]  ( .G(n405), .D(N1392), .QN(n328) );
  TLATX1 \next_read_addr_reg[11]  ( .G(n405), .D(N1393), .QN(n327) );
  TLATX1 \next_read_addr_reg[12]  ( .G(n405), .D(N1394), .QN(n326) );
  TLATX1 \next_read_addr_reg[13]  ( .G(n405), .D(N1395), .QN(n325) );
  TLATX1 \next_read_addr_reg[14]  ( .G(n406), .D(N1396), .QN(n324) );
  TLATX1 \next_read_addr_reg[15]  ( .G(n406), .D(N1397), .QN(n323) );
  TLATX1 \next_read_addr_reg[16]  ( .G(n406), .D(N1398), .QN(n322) );
  TLATX1 \next_read_addr_reg[17]  ( .G(n406), .D(N1399), .QN(n321) );
  TLATX1 \next_read_addr_reg[18]  ( .G(n406), .D(N1400), .QN(n320) );
  TLATX1 \next_read_addr_reg[19]  ( .G(n406), .D(N1401), .QN(n319) );
  TLATX1 \next_counter_reg[5]  ( .G(n406), .D(n465), .QN(n318) );
  TLATX1 \next_counter_reg[4]  ( .G(n406), .D(N1556), .QN(n317) );
  TLATX1 \next_counter_reg[3]  ( .G(n406), .D(N1555), .QN(n316) );
  TLATX1 \next_counter_reg[2]  ( .G(n406), .D(N1554), .QN(n315) );
  TLATX1 \next_counter_reg[1]  ( .G(n406), .D(N1553), .QN(n314) );
  TLATX1 \next_ans_reg[0]  ( .G(n406), .D(N1558), .QN(n313) );
  TLATX1 \next_ans_reg[1]  ( .G(n407), .D(N1559), .QN(n312) );
  TLATX1 \next_ans_reg[2]  ( .G(n407), .D(N1560), .QN(n311) );
  TLATX1 \next_ans_reg[3]  ( .G(n407), .D(N1561), .QN(n310) );
  TLATX1 \next_ans_reg[4]  ( .G(n407), .D(N1562), .QN(n309) );
  TLATX1 \next_ans_reg[5]  ( .G(n407), .D(N1563), .QN(n308) );
  TLATX1 \next_ans_reg[6]  ( .G(n407), .D(N1564), .QN(n307) );
  TLATX1 \next_ans_reg[7]  ( .G(n407), .D(N1565), .QN(n306) );
  TLATX1 \next_m1_reg[0]  ( .G(n407), .D(N1231), .QN(n305) );
  TLATX1 \next_m2_reg[0]  ( .G(n407), .D(N1247), .QN(n304) );
  TLATX1 \next_m3_reg[0]  ( .G(n407), .D(N1263), .QN(n303) );
  TLATX1 \next_m4_reg[0]  ( .G(n407), .D(N1279), .QN(n302) );
  TLATX1 \next_m5_reg[0]  ( .G(n407), .D(N1295), .QN(n301) );
  TLATX1 \next_ans_reg[8]  ( .G(n407), .D(N1566), .QN(n300) );
  TLATX1 \next_m1_reg[1]  ( .G(n408), .D(N1232), .QN(n299) );
  TLATX1 \next_m2_reg[1]  ( .G(n408), .D(N1248), .QN(n298) );
  TLATX1 \next_m3_reg[1]  ( .G(n408), .D(N1264), .QN(n297) );
  TLATX1 \next_m4_reg[1]  ( .G(n408), .D(N1280), .QN(n296) );
  TLATX1 \next_m5_reg[1]  ( .G(n408), .D(N1296), .QN(n295) );
  TLATX1 \next_ans_reg[9]  ( .G(n408), .D(N1567), .QN(n294) );
  TLATX1 \next_m1_reg[2]  ( .G(n408), .D(N1233), .QN(n293) );
  TLATX1 \next_m2_reg[2]  ( .G(n408), .D(N1249), .QN(n292) );
  TLATX1 \next_m3_reg[2]  ( .G(n408), .D(N1265), .QN(n291) );
  TLATX1 \next_m4_reg[2]  ( .G(n408), .D(N1281), .QN(n290) );
  TLATX1 \next_m5_reg[2]  ( .G(n408), .D(N1297), .QN(n289) );
  TLATX1 \next_ans_reg[10]  ( .G(n408), .D(N1568), .QN(n288) );
  TLATX1 \next_m1_reg[3]  ( .G(n408), .D(N1234), .QN(n287) );
  TLATX1 \next_m2_reg[3]  ( .G(n409), .D(N1250), .QN(n286) );
  TLATX1 \next_m3_reg[3]  ( .G(n409), .D(N1266), .QN(n285) );
  TLATX1 \next_m4_reg[3]  ( .G(n409), .D(N1282), .QN(n284) );
  TLATX1 \next_m5_reg[3]  ( .G(n409), .D(N1298), .QN(n283) );
  TLATX1 \next_ans_reg[11]  ( .G(n409), .D(N1569), .QN(n282) );
  TLATX1 \next_m1_reg[4]  ( .G(n409), .D(N1235), .QN(n281) );
  TLATX1 \next_m2_reg[4]  ( .G(n409), .D(N1251), .QN(n280) );
  TLATX1 \next_m3_reg[4]  ( .G(n409), .D(N1267), .QN(n279) );
  TLATX1 \next_m4_reg[4]  ( .G(n409), .D(N1283), .QN(n278) );
  TLATX1 \next_m5_reg[4]  ( .G(n409), .D(N1299), .QN(n277) );
  TLATX1 \next_ans_reg[12]  ( .G(n409), .D(N1570), .QN(n276) );
  TLATX1 \next_m1_reg[5]  ( .G(n409), .D(N1236), .QN(n275) );
  TLATX1 \next_m2_reg[5]  ( .G(n409), .D(N1252), .QN(n274) );
  TLATX1 \next_m3_reg[5]  ( .G(n410), .D(N1268), .QN(n273) );
  TLATX1 \next_m4_reg[5]  ( .G(n410), .D(N1284), .QN(n272) );
  TLATX1 \next_m5_reg[5]  ( .G(n410), .D(N1300), .QN(n271) );
  TLATX1 \next_ans_reg[13]  ( .G(n410), .D(N1571), .QN(n270) );
  TLATX1 \next_m1_reg[6]  ( .G(n410), .D(N1237), .QN(n269) );
  TLATX1 \next_m2_reg[6]  ( .G(n410), .D(N1253), .QN(n268) );
  TLATX1 \next_m3_reg[6]  ( .G(n410), .D(N1269), .QN(n267) );
  TLATX1 \next_m4_reg[6]  ( .G(n410), .D(N1285), .QN(n266) );
  TLATX1 \next_m5_reg[6]  ( .G(n410), .D(N1301), .QN(n265) );
  TLATX1 \next_ans_reg[14]  ( .G(n410), .D(N1572), .QN(n264) );
  TLATX1 \next_m1_reg[7]  ( .G(n410), .D(N1238), .QN(n263) );
  TLATX1 \next_m2_reg[7]  ( .G(n410), .D(N1254), .QN(n262) );
  TLATX1 \next_m3_reg[7]  ( .G(n410), .D(N1270), .QN(n261) );
  TLATX1 \next_m4_reg[7]  ( .G(n411), .D(N1286), .QN(n260) );
  TLATX1 \next_m5_reg[7]  ( .G(n411), .D(N1302), .QN(n259) );
  TLATX1 \next_ans_reg[15]  ( .G(n411), .D(N1573), .QN(n258) );
  TLATX1 \next_m1_reg[8]  ( .G(n411), .D(N1239), .QN(n257) );
  TLATX1 \next_m2_reg[8]  ( .G(n411), .D(N1255), .QN(n256) );
  TLATX1 \next_m3_reg[8]  ( .G(n411), .D(N1271), .QN(n255) );
  TLATX1 \next_m4_reg[8]  ( .G(n411), .D(N1287), .QN(n254) );
  TLATX1 \next_m5_reg[8]  ( .G(n411), .D(N1303), .QN(n253) );
  TLATX1 \next_ans_reg[16]  ( .G(n411), .D(N1574), .QN(n252) );
  TLATX1 \next_m1_reg[9]  ( .G(n411), .D(N1240), .QN(n251) );
  TLATX1 \next_m2_reg[9]  ( .G(n411), .D(N1256), .QN(n250) );
  TLATX1 \next_m3_reg[9]  ( .G(n411), .D(N1272), .QN(n249) );
  TLATX1 \next_m4_reg[9]  ( .G(n411), .D(N1288), .QN(n248) );
  TLATX1 \next_m5_reg[9]  ( .G(n412), .D(N1304), .QN(n247) );
  TLATX1 \next_ans_reg[17]  ( .G(n412), .D(N1575), .QN(n246) );
  TLATX1 \next_m1_reg[10]  ( .G(n412), .D(N1241), .QN(n245) );
  TLATX1 \next_m2_reg[10]  ( .G(n412), .D(N1257), .QN(n244) );
  TLATX1 \next_m3_reg[10]  ( .G(n412), .D(N1273), .QN(n243) );
  TLATX1 \next_m4_reg[10]  ( .G(n412), .D(N1289), .QN(n242) );
  TLATX1 \next_m5_reg[10]  ( .G(n412), .D(N1305), .QN(n241) );
  TLATX1 \next_ans_reg[18]  ( .G(n412), .D(N1576), .QN(n240) );
  TLATX1 \next_m1_reg[11]  ( .G(n412), .D(N1242), .QN(n239) );
  TLATX1 \next_m2_reg[11]  ( .G(n412), .D(N1258), .QN(n238) );
  TLATX1 \next_m3_reg[11]  ( .G(n412), .D(N1274), .QN(n237) );
  TLATX1 \next_m4_reg[11]  ( .G(n412), .D(N1290), .QN(n236) );
  TLATX1 \next_m5_reg[11]  ( .G(n412), .D(N1306), .QN(n235) );
  TLATX1 \next_ans_reg[19]  ( .G(n413), .D(N1577), .QN(n234) );
  TLATX1 \next_m1_reg[12]  ( .G(n413), .D(N1243), .QN(n233) );
  TLATX1 \next_m2_reg[12]  ( .G(n413), .D(N1259), .QN(n232) );
  TLATX1 \next_m3_reg[12]  ( .G(n413), .D(N1275), .QN(n231) );
  TLATX1 \next_m4_reg[12]  ( .G(n413), .D(N1291), .QN(n230) );
  TLATX1 \next_m5_reg[12]  ( .G(n413), .D(N1307), .QN(n229) );
  TLATX1 \next_ans_reg[20]  ( .G(n413), .D(N1578), .QN(n228) );
  TLATX1 \next_m1_reg[13]  ( .G(n413), .D(N1244), .QN(n227) );
  TLATX1 \next_m2_reg[13]  ( .G(n413), .D(N1260), .QN(n226) );
  TLATX1 \next_m3_reg[13]  ( .G(n413), .D(N1276), .QN(n225) );
  TLATX1 \next_m4_reg[13]  ( .G(n413), .D(N1292), .QN(n224) );
  TLATX1 \next_m5_reg[13]  ( .G(n413), .D(N1308), .QN(n223) );
  TLATX1 \next_ans_reg[21]  ( .G(n413), .D(N1579), .QN(n222) );
  TLATX1 \next_m1_reg[14]  ( .G(n414), .D(N1245), .QN(n221) );
  TLATX1 \next_m2_reg[14]  ( .G(n414), .D(N1261), .QN(n220) );
  TLATX1 \next_m3_reg[14]  ( .G(n414), .D(N1277), .QN(n219) );
  TLATX1 \next_m4_reg[14]  ( .G(n414), .D(N1293), .QN(n218) );
  TLATX1 \next_m5_reg[14]  ( .G(n414), .D(N1309), .QN(n217) );
  TLATX1 \next_ans_reg[22]  ( .G(n414), .D(N1580), .QN(n216) );
  TLATX1 \next_ans_reg[23]  ( .G(n414), .D(N1581), .QN(n215) );
  TLATX1 \next_ans_reg[24]  ( .G(n414), .D(N1582), .QN(n214) );
  TLATX1 \next_m1_reg[15]  ( .G(n414), .D(N1246), .QN(n213) );
  TLATX1 \next_m2_reg[15]  ( .G(n414), .D(N1262), .QN(n212) );
  TLATX1 \next_m3_reg[15]  ( .G(n414), .D(N1278), .QN(n211) );
  TLATX1 \next_m4_reg[15]  ( .G(n414), .D(N1294), .QN(n210) );
  TLATX1 \next_m5_reg[15]  ( .G(n414), .D(N1310), .QN(n209) );
  DFFQX1 \write_addr_reg[19]  ( .D(N1173), .CK(clk), .Q(WAddr[19]) );
  DFFQX1 \read_addr_reg[19]  ( .D(N1153), .CK(clk), .Q(RAddr[19]) );
  DFFQX1 \read_addr_reg[1]  ( .D(N1135), .CK(clk), .Q(RAddr[1]) );
  DFFQX1 \read_addr_reg[6]  ( .D(N1140), .CK(clk), .Q(RAddr[6]) );
  DFFQX1 \read_addr_reg[10]  ( .D(N1144), .CK(clk), .Q(RAddr[10]) );
  DFFQX1 \read_addr_reg[15]  ( .D(N1149), .CK(clk), .Q(RAddr[15]) );
  TLATX1 \next_counter_reg[0]  ( .G(n406), .D(N1552), .Q(\next_counter[0] ) );
  DFFQX1 \ans_reg[1]  ( .D(N1181), .CK(clk), .Q(ans[1]) );
  DFFQX1 \ans_reg[2]  ( .D(N1182), .CK(clk), .Q(ans[2]) );
  DFFQX1 \ans_reg[3]  ( .D(N1183), .CK(clk), .Q(ans[3]) );
  DFFQX1 \ans_reg[4]  ( .D(N1184), .CK(clk), .Q(ans[4]) );
  DFFQX1 \ans_reg[5]  ( .D(N1185), .CK(clk), .Q(ans[5]) );
  DFFQX1 \ans_reg[6]  ( .D(N1186), .CK(clk), .Q(ans[6]) );
  DFFQX1 \ans_reg[22]  ( .D(N1202), .CK(clk), .Q(ans_22) );
  DFFQX1 \ans_reg[23]  ( .D(N1203), .CK(clk), .Q(ans_23) );
  DFFQX1 \read_addr_reg[5]  ( .D(N1139), .CK(clk), .Q(RAddr[5]) );
  DFFQX1 \read_addr_reg[14]  ( .D(N1148), .CK(clk), .Q(RAddr[14]) );
  DFFQX1 \read_addr_reg[0]  ( .D(N1134), .CK(clk), .Q(RAddr[0]) );
  DFFQX1 \ans_reg[7]  ( .D(N1187), .CK(clk), .Q(Yn[0]) );
  DFFQX1 \ans_reg[8]  ( .D(N1188), .CK(clk), .Q(Yn[1]) );
  DFFQX1 \ans_reg[9]  ( .D(N1189), .CK(clk), .Q(Yn[2]) );
  DFFQX1 \ans_reg[10]  ( .D(N1190), .CK(clk), .Q(Yn[3]) );
  DFFQX1 \ans_reg[11]  ( .D(N1191), .CK(clk), .Q(Yn[4]) );
  DFFQX1 \ans_reg[12]  ( .D(N1192), .CK(clk), .Q(Yn[5]) );
  DFFQX1 \ans_reg[13]  ( .D(N1193), .CK(clk), .Q(Yn[6]) );
  DFFQX1 \ans_reg[14]  ( .D(N1194), .CK(clk), .Q(Yn[7]) );
  DFFQX1 \ans_reg[15]  ( .D(N1195), .CK(clk), .Q(Yn[8]) );
  DFFQX1 \ans_reg[16]  ( .D(N1196), .CK(clk), .Q(Yn[9]) );
  DFFQX1 \ans_reg[17]  ( .D(N1197), .CK(clk), .Q(Yn[10]) );
  DFFQX1 \ans_reg[18]  ( .D(N1198), .CK(clk), .Q(Yn[11]) );
  DFFQX1 \ans_reg[19]  ( .D(N1199), .CK(clk), .Q(Yn[12]) );
  DFFQX1 \ans_reg[20]  ( .D(N1200), .CK(clk), .Q(Yn[13]) );
  DFFQX1 \ans_reg[21]  ( .D(N1201), .CK(clk), .Q(Yn[14]) );
  DFFQX1 \ans_reg[24]  ( .D(N1204), .CK(clk), .Q(Yn[15]) );
  DFFQX1 \counter_reg[0]  ( .D(N1174), .CK(clk), .Q(counter[0]) );
  DFFQX1 \ans_reg[0]  ( .D(N1180), .CK(clk), .Q(ans[0]) );
  DFFQX1 \counter_reg[5]  ( .D(N1179), .CK(clk), .Q(counter[5]) );
  DFFQX1 \write_addr_reg[6]  ( .D(N1160), .CK(clk), .Q(WAddr[6]) );
  DFFQX1 \write_addr_reg[14]  ( .D(N1168), .CK(clk), .Q(WAddr[14]) );
  DFFQX1 \write_addr_reg[5]  ( .D(N1159), .CK(clk), .Q(WAddr[5]) );
  DFFQX1 \write_addr_reg[13]  ( .D(N1167), .CK(clk), .Q(WAddr[13]) );
  DFFQX1 \read_addr_reg[2]  ( .D(N1136), .CK(clk), .Q(RAddr[2]) );
  DFFQX1 \read_addr_reg[7]  ( .D(N1141), .CK(clk), .Q(RAddr[7]) );
  DFFQX1 \read_addr_reg[11]  ( .D(N1145), .CK(clk), .Q(RAddr[11]) );
  DFFQX1 \read_addr_reg[16]  ( .D(N1150), .CK(clk), .Q(RAddr[16]) );
  DFFQX1 \read_addr_reg[4]  ( .D(N1138), .CK(clk), .Q(RAddr[4]) );
  DFFQX1 \read_addr_reg[9]  ( .D(N1143), .CK(clk), .Q(RAddr[9]) );
  DFFQX1 \read_addr_reg[13]  ( .D(N1147), .CK(clk), .Q(RAddr[13]) );
  DFFQX1 \read_addr_reg[18]  ( .D(N1152), .CK(clk), .Q(RAddr[18]) );
  DFFQX1 \read_addr_reg[3]  ( .D(N1137), .CK(clk), .Q(RAddr[3]) );
  DFFQX1 \read_addr_reg[8]  ( .D(N1142), .CK(clk), .Q(RAddr[8]) );
  DFFQX1 \read_addr_reg[12]  ( .D(N1146), .CK(clk), .Q(RAddr[12]) );
  DFFQX1 \read_addr_reg[17]  ( .D(N1151), .CK(clk), .Q(RAddr[17]) );
  DFFQX1 \write_addr_reg[8]  ( .D(N1162), .CK(clk), .Q(WAddr[8]) );
  DFFQX1 \write_addr_reg[16]  ( .D(N1170), .CK(clk), .Q(WAddr[16]) );
  DFFQX1 \write_addr_reg[18]  ( .D(N1172), .CK(clk), .Q(WAddr[18]) );
  DFFQX1 \write_addr_reg[3]  ( .D(N1157), .CK(clk), .Q(WAddr[3]) );
  DFFQX1 \write_addr_reg[7]  ( .D(N1161), .CK(clk), .Q(WAddr[7]) );
  DFFQX1 \write_addr_reg[11]  ( .D(N1165), .CK(clk), .Q(WAddr[11]) );
  DFFQX1 \write_addr_reg[15]  ( .D(N1169), .CK(clk), .Q(WAddr[15]) );
  DFFQX1 \write_addr_reg[9]  ( .D(N1163), .CK(clk), .Q(WAddr[9]) );
  DFFQX1 \write_addr_reg[10]  ( .D(N1164), .CK(clk), .Q(WAddr[10]) );
  DFFQX1 \write_addr_reg[17]  ( .D(N1171), .CK(clk), .Q(WAddr[17]) );
  DFFQX1 \write_addr_reg[4]  ( .D(N1158), .CK(clk), .Q(WAddr[4]) );
  DFFQX1 \write_addr_reg[12]  ( .D(N1166), .CK(clk), .Q(WAddr[12]) );
  DFFQX1 \write_addr_reg[2]  ( .D(N1156), .CK(clk), .Q(WAddr[2]) );
  DFFQX1 \m4_reg[6]  ( .D(N1108), .CK(clk), .Q(\Wb4[1] ) );
  DFFQX1 \m4_reg[7]  ( .D(N1109), .CK(clk), .Q(\Wb4[2] ) );
  DFFQX1 \m4_reg[8]  ( .D(N1110), .CK(clk), .Q(\Wb4[3] ) );
  DFFQX1 \m4_reg[9]  ( .D(N1111), .CK(clk), .Q(\Wb4[4] ) );
  DFFQX1 \m4_reg[10]  ( .D(N1112), .CK(clk), .Q(\Wb4[5] ) );
  DFFQX1 \m4_reg[11]  ( .D(N1113), .CK(clk), .Q(\Wb4[6] ) );
  DFFQX1 \m4_reg[12]  ( .D(N1114), .CK(clk), .Q(extended_m4[19]) );
  DFFQX1 \m4_reg[13]  ( .D(N1115), .CK(clk), .Q(extended_m4[20]) );
  DFFQX1 \m4_reg[14]  ( .D(N1116), .CK(clk), .Q(extended_m4[21]) );
  DFFQX1 \m2_reg[15]  ( .D(N1085), .CK(clk), .Q(extended_m2_24) );
  DFFQX1 \last_reg[1]  ( .D(N1209), .CK(clk), .Q(last[1]) );
  DFFQX1 \m2_reg[1]  ( .D(N1071), .CK(clk), .Q(N952) );
  DFFQX1 \last_reg[0]  ( .D(N1208), .CK(clk), .Q(last[0]) );
  DFFQX1 \over_reg[2]  ( .D(N1207), .CK(clk), .Q(over[2]) );
  DFFQX1 \over_reg[1]  ( .D(N1206), .CK(clk), .Q(over[1]) );
  DFFQX1 \m5_reg[0]  ( .D(N1118), .CK(clk), .Q(extended_m5[7]) );
  DFFQX1 \m5_reg[3]  ( .D(N1121), .CK(clk), .Q(extended_m5[10]) );
  DFFQX1 \m3_reg[15]  ( .D(N1101), .CK(clk), .Q(extended_m3_24) );
  DFFQX1 \m4_reg[15]  ( .D(N1117), .CK(clk), .Q(extended_m4_24) );
  DFFQX1 \write_addr_reg[1]  ( .D(N1155), .CK(clk), .Q(WAddr[1]) );
  DFFQX1 \m5_reg[2]  ( .D(N1120), .CK(clk), .Q(extended_m5[9]) );
  DFFQX1 \m2_reg[0]  ( .D(N1070), .CK(clk), .Q(N951) );
  DFFQX1 \counter_reg[4]  ( .D(N1178), .CK(clk), .Q(counter[4]) );
  DFFQX1 \counter_reg[1]  ( .D(N1175), .CK(clk), .Q(counter[1]) );
  DFFQX1 \m1_reg[0]  ( .D(N1054), .CK(clk), .Q(extended_m1[7]) );
  DFFQX1 \over_reg[0]  ( .D(N1205), .CK(clk), .Q(over[0]) );
  DFFQX1 \state_reg[1]  ( .D(N1053), .CK(clk), .Q(WEN) );
  DFFQX1 \m5_reg[5]  ( .D(N1123), .CK(clk), .Q(extended_m5[12]) );
  DFFQX1 \m5_reg[1]  ( .D(N1119), .CK(clk), .Q(extended_m5[8]) );
  DFFQX1 \state_reg[0]  ( .D(N1052), .CK(clk), .Q(load) );
  DFFQX1 \m1_reg[1]  ( .D(N1055), .CK(clk), .Q(extended_m1[8]) );
  DFFQX1 \m1_reg[2]  ( .D(N1056), .CK(clk), .Q(extended_m1[9]) );
  DFFQX1 \m1_reg[3]  ( .D(N1057), .CK(clk), .Q(extended_m1[10]) );
  DFFQX1 \m1_reg[4]  ( .D(N1058), .CK(clk), .Q(extended_m1[11]) );
  DFFQX1 \m1_reg[5]  ( .D(N1059), .CK(clk), .Q(extended_m1[12]) );
  DFFQX1 \write_addr_reg[0]  ( .D(N1154), .CK(clk), .Q(WAddr[0]) );
  DFFQX1 \m2_reg[2]  ( .D(N1072), .CK(clk), .Q(N953) );
  DFFQX1 \m1_reg[15]  ( .D(N1069), .CK(clk), .Q(extended_m1_24) );
  DFFQX1 \m5_reg[15]  ( .D(N1133), .CK(clk), .Q(extended_m5_24) );
  DFFQX1 \m5_reg[4]  ( .D(N1122), .CK(clk), .Q(extended_m5[11]) );
  DFFQX1 \m2_reg[4]  ( .D(N1074), .CK(clk), .Q(N955) );
  DFFQX1 \m2_reg[9]  ( .D(N1079), .CK(clk), .Q(extended_m2[16]) );
  DFFQX1 \m4_reg[0]  ( .D(N1102), .CK(clk), .Q(extended_m4[7]) );
  DFFQX1 \m2_reg[3]  ( .D(N1073), .CK(clk), .Q(N954) );
  DFFQX1 \m5_reg[6]  ( .D(N1124), .CK(clk), .Q(extended_m5[13]) );
  DFFQX1 \m4_reg[2]  ( .D(N1104), .CK(clk), .Q(extended_m4[9]) );
  DFFQX1 \m1_reg[14]  ( .D(N1068), .CK(clk), .Q(extended_m1[21]) );
  DFFQX1 \m1_reg[6]  ( .D(N1060), .CK(clk), .Q(\Wb0[0] ) );
  DFFQX1 \m2_reg[6]  ( .D(N1076), .CK(clk), .Q(N957) );
  DFFQX1 \m2_reg[7]  ( .D(N1077), .CK(clk), .Q(N958) );
  DFFQX1 \m2_reg[8]  ( .D(N1078), .CK(clk), .Q(N959) );
  DFFQX1 \m1_reg[9]  ( .D(N1063), .CK(clk), .Q(\Wb0[3] ) );
  DFFQX1 \m1_reg[10]  ( .D(N1064), .CK(clk), .Q(\Wb0[4] ) );
  DFFQX1 \m1_reg[11]  ( .D(N1065), .CK(clk), .Q(\Wb0[5] ) );
  DFFQX1 \m1_reg[12]  ( .D(N1066), .CK(clk), .Q(\Wb0[6] ) );
  DFFQX1 \m1_reg[13]  ( .D(N1067), .CK(clk), .Q(\Wb0[7] ) );
  DFFQX1 \m2_reg[10]  ( .D(N1080), .CK(clk), .Q(extended_m2[17]) );
  DFFQX1 \m2_reg[11]  ( .D(N1081), .CK(clk), .Q(extended_m2[18]) );
  DFFQX1 \m2_reg[12]  ( .D(N1082), .CK(clk), .Q(extended_m2[19]) );
  DFFQX1 \m2_reg[13]  ( .D(N1083), .CK(clk), .Q(extended_m2[20]) );
  DFFQX1 \m2_reg[14]  ( .D(N1084), .CK(clk), .Q(extended_m2[21]) );
  DFFQX1 \m1_reg[7]  ( .D(N1061), .CK(clk), .Q(\Wb0[1] ) );
  DFFQX1 \m5_reg[8]  ( .D(N1126), .CK(clk), .Q(extended_m5[15]) );
  DFFQX1 \m5_reg[9]  ( .D(N1127), .CK(clk), .Q(extended_m5[16]) );
  DFFQX1 \m5_reg[10]  ( .D(N1128), .CK(clk), .Q(extended_m5[17]) );
  DFFQX1 \m5_reg[11]  ( .D(N1129), .CK(clk), .Q(extended_m5[18]) );
  DFFQX1 \m5_reg[12]  ( .D(N1130), .CK(clk), .Q(extended_m5[19]) );
  DFFQX1 \m5_reg[13]  ( .D(N1131), .CK(clk), .Q(extended_m5[20]) );
  DFFQX1 \m5_reg[14]  ( .D(N1132), .CK(clk), .Q(extended_m5[21]) );
  DFFQX1 \m1_reg[8]  ( .D(N1062), .CK(clk), .Q(\Wb0[2] ) );
  DFFQX1 \m5_reg[7]  ( .D(N1125), .CK(clk), .Q(extended_m5[14]) );
  DFFQX1 \m3_reg[7]  ( .D(N1093), .CK(clk), .Q(extended_m3[14]) );
  DFFQX1 \m3_reg[0]  ( .D(N1086), .CK(clk), .Q(\Wb3[1] ) );
  DFFQX1 \m3_reg[4]  ( .D(N1090), .CK(clk), .Q(\Wb3[5] ) );
  DFFQX1 \m3_reg[5]  ( .D(N1091), .CK(clk), .Q(\Wb3[6] ) );
  DFFQX1 \m3_reg[6]  ( .D(N1092), .CK(clk), .Q(\Wb3[7] ) );
  DFFQX1 \m4_reg[1]  ( .D(N1103), .CK(clk), .Q(extended_m4[8]) );
  DFFQX1 \m3_reg[3]  ( .D(N1089), .CK(clk), .Q(\Wb3[4] ) );
  DFFQX1 \m2_reg[5]  ( .D(N1075), .CK(clk), .Q(N956) );
  DFFQX1 \m3_reg[2]  ( .D(N1088), .CK(clk), .Q(\Wb3[3] ) );
  DFFQX1 \m3_reg[8]  ( .D(N1094), .CK(clk), .Q(extended_m3[15]) );
  DFFQX1 \m3_reg[9]  ( .D(N1095), .CK(clk), .Q(extended_m3[16]) );
  DFFQX1 \m3_reg[10]  ( .D(N1096), .CK(clk), .Q(extended_m3[17]) );
  DFFQX1 \m3_reg[11]  ( .D(N1097), .CK(clk), .Q(extended_m3[18]) );
  DFFQX1 \m3_reg[12]  ( .D(N1098), .CK(clk), .Q(extended_m3[19]) );
  DFFQX1 \m3_reg[13]  ( .D(N1099), .CK(clk), .Q(extended_m3[20]) );
  DFFQX1 \m3_reg[14]  ( .D(N1100), .CK(clk), .Q(extended_m3[21]) );
  DFFQX1 \m4_reg[3]  ( .D(N1105), .CK(clk), .Q(extended_m4[10]) );
  DFFQX1 \m3_reg[1]  ( .D(N1087), .CK(clk), .Q(\Wb3[2] ) );
  DFFQX1 \m4_reg[4]  ( .D(N1106), .CK(clk), .Q(extended_m4[11]) );
  DFFQX1 \m4_reg[5]  ( .D(N1107), .CK(clk), .Q(\Wb4[0] ) );
  AND4X1 U410 ( .A(n185), .B(n186), .C(n187), .D(n188), .Y(n208) );
  CLKINVX1 U411 ( .A(n366), .Y(n369) );
  CLKINVX1 U412 ( .A(n366), .Y(n370) );
  CLKINVX1 U413 ( .A(n366), .Y(n367) );
  CLKINVX1 U414 ( .A(n195), .Y(n464) );
  CLKINVX1 U415 ( .A(n366), .Y(n368) );
  CLKBUFX3 U416 ( .A(extended_m5_24), .Y(n424) );
  NOR2X1 U417 ( .A(n465), .B(WEN), .Y(n197) );
  CLKBUFX3 U418 ( .A(extended_m5_24), .Y(n421) );
  ADDFXL U419 ( .A(DIn[9]), .B(DIn[10]), .CI(\r525/carry[2] ), .CO(
        \r525/carry[3] ), .S(N161) );
  ADDFXL U420 ( .A(DIn[10]), .B(DIn[11]), .CI(\r525/carry[3] ), .CO(
        \r525/carry[4] ), .S(N162) );
  ADDFXL U421 ( .A(DIn[11]), .B(DIn[12]), .CI(\r525/carry[4] ), .CO(
        \r525/carry[5] ), .S(N163) );
  ADDFXL U422 ( .A(DIn[12]), .B(DIn[13]), .CI(\r525/carry[5] ), .CO(
        \r525/carry[6] ), .S(N164) );
  ADDFXL U423 ( .A(DIn[13]), .B(DIn[14]), .CI(\r525/carry[6] ), .CO(
        \r525/carry[7] ), .S(N165) );
  ADDFXL U424 ( .A(DIn[14]), .B(N260), .CI(\r525/carry[7] ), .CO(N167), .S(
        N166) );
  CLKBUFX3 U425 ( .A(extended_m1_24), .Y(n432) );
  CLKBUFX3 U426 ( .A(extended_m5_24), .Y(n423) );
  CLKINVX1 U427 ( .A(extended_m4_24), .Y(n366) );
  CLKBUFX3 U428 ( .A(extended_m5_24), .Y(n422) );
  ADDFXL U429 ( .A(DIn[8]), .B(DIn[9]), .CI(\r525/carry[1] ), .CO(
        \r525/carry[2] ), .S(N160) );
  CLKBUFX3 U430 ( .A(extended_m3_24), .Y(n426) );
  ADDFXL U431 ( .A(n370), .B(n367), .CI(\Wb4[22] ), .CO(\Wb4[23] ) );
  ADDFXL U432 ( .A(n369), .B(n367), .CI(\add_22_root_add_167_2/carry[21] ), 
        .CO(\add_22_root_add_167_2/carry[22] ) );
  CLKINVX1 U433 ( .A(n402), .Y(n401) );
  CLKINVX1 U434 ( .A(n402), .Y(n400) );
  AO22X1 U435 ( .A0(N1453), .A1(n419), .B0(N1478), .B1(n204), .Y(N1558) );
  CLKBUFX3 U436 ( .A(n464), .Y(n398) );
  CLKBUFX3 U437 ( .A(n464), .Y(n395) );
  CLKBUFX3 U438 ( .A(n464), .Y(n396) );
  CLKBUFX3 U439 ( .A(n464), .Y(n397) );
  CLKBUFX3 U440 ( .A(n464), .Y(n394) );
  CLKBUFX3 U441 ( .A(N1221), .Y(n419) );
  ADDFXL U442 ( .A(n370), .B(n367), .CI(\Wb4[23] ), .CO(\Wb4[24] ) );
  CLKBUFX3 U443 ( .A(n464), .Y(n399) );
  CLKBUFX3 U444 ( .A(N1221), .Y(n420) );
  CLKBUFX3 U445 ( .A(n415), .Y(n414) );
  CLKBUFX3 U446 ( .A(n415), .Y(n413) );
  CLKBUFX3 U447 ( .A(n415), .Y(n412) );
  CLKBUFX3 U448 ( .A(n416), .Y(n411) );
  CLKBUFX3 U449 ( .A(n416), .Y(n410) );
  CLKBUFX3 U450 ( .A(n416), .Y(n409) );
  CLKBUFX3 U451 ( .A(n417), .Y(n408) );
  CLKBUFX3 U452 ( .A(n417), .Y(n407) );
  CLKBUFX3 U453 ( .A(n417), .Y(n406) );
  CLKBUFX3 U454 ( .A(n418), .Y(n405) );
  CLKBUFX3 U455 ( .A(n418), .Y(n404) );
  CLKBUFX3 U456 ( .A(n418), .Y(n403) );
  NOR2X1 U457 ( .A(n402), .B(n206), .Y(n204) );
  NOR2BX1 U458 ( .AN(n206), .B(n402), .Y(N1221) );
  OAI2BB1X1 U459 ( .A0N(Wa3_24), .A1N(n161), .B0(n170), .Y(pa_weight[24]) );
  AOI22X1 U460 ( .A0(Wa5_24), .A1(n390), .B0(Wa4_24), .B1(n393), .Y(n170) );
  ADDFXL U461 ( .A(n372), .B(n367), .CI(\add_22_root_add_167_2/carry[20] ), 
        .CO(\add_22_root_add_167_2/carry[21] ), .S(
        \add_22_root_add_167_2/SUM[20] ) );
  ADDFXL U462 ( .A(n369), .B(n372), .CI(
        \add_17_root_sub_0_root_add_167_2/carry[21] ), .CO(\Wb4[22] ), .S(
        \Wb4[21] ) );
  CLKINVX1 U463 ( .A(N1536), .Y(n468) );
  CLKINVX1 U464 ( .A(n197), .Y(n402) );
  ADDFXL U465 ( .A(n427), .B(n426), .CI(N1021), .CO(N1022) );
  ADDFXL U466 ( .A(n427), .B(n426), .CI(N1022), .CO(N1023) );
  ADDFXL U467 ( .A(n428), .B(n426), .CI(N1023), .CO(N1024) );
  ADDFXL U468 ( .A(n427), .B(n426), .CI(N1024), .CO(N1025) );
  AO22X1 U469 ( .A0(N1477), .A1(n420), .B0(N1502), .B1(n204), .Y(N1582) );
  AO22X1 U470 ( .A0(N1476), .A1(n420), .B0(N1501), .B1(n204), .Y(N1581) );
  AO22X1 U471 ( .A0(N1475), .A1(n420), .B0(N1500), .B1(n204), .Y(N1580) );
  AO22X1 U472 ( .A0(N1474), .A1(n420), .B0(N1499), .B1(n204), .Y(N1579) );
  AO22X1 U473 ( .A0(N1473), .A1(n420), .B0(N1498), .B1(n204), .Y(N1578) );
  AO22X1 U474 ( .A0(N1472), .A1(n420), .B0(N1497), .B1(n204), .Y(N1577) );
  AO22X1 U475 ( .A0(N1471), .A1(n420), .B0(N1496), .B1(n204), .Y(N1576) );
  AO22X1 U476 ( .A0(N1470), .A1(n419), .B0(N1495), .B1(n204), .Y(N1575) );
  AO22X1 U477 ( .A0(N1469), .A1(n419), .B0(N1494), .B1(n204), .Y(N1574) );
  AO22X1 U478 ( .A0(N1468), .A1(n419), .B0(N1493), .B1(n204), .Y(N1573) );
  AO22X1 U479 ( .A0(N1467), .A1(n419), .B0(N1492), .B1(n204), .Y(N1572) );
  AO22X1 U480 ( .A0(N1466), .A1(n419), .B0(N1491), .B1(n204), .Y(N1571) );
  AO22X1 U481 ( .A0(N1465), .A1(n419), .B0(N1490), .B1(n204), .Y(N1570) );
  AO22X1 U482 ( .A0(N1464), .A1(n419), .B0(N1489), .B1(n204), .Y(N1569) );
  AO22X1 U483 ( .A0(N1463), .A1(n419), .B0(N1488), .B1(n204), .Y(N1568) );
  AO22X1 U484 ( .A0(N1462), .A1(n419), .B0(N1487), .B1(n204), .Y(N1567) );
  AO22X1 U485 ( .A0(N1461), .A1(n419), .B0(N1486), .B1(n204), .Y(N1566) );
  AO22X1 U486 ( .A0(N1460), .A1(n419), .B0(N1485), .B1(n204), .Y(N1565) );
  AO22X1 U487 ( .A0(N1459), .A1(n419), .B0(N1484), .B1(n204), .Y(N1564) );
  AO22X1 U488 ( .A0(N1458), .A1(n419), .B0(N1483), .B1(n204), .Y(N1563) );
  AO22X1 U489 ( .A0(N1457), .A1(n419), .B0(N1482), .B1(n204), .Y(N1562) );
  AO22X1 U490 ( .A0(N1456), .A1(n419), .B0(N1481), .B1(n204), .Y(N1561) );
  AO22X1 U491 ( .A0(N1455), .A1(n419), .B0(N1480), .B1(n204), .Y(N1560) );
  AO22X1 U492 ( .A0(N1454), .A1(n419), .B0(N1479), .B1(n204), .Y(N1559) );
  AO22X1 U493 ( .A0(n400), .A1(n429), .B0(n398), .B1(n433), .Y(N1262) );
  AO22X1 U494 ( .A0(n396), .A1(n425), .B0(n424), .B1(n401), .Y(N1310) );
  AO22X1 U495 ( .A0(n395), .A1(n428), .B0(n400), .B1(n425), .Y(N1294) );
  AO22X1 U496 ( .A0(n394), .A1(n429), .B0(n401), .B1(n428), .Y(N1278) );
  ADDFXL U497 ( .A(n388), .B(n383), .CI(\add_22_root_add_167_2/carry[12] ), 
        .CO(\add_22_root_add_167_2/carry[13] ), .S(
        \add_22_root_add_167_2/SUM[12] ) );
  ADDFXL U498 ( .A(n386), .B(n381), .CI(\add_22_root_add_167_2/carry[13] ), 
        .CO(\add_22_root_add_167_2/carry[14] ), .S(
        \add_22_root_add_167_2/SUM[13] ) );
  ADDFXL U499 ( .A(n384), .B(n379), .CI(\add_22_root_add_167_2/carry[14] ), 
        .CO(\add_22_root_add_167_2/carry[15] ), .S(
        \add_22_root_add_167_2/SUM[14] ) );
  ADDFXL U500 ( .A(n382), .B(n377), .CI(\add_22_root_add_167_2/carry[15] ), 
        .CO(\add_22_root_add_167_2/carry[16] ), .S(
        \add_22_root_add_167_2/SUM[15] ) );
  ADDFXL U501 ( .A(n380), .B(n375), .CI(\add_22_root_add_167_2/carry[16] ), 
        .CO(\add_22_root_add_167_2/carry[17] ), .S(
        \add_22_root_add_167_2/SUM[16] ) );
  ADDFXL U502 ( .A(n369), .B(n388), .CI(
        \add_17_root_sub_0_root_add_167_2/carry[13] ), .CO(
        \add_17_root_sub_0_root_add_167_2/carry[14] ), .S(\Wb4[13] ) );
  ADDFXL U503 ( .A(n378), .B(n373), .CI(\add_22_root_add_167_2/carry[17] ), 
        .CO(\add_22_root_add_167_2/carry[18] ), .S(
        \add_22_root_add_167_2/SUM[17] ) );
  ADDFXL U504 ( .A(n369), .B(n386), .CI(
        \add_17_root_sub_0_root_add_167_2/carry[14] ), .CO(
        \add_17_root_sub_0_root_add_167_2/carry[15] ), .S(\Wb4[14] ) );
  ADDFXL U505 ( .A(n376), .B(n371), .CI(\add_22_root_add_167_2/carry[18] ), 
        .CO(\add_22_root_add_167_2/carry[19] ), .S(
        \add_22_root_add_167_2/SUM[18] ) );
  ADDFXL U506 ( .A(n370), .B(n384), .CI(
        \add_17_root_sub_0_root_add_167_2/carry[15] ), .CO(
        \add_17_root_sub_0_root_add_167_2/carry[16] ), .S(\Wb4[15] ) );
  ADDFXL U507 ( .A(n374), .B(extended_m4_24), .CI(
        \add_22_root_add_167_2/carry[19] ), .CO(
        \add_22_root_add_167_2/carry[20] ), .S(\add_22_root_add_167_2/SUM[19] ) );
  ADDFXL U508 ( .A(n369), .B(n382), .CI(
        \add_17_root_sub_0_root_add_167_2/carry[16] ), .CO(
        \add_17_root_sub_0_root_add_167_2/carry[17] ), .S(\Wb4[16] ) );
  ADDFXL U509 ( .A(n428), .B(n430), .CI(
        \add_26_root_sub_0_root_add_167_2/carry [20]), .CO(
        \add_26_root_sub_0_root_add_167_2/carry [21]), .S(\Wb2[20] ) );
  ADDFXL U510 ( .A(n370), .B(n380), .CI(
        \add_17_root_sub_0_root_add_167_2/carry[17] ), .CO(
        \add_17_root_sub_0_root_add_167_2/carry[18] ), .S(\Wb4[17] ) );
  ADDFXL U511 ( .A(n427), .B(n430), .CI(
        \add_26_root_sub_0_root_add_167_2/carry [21]), .CO(
        \add_26_root_sub_0_root_add_167_2/carry [22]), .S(\Wb2[21] ) );
  ADDFXL U512 ( .A(n427), .B(n430), .CI(
        \add_26_root_sub_0_root_add_167_2/carry [22]), .CO(
        \add_26_root_sub_0_root_add_167_2/carry [23]), .S(\Wb2[22] ) );
  ADDFXL U513 ( .A(n370), .B(n378), .CI(
        \add_17_root_sub_0_root_add_167_2/carry[18] ), .CO(
        \add_17_root_sub_0_root_add_167_2/carry[19] ), .S(\Wb4[18] ) );
  ADDFXL U514 ( .A(n428), .B(n430), .CI(
        \add_26_root_sub_0_root_add_167_2/carry [23]), .CO(
        \add_26_root_sub_0_root_add_167_2/carry [24]), .S(\Wb2[23] ) );
  ADDFXL U515 ( .A(n369), .B(n376), .CI(
        \add_17_root_sub_0_root_add_167_2/carry[19] ), .CO(
        \add_17_root_sub_0_root_add_167_2/carry[20] ), .S(\Wb4[19] ) );
  ADDFXL U516 ( .A(n369), .B(n374), .CI(
        \add_17_root_sub_0_root_add_167_2/carry[20] ), .CO(
        \add_17_root_sub_0_root_add_167_2/carry[21] ), .S(\Wb4[20] ) );
  CLKINVX1 U517 ( .A(n184), .Y(n462) );
  AOI222XL U518 ( .A0(Wa5[0]), .A1(n390), .B0(Wa3[0]), .B1(n391), .C0(Wa4[0]), 
        .C1(n392), .Y(n184) );
  CLKBUFX3 U519 ( .A(N1551), .Y(n415) );
  CLKBUFX3 U520 ( .A(N1551), .Y(n416) );
  CLKBUFX3 U521 ( .A(N1551), .Y(n417) );
  CLKBUFX3 U522 ( .A(N1551), .Y(n418) );
  ADDFXL U523 ( .A(n428), .B(n426), .CI(\Wb3[23] ), .CO(\Wb3[24] ) );
  ADDFXL U524 ( .A(n432), .B(n431), .CI(\Wb0[23] ), .CO(\Wb0[24] ) );
  XOR3X1 U525 ( .A(n428), .B(n430), .C(
        \add_26_root_sub_0_root_add_167_2/carry [24]), .Y(\Wb2[24] ) );
  NOR4X1 U526 ( .A(n192), .B(RAddr[11]), .C(RAddr[13]), .D(RAddr[12]), .Y(n185) );
  OR2X1 U527 ( .A(RAddr[10]), .B(RAddr[0]), .Y(n192) );
  NOR4X1 U528 ( .A(n189), .B(RAddr[7]), .C(RAddr[9]), .D(RAddr[8]), .Y(n188)
         );
  OR2X1 U529 ( .A(RAddr[6]), .B(RAddr[5]), .Y(n189) );
  XNOR2X1 U530 ( .A(WAddr[2]), .B(n202), .Y(n201) );
  NAND2X1 U531 ( .A(WAddr[1]), .B(WAddr[0]), .Y(n202) );
  NOR3X1 U532 ( .A(over[1]), .B(over[2]), .C(over[0]), .Y(n206) );
  OAI22XL U533 ( .A0(n198), .A1(n195), .B0(n199), .B1(n470), .Y(N1585) );
  CLKINVX1 U534 ( .A(over[2]), .Y(n470) );
  OA21XL U535 ( .A0(n402), .A1(n469), .B0(n200), .Y(n199) );
  NOR2X1 U536 ( .A(N1536), .B(n201), .Y(n198) );
  NAND2X1 U537 ( .A(n402), .B(load), .Y(N1551) );
  NOR3X1 U538 ( .A(counter[1]), .B(counter[4]), .C(n160), .Y(n391) );
  NOR3X1 U539 ( .A(counter[1]), .B(counter[4]), .C(n389), .Y(n161) );
  CLKBUFX3 U540 ( .A(extended_m1_24), .Y(n430) );
  CLKBUFX3 U541 ( .A(extended_m1_24), .Y(n431) );
  CLKBUFX3 U542 ( .A(extended_m3_24), .Y(n427) );
  AOI2BB1X1 U543 ( .A0N(counter[1]), .A1N(counter[4]), .B0(n390), .Y(n393) );
  AOI2BB1X1 U544 ( .A0N(counter[1]), .A1N(counter[4]), .B0(n160), .Y(n392) );
  AOI2BB1X1 U545 ( .A0N(counter[1]), .A1N(counter[4]), .B0(n389), .Y(n162) );
  OAI2BB2XL U546 ( .B0(n193), .B1(n467), .A0N(n194), .A1N(n399), .Y(N1587) );
  OA21XL U547 ( .A0(data_done), .A1(n402), .B0(n195), .Y(n193) );
  OAI2BB2XL U548 ( .B0(n196), .B1(n466), .A0N(n197), .A1N(data_done), .Y(N1586) );
  OA21XL U549 ( .A0(n194), .A1(n195), .B0(n402), .Y(n196) );
  OAI21XL U550 ( .A0(n469), .A1(n200), .B0(n203), .Y(N1584) );
  AOI33X1 U551 ( .A0(n463), .A1(n469), .A2(n204), .B0(n205), .B1(n468), .B2(
        n399), .Y(n203) );
  CLKINVX1 U552 ( .A(over[0]), .Y(n463) );
  XOR2X1 U553 ( .A(WAddr[1]), .B(WAddr[0]), .Y(n205) );
  OAI21XL U554 ( .A0(WEN), .A1(n206), .B0(load), .Y(N1220) );
  ADDFXL U555 ( .A(DIn[14]), .B(N260), .CI(\add_3_root_add_57_6/carry[9] ), 
        .CO(N69), .S(N68) );
  ADDFXL U556 ( .A(DIn[14]), .B(N260), .CI(\add_5_root_add_57_6/carry[15] ), 
        .CO(N38), .S(N37) );
  ADDFXL U557 ( .A(DIn[14]), .B(N260), .CI(\add_5_root_add_58_6/carry[15] ), 
        .CO(N138), .S(N137) );
  ADDFXL U558 ( .A(DIn[14]), .B(N260), .CI(\add_5_root_add_59_6/carry[16] ), 
        .CO(N239), .S(N238) );
  CLKBUFX3 U559 ( .A(extended_m3_24), .Y(n428) );
  NAND2X1 U560 ( .A(WEN), .B(n465), .Y(n195) );
  ADDFXL U561 ( .A(extended_m2[21]), .B(extended_m2_24), .CI(
        \add_32_root_sub_0_root_add_167_2/carry[23] ), .CO(N975), .S(N974) );
  CLKBUFX3 U562 ( .A(extended_m4_24), .Y(n425) );
  ADDFXL U563 ( .A(DIn[14]), .B(N260), .CI(\r519/carry[11] ), .CO(N52), .S(N51) );
  OR2X1 U564 ( .A(counter[0]), .B(counter[5]), .Y(n160) );
  OR2X1 U565 ( .A(counter[0]), .B(counter[5]), .Y(n389) );
  OR2X1 U566 ( .A(counter[0]), .B(counter[5]), .Y(n390) );
  ADDFXL U567 ( .A(n427), .B(extended_m3[21]), .CI(
        \add_29_root_sub_0_root_add_167_2/carry[19] ), .CO(N1021), .S(N1020)
         );
  ADDFXL U568 ( .A(extended_m1[21]), .B(n431), .CI(
        \add_25_root_sub_0_root_add_167_2/carry[22] ), .CO(\Wb0[23] ), .S(
        \Wb0[22] ) );
  ADDFXL U569 ( .A(extended_m3[21]), .B(n427), .CI(
        \add_28_root_sub_0_root_add_167_2/carry[22] ), .CO(\Wb3[23] ), .S(
        \Wb3[22] ) );
  NOR2BX1 U570 ( .AN(counter[1]), .B(n402), .Y(N1552) );
  NOR2BX1 U571 ( .AN(counter[2]), .B(n402), .Y(N1553) );
  NOR2BX1 U572 ( .AN(counter[3]), .B(n402), .Y(N1554) );
  NOR2BX1 U573 ( .AN(counter[4]), .B(n402), .Y(N1555) );
  NOR2BX1 U574 ( .AN(counter[5]), .B(n402), .Y(N1556) );
  CLKBUFX3 U575 ( .A(\Wb4[4] ), .Y(n382) );
  NOR3X1 U576 ( .A(n467), .B(last[0]), .C(n402), .Y(N1588) );
  CLKBUFX3 U577 ( .A(\Wb4[5] ), .Y(n380) );
  CLKBUFX3 U578 ( .A(\Wb4[6] ), .Y(n378) );
  CLKBUFX3 U579 ( .A(\Wb4[1] ), .Y(n388) );
  CLKBUFX3 U580 ( .A(\Wb4[2] ), .Y(n386) );
  CLKBUFX3 U581 ( .A(\Wb4[3] ), .Y(n384) );
  CLKBUFX3 U582 ( .A(extended_m4[20]), .Y(n374) );
  CLKBUFX3 U583 ( .A(extended_m4[21]), .Y(n372) );
  CLKBUFX3 U584 ( .A(extended_m1_24), .Y(n433) );
  CLKBUFX3 U585 ( .A(\Wb4[1] ), .Y(n387) );
  CLKBUFX3 U586 ( .A(extended_m4[19]), .Y(n376) );
  CLKBUFX3 U587 ( .A(\Wb4[2] ), .Y(n385) );
  CLKBUFX3 U588 ( .A(\Wb4[3] ), .Y(n383) );
  CLKBUFX3 U589 ( .A(\Wb4[4] ), .Y(n381) );
  CLKBUFX3 U590 ( .A(\Wb4[5] ), .Y(n379) );
  CLKBUFX3 U591 ( .A(\Wb4[6] ), .Y(n377) );
  CLKBUFX3 U592 ( .A(extended_m4[19]), .Y(n375) );
  CLKBUFX3 U593 ( .A(extended_m4[20]), .Y(n373) );
  CLKBUFX3 U594 ( .A(extended_m4[21]), .Y(n371) );
  OR2X1 U595 ( .A(RAddr[1]), .B(RAddr[19]), .Y(n190) );
  OR2X1 U596 ( .A(RAddr[15]), .B(RAddr[14]), .Y(n191) );
  ADDFXL U597 ( .A(DIn[14]), .B(N260), .CI(\add_4_root_add_59_6/carry[12] ), 
        .CO(N254), .S(N253) );
  CLKINVX1 U598 ( .A(load), .Y(n465) );
  AO22X1 U599 ( .A0(n395), .A1(\Wb3[6] ), .B0(n401), .B1(\Wb4[0] ), .Y(N1284)
         );
  AO22X1 U600 ( .A0(n395), .A1(\Wb3[5] ), .B0(n401), .B1(extended_m4[11]), .Y(
        N1283) );
  AO22X1 U601 ( .A0(n394), .A1(N952), .B0(n401), .B1(\Wb3[2] ), .Y(N1264) );
  AO22X1 U602 ( .A0(n394), .A1(\Wb3[4] ), .B0(n401), .B1(extended_m4[10]), .Y(
        N1282) );
  AO22X1 U603 ( .A0(n394), .A1(extended_m2[21]), .B0(n401), .B1(
        extended_m3[21]), .Y(N1277) );
  AO22X1 U604 ( .A0(n394), .A1(extended_m2[20]), .B0(n401), .B1(
        extended_m3[20]), .Y(N1276) );
  AO22X1 U605 ( .A0(n394), .A1(extended_m2[19]), .B0(n401), .B1(
        extended_m3[19]), .Y(N1275) );
  AO22X1 U606 ( .A0(n394), .A1(extended_m2[18]), .B0(n401), .B1(
        extended_m3[18]), .Y(N1274) );
  AO22X1 U607 ( .A0(n394), .A1(extended_m2[17]), .B0(n401), .B1(
        extended_m3[17]), .Y(N1273) );
  AO22X1 U608 ( .A0(n394), .A1(extended_m2[16]), .B0(n401), .B1(
        extended_m3[16]), .Y(N1272) );
  AO22X1 U609 ( .A0(n394), .A1(N959), .B0(n401), .B1(extended_m3[15]), .Y(
        N1271) );
  AO22X1 U610 ( .A0(n394), .A1(N953), .B0(n401), .B1(\Wb3[3] ), .Y(N1265) );
  AO22X1 U611 ( .A0(n394), .A1(N954), .B0(n401), .B1(\Wb3[4] ), .Y(N1266) );
  AO22X1 U612 ( .A0(n394), .A1(\Wb3[2] ), .B0(n401), .B1(extended_m4[8]), .Y(
        N1280) );
  AO22X1 U613 ( .A0(n394), .A1(N957), .B0(n401), .B1(\Wb3[7] ), .Y(N1269) );
  AO22X1 U614 ( .A0(n394), .A1(N956), .B0(n401), .B1(\Wb3[6] ), .Y(N1268) );
  AO22X1 U615 ( .A0(n394), .A1(N955), .B0(n401), .B1(\Wb3[5] ), .Y(N1267) );
  AO22X1 U616 ( .A0(n397), .A1(N1357), .B0(N1337), .B1(n197), .Y(N1401) );
  AO22X1 U617 ( .A0(n397), .A1(N1356), .B0(N1336), .B1(n197), .Y(N1400) );
  AO22X1 U618 ( .A0(n397), .A1(N1355), .B0(N1335), .B1(n197), .Y(N1399) );
  AO22X1 U619 ( .A0(n397), .A1(N1354), .B0(N1334), .B1(n401), .Y(N1398) );
  AO22X1 U620 ( .A0(n397), .A1(N1353), .B0(N1333), .B1(n197), .Y(N1397) );
  AO22X1 U621 ( .A0(n396), .A1(N1352), .B0(N1332), .B1(n401), .Y(N1396) );
  AO22X1 U622 ( .A0(n396), .A1(N1351), .B0(N1331), .B1(n401), .Y(N1395) );
  AO22X1 U623 ( .A0(n396), .A1(N1350), .B0(N1330), .B1(n401), .Y(N1394) );
  AO22X1 U624 ( .A0(n396), .A1(N1349), .B0(N1329), .B1(n401), .Y(N1393) );
  AO22X1 U625 ( .A0(n396), .A1(N1348), .B0(N1328), .B1(n401), .Y(N1392) );
  AO22X1 U626 ( .A0(n396), .A1(N1347), .B0(N1327), .B1(n197), .Y(N1391) );
  AO22X1 U627 ( .A0(n396), .A1(N1346), .B0(N1326), .B1(n401), .Y(N1390) );
  AO22X1 U628 ( .A0(n396), .A1(N1345), .B0(N1325), .B1(n401), .Y(N1389) );
  AO22X1 U629 ( .A0(n396), .A1(N1344), .B0(N1324), .B1(n401), .Y(N1388) );
  AO22X1 U630 ( .A0(n396), .A1(N1343), .B0(N1323), .B1(n401), .Y(N1387) );
  AO22X1 U631 ( .A0(n396), .A1(N1342), .B0(N1322), .B1(n401), .Y(N1386) );
  AO22X1 U632 ( .A0(n396), .A1(N1341), .B0(N1321), .B1(n401), .Y(N1385) );
  AO22X1 U633 ( .A0(n396), .A1(N1340), .B0(N1320), .B1(n401), .Y(N1384) );
  AO22X1 U634 ( .A0(n396), .A1(N1339), .B0(N1319), .B1(n401), .Y(N1383) );
  AO22X1 U635 ( .A0(n396), .A1(N1338), .B0(N1318), .B1(n401), .Y(N1382) );
  AO22X1 U636 ( .A0(n394), .A1(N958), .B0(n401), .B1(extended_m3[14]), .Y(
        N1270) );
  AO22X1 U637 ( .A0(n394), .A1(N951), .B0(n400), .B1(\Wb3[1] ), .Y(N1263) );
  AO22X1 U638 ( .A0(n400), .A1(N959), .B0(n398), .B1(\Wb0[2] ), .Y(N1255) );
  AO22X1 U639 ( .A0(n395), .A1(n386), .B0(extended_m5[14]), .B1(n401), .Y(
        N1302) );
  AO22X1 U640 ( .A0(n400), .A1(WAddr[0]), .B0(n398), .B1(N1338), .Y(N1402) );
  AO22X1 U641 ( .A0(n400), .A1(\Wb0[5] ), .B0(Yn[11]), .B1(n399), .Y(N1242) );
  AO22X1 U642 ( .A0(n400), .A1(\Wb0[4] ), .B0(Yn[10]), .B1(n399), .Y(N1241) );
  AO22X1 U643 ( .A0(n400), .A1(\Wb0[3] ), .B0(Yn[9]), .B1(n399), .Y(N1240) );
  AO22X1 U644 ( .A0(n400), .A1(\Wb0[2] ), .B0(Yn[8]), .B1(n399), .Y(N1239) );
  AO22X1 U645 ( .A0(n400), .A1(\Wb0[1] ), .B0(Yn[7]), .B1(n399), .Y(N1238) );
  AO22X1 U646 ( .A0(n400), .A1(\Wb0[0] ), .B0(Yn[6]), .B1(n399), .Y(N1237) );
  AO22X1 U647 ( .A0(n400), .A1(extended_m1[12]), .B0(Yn[5]), .B1(n399), .Y(
        N1236) );
  AO22X1 U648 ( .A0(n400), .A1(extended_m1[11]), .B0(Yn[4]), .B1(n399), .Y(
        N1235) );
  AO22X1 U649 ( .A0(n400), .A1(extended_m1[10]), .B0(Yn[3]), .B1(n399), .Y(
        N1234) );
  AO22X1 U650 ( .A0(n400), .A1(extended_m1[9]), .B0(Yn[2]), .B1(n399), .Y(
        N1233) );
  AO22X1 U651 ( .A0(n400), .A1(extended_m1[8]), .B0(Yn[1]), .B1(n399), .Y(
        N1232) );
  AO22X1 U652 ( .A0(n397), .A1(N1357), .B0(WAddr[19]), .B1(n197), .Y(N1421) );
  AO22X1 U653 ( .A0(n397), .A1(N1356), .B0(WAddr[18]), .B1(n197), .Y(N1420) );
  AO22X1 U654 ( .A0(n397), .A1(N1355), .B0(WAddr[17]), .B1(n197), .Y(N1419) );
  AO22X1 U655 ( .A0(n397), .A1(N1354), .B0(WAddr[16]), .B1(n197), .Y(N1418) );
  AO22X1 U656 ( .A0(n397), .A1(N1353), .B0(WAddr[15]), .B1(n197), .Y(N1417) );
  AO22X1 U657 ( .A0(n397), .A1(N1352), .B0(WAddr[14]), .B1(n197), .Y(N1416) );
  AO22X1 U658 ( .A0(n397), .A1(N1351), .B0(WAddr[13]), .B1(n197), .Y(N1415) );
  AO22X1 U659 ( .A0(n397), .A1(N1350), .B0(WAddr[12]), .B1(n197), .Y(N1414) );
  AO22X1 U660 ( .A0(n397), .A1(N1349), .B0(WAddr[11]), .B1(n197), .Y(N1413) );
  AO22X1 U661 ( .A0(n397), .A1(N1348), .B0(WAddr[10]), .B1(n197), .Y(N1412) );
  AO22X1 U662 ( .A0(n397), .A1(N1347), .B0(WAddr[9]), .B1(n197), .Y(N1411) );
  AO22X1 U663 ( .A0(n397), .A1(N1346), .B0(WAddr[8]), .B1(n197), .Y(N1410) );
  AO22X1 U664 ( .A0(n396), .A1(N1345), .B0(WAddr[7]), .B1(n197), .Y(N1409) );
  AO22X1 U665 ( .A0(n397), .A1(N1344), .B0(WAddr[6]), .B1(n197), .Y(N1408) );
  AO22X1 U666 ( .A0(n397), .A1(N1343), .B0(WAddr[5]), .B1(n197), .Y(N1407) );
  AO22X1 U667 ( .A0(n397), .A1(N1342), .B0(WAddr[4]), .B1(n197), .Y(N1406) );
  AO22X1 U668 ( .A0(n397), .A1(N1341), .B0(WAddr[3]), .B1(n197), .Y(N1405) );
  AO22X1 U669 ( .A0(n400), .A1(n433), .B0(Yn[15]), .B1(n398), .Y(N1246) );
  AO22X1 U670 ( .A0(n400), .A1(extended_m1[21]), .B0(Yn[14]), .B1(n398), .Y(
        N1245) );
  AO22X1 U671 ( .A0(n400), .A1(\Wb0[7] ), .B0(Yn[13]), .B1(n398), .Y(N1244) );
  AO22X1 U672 ( .A0(n400), .A1(\Wb0[6] ), .B0(Yn[12]), .B1(n398), .Y(N1243) );
  AO22X1 U673 ( .A0(n400), .A1(extended_m1[7]), .B0(Yn[0]), .B1(n398), .Y(
        N1231) );
  AO22X1 U674 ( .A0(n400), .A1(extended_m2[21]), .B0(n398), .B1(
        extended_m1[21]), .Y(N1261) );
  AO22X1 U675 ( .A0(n400), .A1(extended_m2[20]), .B0(n398), .B1(\Wb0[7] ), .Y(
        N1260) );
  AO22X1 U676 ( .A0(n395), .A1(extended_m3[19]), .B0(n400), .B1(n376), .Y(
        N1291) );
  AO22X1 U677 ( .A0(n400), .A1(extended_m2[19]), .B0(n398), .B1(\Wb0[6] ), .Y(
        N1259) );
  AO22X1 U678 ( .A0(n400), .A1(extended_m2[18]), .B0(n398), .B1(\Wb0[5] ), .Y(
        N1258) );
  AO22X1 U679 ( .A0(n400), .A1(extended_m2[17]), .B0(n398), .B1(\Wb0[4] ), .Y(
        N1257) );
  AO22X1 U680 ( .A0(n400), .A1(extended_m2[16]), .B0(n398), .B1(\Wb0[3] ), .Y(
        N1256) );
  AO22X1 U681 ( .A0(n400), .A1(N958), .B0(n398), .B1(\Wb0[1] ), .Y(N1254) );
  AO22X1 U682 ( .A0(n400), .A1(N957), .B0(n398), .B1(\Wb0[0] ), .Y(N1253) );
  AO22X1 U683 ( .A0(n400), .A1(N956), .B0(n398), .B1(extended_m1[12]), .Y(
        N1252) );
  AO22X1 U684 ( .A0(n400), .A1(N955), .B0(n398), .B1(extended_m1[11]), .Y(
        N1251) );
  AO22X1 U685 ( .A0(n400), .A1(N954), .B0(n398), .B1(extended_m1[10]), .Y(
        N1250) );
  AO22X1 U686 ( .A0(n400), .A1(N953), .B0(n398), .B1(extended_m1[9]), .Y(N1249) );
  AO22X1 U687 ( .A0(n400), .A1(N952), .B0(n398), .B1(extended_m1[8]), .Y(N1248) );
  AO22X1 U688 ( .A0(n400), .A1(N951), .B0(n398), .B1(extended_m1[7]), .Y(N1247) );
  AO22X1 U689 ( .A0(n400), .A1(WAddr[1]), .B0(n398), .B1(N1339), .Y(N1403) );
  AO22X1 U690 ( .A0(n395), .A1(extended_m3[21]), .B0(n400), .B1(n372), .Y(
        N1293) );
  AO22X1 U691 ( .A0(n395), .A1(extended_m3[20]), .B0(n400), .B1(n374), .Y(
        N1292) );
  AO22X1 U692 ( .A0(n395), .A1(extended_m3[15]), .B0(n400), .B1(n384), .Y(
        N1287) );
  AO22X1 U693 ( .A0(n395), .A1(extended_m3[14]), .B0(n400), .B1(n386), .Y(
        N1286) );
  AO22X1 U694 ( .A0(n395), .A1(\Wb3[7] ), .B0(n400), .B1(n388), .Y(N1285) );
  AO22X1 U695 ( .A0(n395), .A1(extended_m3[18]), .B0(n400), .B1(n378), .Y(
        N1290) );
  AO22X1 U696 ( .A0(n395), .A1(extended_m3[17]), .B0(n400), .B1(n380), .Y(
        N1289) );
  AO22X1 U697 ( .A0(n395), .A1(extended_m3[16]), .B0(n400), .B1(n382), .Y(
        N1288) );
  AO22X1 U698 ( .A0(n396), .A1(n372), .B0(extended_m5[21]), .B1(n401), .Y(
        N1309) );
  AO22X1 U699 ( .A0(n396), .A1(n374), .B0(extended_m5[20]), .B1(n401), .Y(
        N1308) );
  AO22X1 U700 ( .A0(n396), .A1(n376), .B0(extended_m5[19]), .B1(n401), .Y(
        N1307) );
  AO22X1 U701 ( .A0(n396), .A1(n378), .B0(extended_m5[18]), .B1(n401), .Y(
        N1306) );
  AO22X1 U702 ( .A0(n396), .A1(n380), .B0(extended_m5[17]), .B1(n401), .Y(
        N1305) );
  AO22X1 U703 ( .A0(n395), .A1(n382), .B0(extended_m5[16]), .B1(n401), .Y(
        N1304) );
  AO22X1 U704 ( .A0(n395), .A1(n384), .B0(extended_m5[15]), .B1(n401), .Y(
        N1303) );
  AO22X1 U705 ( .A0(n395), .A1(n388), .B0(extended_m5[13]), .B1(n401), .Y(
        N1301) );
  AO22X1 U706 ( .A0(n395), .A1(\Wb4[0] ), .B0(extended_m5[12]), .B1(n401), .Y(
        N1300) );
  AO22X1 U707 ( .A0(n395), .A1(extended_m4[11]), .B0(extended_m5[11]), .B1(
        n401), .Y(N1299) );
  AO22X1 U708 ( .A0(n395), .A1(extended_m4[10]), .B0(extended_m5[10]), .B1(
        n401), .Y(N1298) );
  AO22X1 U709 ( .A0(n395), .A1(extended_m4[9]), .B0(extended_m5[9]), .B1(n401), 
        .Y(N1297) );
  AO22X1 U710 ( .A0(n395), .A1(extended_m4[8]), .B0(extended_m5[8]), .B1(n401), 
        .Y(N1296) );
  AO22X1 U711 ( .A0(n395), .A1(extended_m4[7]), .B0(extended_m5[7]), .B1(n401), 
        .Y(N1295) );
  AO22X1 U712 ( .A0(n397), .A1(N1340), .B0(n400), .B1(WAddr[2]), .Y(N1404) );
  AO22X1 U713 ( .A0(n394), .A1(\Wb3[3] ), .B0(n401), .B1(extended_m4[9]), .Y(
        N1281) );
  AO22X1 U714 ( .A0(n394), .A1(\Wb3[1] ), .B0(n401), .B1(extended_m4[7]), .Y(
        N1279) );
  NOR2X1 U715 ( .A(n466), .B(last[1]), .Y(n194) );
  NAND2X1 U716 ( .A(over[0]), .B(n400), .Y(n200) );
  NOR2X1 U717 ( .A(n209), .B(rst), .Y(N1133) );
  NOR2X1 U718 ( .A(n210), .B(rst), .Y(N1117) );
  NOR2X1 U719 ( .A(n211), .B(rst), .Y(N1101) );
  NOR2X1 U720 ( .A(n212), .B(rst), .Y(N1085) );
  NOR2X1 U721 ( .A(n213), .B(rst), .Y(N1069) );
  NOR2X1 U722 ( .A(n214), .B(rst), .Y(N1204) );
  NOR2X1 U723 ( .A(n215), .B(rst), .Y(N1203) );
  NOR2X1 U724 ( .A(n216), .B(rst), .Y(N1202) );
  NOR2X1 U725 ( .A(n217), .B(rst), .Y(N1132) );
  NOR2X1 U726 ( .A(n218), .B(rst), .Y(N1116) );
  NOR2X1 U727 ( .A(n219), .B(rst), .Y(N1100) );
  NOR2X1 U728 ( .A(n220), .B(rst), .Y(N1084) );
  NOR2X1 U729 ( .A(n221), .B(rst), .Y(N1068) );
  NOR2X1 U730 ( .A(n222), .B(rst), .Y(N1201) );
  NOR2X1 U731 ( .A(n223), .B(rst), .Y(N1131) );
  NOR2X1 U732 ( .A(n224), .B(rst), .Y(N1115) );
  NOR2X1 U733 ( .A(n225), .B(rst), .Y(N1099) );
  NOR2X1 U734 ( .A(n226), .B(rst), .Y(N1083) );
  NOR2X1 U735 ( .A(n227), .B(rst), .Y(N1067) );
  NOR2X1 U736 ( .A(n228), .B(rst), .Y(N1200) );
  NOR2X1 U737 ( .A(n229), .B(rst), .Y(N1130) );
  NOR2X1 U738 ( .A(n230), .B(rst), .Y(N1114) );
  NOR2X1 U739 ( .A(n231), .B(rst), .Y(N1098) );
  NOR2X1 U740 ( .A(n232), .B(rst), .Y(N1082) );
  NOR2X1 U741 ( .A(n233), .B(rst), .Y(N1066) );
  NOR2X1 U742 ( .A(n234), .B(rst), .Y(N1199) );
  NOR2X1 U743 ( .A(n235), .B(rst), .Y(N1129) );
  NOR2X1 U744 ( .A(n236), .B(rst), .Y(N1113) );
  NOR2X1 U745 ( .A(n237), .B(rst), .Y(N1097) );
  NOR2X1 U746 ( .A(n238), .B(rst), .Y(N1081) );
  NOR2X1 U747 ( .A(n239), .B(rst), .Y(N1065) );
  NOR2X1 U748 ( .A(n240), .B(rst), .Y(N1198) );
  NOR2X1 U749 ( .A(n241), .B(rst), .Y(N1128) );
  NOR2X1 U750 ( .A(n242), .B(rst), .Y(N1112) );
  NOR2X1 U751 ( .A(n243), .B(rst), .Y(N1096) );
  NOR2X1 U752 ( .A(n244), .B(rst), .Y(N1080) );
  NOR2X1 U753 ( .A(n245), .B(rst), .Y(N1064) );
  NOR2X1 U754 ( .A(n246), .B(rst), .Y(N1197) );
  NOR2X1 U755 ( .A(n247), .B(rst), .Y(N1127) );
  NOR2X1 U756 ( .A(n248), .B(rst), .Y(N1111) );
  NOR2X1 U757 ( .A(n249), .B(rst), .Y(N1095) );
  NOR2X1 U758 ( .A(n250), .B(rst), .Y(N1079) );
  NOR2X1 U759 ( .A(n251), .B(rst), .Y(N1063) );
  NOR2X1 U760 ( .A(n252), .B(rst), .Y(N1196) );
  NOR2X1 U761 ( .A(n253), .B(rst), .Y(N1126) );
  NOR2X1 U762 ( .A(n254), .B(rst), .Y(N1110) );
  NOR2X1 U763 ( .A(n255), .B(rst), .Y(N1094) );
  NOR2X1 U764 ( .A(n256), .B(rst), .Y(N1078) );
  NOR2X1 U765 ( .A(n257), .B(rst), .Y(N1062) );
  NOR2X1 U766 ( .A(n258), .B(rst), .Y(N1195) );
  NOR2X1 U767 ( .A(n259), .B(rst), .Y(N1125) );
  NOR2X1 U768 ( .A(n260), .B(rst), .Y(N1109) );
  NOR2X1 U769 ( .A(n261), .B(rst), .Y(N1093) );
  NOR2X1 U770 ( .A(n262), .B(rst), .Y(N1077) );
  NOR2X1 U771 ( .A(n263), .B(rst), .Y(N1061) );
  NOR2X1 U772 ( .A(n264), .B(rst), .Y(N1194) );
  NOR2X1 U773 ( .A(n265), .B(rst), .Y(N1124) );
  NOR2X1 U774 ( .A(n266), .B(rst), .Y(N1108) );
  NOR2X1 U775 ( .A(n267), .B(rst), .Y(N1092) );
  NOR2X1 U776 ( .A(n268), .B(rst), .Y(N1076) );
  NOR2X1 U777 ( .A(n269), .B(rst), .Y(N1060) );
  NOR2X1 U778 ( .A(n270), .B(rst), .Y(N1193) );
  NOR2X1 U779 ( .A(n271), .B(rst), .Y(N1123) );
  NOR2X1 U780 ( .A(n272), .B(rst), .Y(N1107) );
  NOR2X1 U781 ( .A(n273), .B(rst), .Y(N1091) );
  NOR2X1 U782 ( .A(n274), .B(rst), .Y(N1075) );
  NOR2X1 U783 ( .A(n275), .B(rst), .Y(N1059) );
  NOR2X1 U784 ( .A(n276), .B(rst), .Y(N1192) );
  NOR2X1 U785 ( .A(n277), .B(rst), .Y(N1122) );
  NOR2X1 U786 ( .A(n278), .B(rst), .Y(N1106) );
  NOR2X1 U787 ( .A(n279), .B(rst), .Y(N1090) );
  NOR2X1 U788 ( .A(n280), .B(rst), .Y(N1074) );
  NOR2X1 U789 ( .A(n281), .B(rst), .Y(N1058) );
  NOR2X1 U790 ( .A(n282), .B(rst), .Y(N1191) );
  NOR2X1 U791 ( .A(n283), .B(rst), .Y(N1121) );
  NOR2X1 U792 ( .A(n284), .B(rst), .Y(N1105) );
  NOR2X1 U793 ( .A(n285), .B(rst), .Y(N1089) );
  NOR2X1 U794 ( .A(n286), .B(rst), .Y(N1073) );
  NOR2X1 U795 ( .A(n287), .B(rst), .Y(N1057) );
  NOR2X1 U796 ( .A(n288), .B(rst), .Y(N1190) );
  NOR2X1 U797 ( .A(n289), .B(rst), .Y(N1120) );
  NOR2X1 U798 ( .A(n290), .B(rst), .Y(N1104) );
  NOR2X1 U799 ( .A(n291), .B(rst), .Y(N1088) );
  NOR2X1 U800 ( .A(n292), .B(rst), .Y(N1072) );
  NOR2X1 U801 ( .A(n293), .B(rst), .Y(N1056) );
  NOR2X1 U802 ( .A(n294), .B(rst), .Y(N1189) );
  NOR2X1 U803 ( .A(n295), .B(rst), .Y(N1119) );
  NOR2X1 U804 ( .A(n296), .B(rst), .Y(N1103) );
  NOR2X1 U805 ( .A(n297), .B(rst), .Y(N1087) );
  NOR2X1 U806 ( .A(n298), .B(rst), .Y(N1071) );
  NOR2X1 U807 ( .A(n299), .B(rst), .Y(N1055) );
  NOR2X1 U808 ( .A(n300), .B(rst), .Y(N1188) );
  NOR2X1 U809 ( .A(n301), .B(rst), .Y(N1118) );
  NOR2X1 U810 ( .A(n302), .B(rst), .Y(N1102) );
  NOR2X1 U811 ( .A(n303), .B(rst), .Y(N1086) );
  NOR2X1 U812 ( .A(n304), .B(rst), .Y(N1070) );
  NOR2X1 U813 ( .A(n305), .B(rst), .Y(N1054) );
  NOR2X1 U814 ( .A(n306), .B(rst), .Y(N1187) );
  NOR2X1 U815 ( .A(n307), .B(rst), .Y(N1186) );
  NOR2X1 U816 ( .A(n308), .B(rst), .Y(N1185) );
  NOR2X1 U817 ( .A(n309), .B(rst), .Y(N1184) );
  NOR2X1 U818 ( .A(n310), .B(rst), .Y(N1183) );
  NOR2X1 U819 ( .A(n311), .B(rst), .Y(N1182) );
  NOR2X1 U820 ( .A(n312), .B(rst), .Y(N1181) );
  NOR2X1 U821 ( .A(n313), .B(rst), .Y(N1180) );
  NOR2X1 U822 ( .A(n314), .B(rst), .Y(N1175) );
  NOR2X1 U823 ( .A(n315), .B(rst), .Y(N1176) );
  NOR2X1 U824 ( .A(n316), .B(rst), .Y(N1177) );
  NOR2X1 U825 ( .A(n317), .B(rst), .Y(N1178) );
  NOR2X1 U826 ( .A(n318), .B(rst), .Y(N1179) );
  NOR2X1 U827 ( .A(n319), .B(rst), .Y(N1153) );
  NOR2X1 U828 ( .A(n320), .B(rst), .Y(N1152) );
  NOR2X1 U829 ( .A(n321), .B(rst), .Y(N1151) );
  NOR2X1 U830 ( .A(n322), .B(rst), .Y(N1150) );
  NOR2X1 U831 ( .A(n323), .B(rst), .Y(N1149) );
  NOR2X1 U832 ( .A(n324), .B(rst), .Y(N1148) );
  NOR2X1 U833 ( .A(n325), .B(rst), .Y(N1147) );
  NOR2X1 U834 ( .A(n326), .B(rst), .Y(N1146) );
  NOR2X1 U835 ( .A(n327), .B(rst), .Y(N1145) );
  NOR2X1 U836 ( .A(n328), .B(rst), .Y(N1144) );
  NOR2X1 U837 ( .A(n329), .B(rst), .Y(N1143) );
  NOR2X1 U838 ( .A(n330), .B(rst), .Y(N1142) );
  NOR2X1 U839 ( .A(n331), .B(rst), .Y(N1141) );
  NOR2X1 U840 ( .A(n332), .B(rst), .Y(N1140) );
  NOR2X1 U841 ( .A(n333), .B(rst), .Y(N1139) );
  NOR2X1 U842 ( .A(n334), .B(rst), .Y(N1138) );
  NOR2X1 U843 ( .A(n335), .B(rst), .Y(N1137) );
  NOR2X1 U844 ( .A(n336), .B(rst), .Y(N1136) );
  NOR2X1 U845 ( .A(n337), .B(rst), .Y(N1135) );
  NOR2X1 U846 ( .A(n338), .B(rst), .Y(N1134) );
  NOR2X1 U847 ( .A(n339), .B(rst), .Y(N1207) );
  NOR2X1 U848 ( .A(n340), .B(rst), .Y(N1206) );
  NOR2X1 U849 ( .A(n341), .B(rst), .Y(N1173) );
  NOR2X1 U850 ( .A(n342), .B(rst), .Y(N1172) );
  NOR2X1 U851 ( .A(n343), .B(rst), .Y(N1171) );
  NOR2X1 U852 ( .A(n344), .B(rst), .Y(N1170) );
  NOR2X1 U853 ( .A(n345), .B(rst), .Y(N1169) );
  NOR2X1 U854 ( .A(n346), .B(rst), .Y(N1168) );
  NOR2X1 U855 ( .A(n347), .B(rst), .Y(N1167) );
  NOR2X1 U856 ( .A(n348), .B(rst), .Y(N1166) );
  NOR2X1 U857 ( .A(n349), .B(rst), .Y(N1165) );
  NOR2X1 U858 ( .A(n350), .B(rst), .Y(N1164) );
  NOR2X1 U859 ( .A(n351), .B(rst), .Y(N1163) );
  NOR2X1 U860 ( .A(n352), .B(rst), .Y(N1162) );
  NOR2X1 U861 ( .A(n353), .B(rst), .Y(N1161) );
  NOR2X1 U862 ( .A(n354), .B(rst), .Y(N1160) );
  NOR2X1 U863 ( .A(n355), .B(rst), .Y(N1159) );
  NOR2X1 U864 ( .A(n356), .B(rst), .Y(N1158) );
  NOR2X1 U865 ( .A(n357), .B(rst), .Y(N1157) );
  NOR2X1 U866 ( .A(n358), .B(rst), .Y(N1156) );
  NOR2X1 U867 ( .A(n359), .B(rst), .Y(N1155) );
  NOR2X1 U868 ( .A(n360), .B(rst), .Y(N1154) );
  NOR2X1 U869 ( .A(n361), .B(rst), .Y(N1209) );
  NOR2X1 U870 ( .A(n362), .B(rst), .Y(N1208) );
  NOR2X1 U871 ( .A(n363), .B(rst), .Y(N1053) );
  NOR2X1 U872 ( .A(n364), .B(rst), .Y(N1052) );
  NOR2X1 U873 ( .A(n365), .B(rst), .Y(N1205) );
  ADDFXL U874 ( .A(DIn[6]), .B(DIn[7]), .CI(\add_3_root_add_57_6/carry[1] ), 
        .CO(\add_3_root_add_57_6/carry[2] ), .S(N60) );
  ADDFXL U875 ( .A(DIn[4]), .B(DIn[5]), .CI(\r519/carry[1] ), .CO(
        \r519/carry[2] ), .S(N41) );
  ADDFXL U876 ( .A(DIn[3]), .B(DIn[5]), .CI(\add_4_root_add_59_6/carry[1] ), 
        .CO(\add_4_root_add_59_6/carry[2] ), .S(N242) );
  ADDFXL U877 ( .A(N222), .B(DIn[4]), .CI(\add_5_root_add_57_6/carry[2] ), 
        .CO(\add_5_root_add_57_6/carry[3] ), .S(N24) );
  ADDFXL U878 ( .A(N222), .B(DIn[3]), .CI(\add_5_root_add_58_6/carry[2] ), 
        .CO(\add_5_root_add_58_6/carry[3] ), .S(N124) );
  ADDFXL U879 ( .A(N222), .B(DIn[4]), .CI(\add_5_root_add_59_6/carry[3] ), 
        .CO(\add_5_root_add_59_6/carry[4] ), .S(N225) );
  ADDFXL U880 ( .A(\Wb3[4] ), .B(\Wb3[2] ), .CI(
        \add_29_root_sub_0_root_add_167_2/carry[6] ), .CO(
        \add_29_root_sub_0_root_add_167_2/carry[7] ), .S(N1007) );
  ADDFXL U881 ( .A(\Wb3[5] ), .B(extended_m1[8]), .CI(
        \add_26_root_sub_0_root_add_167_2/carry [6]), .CO(
        \add_26_root_sub_0_root_add_167_2/carry [7]), .S(\Wb2[6] ) );
  ADDFXL U882 ( .A(extended_m4[8]), .B(extended_m4[10]), .CI(
        \add_22_root_add_167_2/carry[7] ), .CO(
        \add_22_root_add_167_2/carry[8] ), .S(\add_22_root_add_167_2/SUM[7] )
         );
  ADDFXL U883 ( .A(\Wb3[2] ), .B(extended_m3[15]), .CI(
        \add_28_root_sub_0_root_add_167_2/carry[9] ), .CO(
        \add_28_root_sub_0_root_add_167_2/carry[10] ), .S(\Wb3[9] ) );
  ADDFXL U884 ( .A(N952), .B(extended_m2[17]), .CI(
        \add_32_root_sub_0_root_add_167_2/carry[10] ), .CO(
        \add_32_root_sub_0_root_add_167_2/carry[11] ), .S(N961) );
  ADDFXL U885 ( .A(extended_m1[8]), .B(n430), .CI(
        \add_25_root_sub_0_root_add_167_2/carry[9] ), .CO(
        \add_25_root_sub_0_root_add_167_2/carry[10] ), .S(\Wb0[9] ) );
  ADDFXL U886 ( .A(n374), .B(extended_m4[8]), .CI(
        \add_17_root_sub_0_root_add_167_2/carry[8] ), .CO(
        \add_17_root_sub_0_root_add_167_2/carry[9] ), .S(\Wb4[8] ) );
  CLKINVX1 U887 ( .A(n173), .Y(n461) );
  AOI222XL U888 ( .A0(Wa5[1]), .A1(n160), .B0(Wa3[1]), .B1(n161), .C0(Wa4[1]), 
        .C1(n162), .Y(n173) );
  ADDFXL U889 ( .A(DIn[7]), .B(DIn[8]), .CI(\add_3_root_add_57_6/carry[2] ), 
        .CO(\add_3_root_add_57_6/carry[3] ), .S(N61) );
  ADDFXL U890 ( .A(DIn[5]), .B(DIn[6]), .CI(\r519/carry[2] ), .CO(
        \r519/carry[3] ), .S(N42) );
  ADDFXL U891 ( .A(DIn[4]), .B(DIn[6]), .CI(\add_4_root_add_59_6/carry[2] ), 
        .CO(\add_4_root_add_59_6/carry[3] ), .S(N243) );
  ADDFXL U892 ( .A(DIn[8]), .B(DIn[9]), .CI(\add_3_root_add_57_6/carry[3] ), 
        .CO(\add_3_root_add_57_6/carry[4] ), .S(N62) );
  ADDFXL U893 ( .A(N223), .B(DIn[5]), .CI(\add_5_root_add_57_6/carry[3] ), 
        .CO(\add_5_root_add_57_6/carry[4] ), .S(N25) );
  ADDFXL U894 ( .A(DIn[6]), .B(DIn[7]), .CI(\r519/carry[3] ), .CO(
        \r519/carry[4] ), .S(N43) );
  ADDFXL U895 ( .A(N223), .B(DIn[4]), .CI(\add_5_root_add_58_6/carry[3] ), 
        .CO(\add_5_root_add_58_6/carry[4] ), .S(N125) );
  ADDFXL U896 ( .A(DIn[5]), .B(DIn[7]), .CI(\add_4_root_add_59_6/carry[3] ), 
        .CO(\add_4_root_add_59_6/carry[4] ), .S(N244) );
  ADDFXL U897 ( .A(DIn[9]), .B(DIn[10]), .CI(\add_3_root_add_57_6/carry[4] ), 
        .CO(\add_3_root_add_57_6/carry[5] ), .S(N63) );
  ADDFXL U898 ( .A(DIn[3]), .B(DIn[6]), .CI(\add_5_root_add_57_6/carry[4] ), 
        .CO(\add_5_root_add_57_6/carry[5] ), .S(N26) );
  ADDFXL U899 ( .A(DIn[7]), .B(DIn[8]), .CI(\r519/carry[4] ), .CO(
        \r519/carry[5] ), .S(N44) );
  ADDFXL U900 ( .A(DIn[3]), .B(DIn[5]), .CI(\add_5_root_add_58_6/carry[4] ), 
        .CO(\add_5_root_add_58_6/carry[5] ), .S(N126) );
  ADDFXL U901 ( .A(DIn[6]), .B(DIn[8]), .CI(\add_4_root_add_59_6/carry[4] ), 
        .CO(\add_4_root_add_59_6/carry[5] ), .S(N245) );
  ADDFXL U902 ( .A(N223), .B(DIn[5]), .CI(\add_5_root_add_59_6/carry[4] ), 
        .CO(\add_5_root_add_59_6/carry[5] ), .S(N226) );
  ADDFXL U903 ( .A(DIn[10]), .B(DIn[11]), .CI(\add_3_root_add_57_6/carry[5] ), 
        .CO(\add_3_root_add_57_6/carry[6] ), .S(N64) );
  ADDFXL U904 ( .A(DIn[4]), .B(DIn[7]), .CI(\add_5_root_add_57_6/carry[5] ), 
        .CO(\add_5_root_add_57_6/carry[6] ), .S(N27) );
  ADDFXL U905 ( .A(DIn[8]), .B(DIn[9]), .CI(\r519/carry[5] ), .CO(
        \r519/carry[6] ), .S(N45) );
  ADDFXL U906 ( .A(DIn[4]), .B(DIn[6]), .CI(\add_5_root_add_58_6/carry[5] ), 
        .CO(\add_5_root_add_58_6/carry[6] ), .S(N127) );
  ADDFXL U907 ( .A(DIn[7]), .B(DIn[9]), .CI(\add_4_root_add_59_6/carry[5] ), 
        .CO(\add_4_root_add_59_6/carry[6] ), .S(N246) );
  ADDFXL U908 ( .A(DIn[3]), .B(DIn[6]), .CI(\add_5_root_add_59_6/carry[5] ), 
        .CO(\add_5_root_add_59_6/carry[6] ), .S(N227) );
  ADDFXL U909 ( .A(DIn[11]), .B(DIn[12]), .CI(\add_3_root_add_57_6/carry[6] ), 
        .CO(\add_3_root_add_57_6/carry[7] ), .S(N65) );
  ADDFXL U910 ( .A(DIn[5]), .B(DIn[8]), .CI(\add_5_root_add_57_6/carry[6] ), 
        .CO(\add_5_root_add_57_6/carry[7] ), .S(N28) );
  ADDFXL U911 ( .A(DIn[9]), .B(DIn[10]), .CI(\r519/carry[6] ), .CO(
        \r519/carry[7] ), .S(N46) );
  ADDFXL U912 ( .A(DIn[5]), .B(DIn[7]), .CI(\add_5_root_add_58_6/carry[6] ), 
        .CO(\add_5_root_add_58_6/carry[7] ), .S(N128) );
  ADDFXL U913 ( .A(DIn[8]), .B(DIn[10]), .CI(\add_4_root_add_59_6/carry[6] ), 
        .CO(\add_4_root_add_59_6/carry[7] ), .S(N247) );
  ADDFXL U914 ( .A(DIn[4]), .B(DIn[7]), .CI(\add_5_root_add_59_6/carry[6] ), 
        .CO(\add_5_root_add_59_6/carry[7] ), .S(N228) );
  CLKINVX1 U915 ( .A(n169), .Y(n460) );
  AOI222XL U916 ( .A0(Wa5[2]), .A1(n160), .B0(Wa3[2]), .B1(n391), .C0(Wa4[2]), 
        .C1(n162), .Y(n169) );
  ADDFXL U917 ( .A(DIn[12]), .B(DIn[13]), .CI(\add_3_root_add_57_6/carry[7] ), 
        .CO(\add_3_root_add_57_6/carry[8] ), .S(N66) );
  ADDFXL U918 ( .A(DIn[6]), .B(DIn[9]), .CI(\add_5_root_add_57_6/carry[7] ), 
        .CO(\add_5_root_add_57_6/carry[8] ), .S(N29) );
  ADDFXL U919 ( .A(DIn[10]), .B(DIn[11]), .CI(\r519/carry[7] ), .CO(
        \r519/carry[8] ), .S(N47) );
  ADDFXL U920 ( .A(DIn[6]), .B(DIn[8]), .CI(\add_5_root_add_58_6/carry[7] ), 
        .CO(\add_5_root_add_58_6/carry[8] ), .S(N129) );
  ADDFXL U921 ( .A(DIn[9]), .B(DIn[11]), .CI(\add_4_root_add_59_6/carry[7] ), 
        .CO(\add_4_root_add_59_6/carry[8] ), .S(N248) );
  ADDFXL U922 ( .A(DIn[5]), .B(DIn[8]), .CI(\add_5_root_add_59_6/carry[7] ), 
        .CO(\add_5_root_add_59_6/carry[8] ), .S(N229) );
  CLKINVX1 U923 ( .A(n168), .Y(n459) );
  AOI222XL U924 ( .A0(Wa5[3]), .A1(n389), .B0(Wa3[3]), .B1(n161), .C0(Wa4[3]), 
        .C1(n392), .Y(n168) );
  ADDFXL U925 ( .A(DIn[13]), .B(DIn[14]), .CI(\add_3_root_add_57_6/carry[8] ), 
        .CO(\add_3_root_add_57_6/carry[9] ), .S(N67) );
  ADDFXL U926 ( .A(DIn[7]), .B(DIn[10]), .CI(\add_5_root_add_57_6/carry[8] ), 
        .CO(\add_5_root_add_57_6/carry[9] ), .S(N30) );
  ADDFXL U927 ( .A(DIn[11]), .B(DIn[12]), .CI(\r519/carry[8] ), .CO(
        \r519/carry[9] ), .S(N48) );
  ADDFXL U928 ( .A(DIn[7]), .B(DIn[9]), .CI(\add_5_root_add_58_6/carry[8] ), 
        .CO(\add_5_root_add_58_6/carry[9] ), .S(N130) );
  ADDFXL U929 ( .A(DIn[10]), .B(DIn[12]), .CI(\add_4_root_add_59_6/carry[8] ), 
        .CO(\add_4_root_add_59_6/carry[9] ), .S(N249) );
  ADDFXL U930 ( .A(DIn[6]), .B(DIn[9]), .CI(\add_5_root_add_59_6/carry[8] ), 
        .CO(\add_5_root_add_59_6/carry[9] ), .S(N230) );
  CLKINVX1 U931 ( .A(n167), .Y(n458) );
  AOI222XL U932 ( .A0(Wa5[4]), .A1(n390), .B0(Wa3[4]), .B1(n391), .C0(Wa4[4]), 
        .C1(n393), .Y(n167) );
  ADDFXL U933 ( .A(DIn[8]), .B(DIn[11]), .CI(\add_5_root_add_57_6/carry[9] ), 
        .CO(\add_5_root_add_57_6/carry[10] ), .S(N31) );
  ADDFXL U934 ( .A(DIn[12]), .B(DIn[13]), .CI(\r519/carry[9] ), .CO(
        \r519/carry[10] ), .S(N49) );
  ADDFXL U935 ( .A(DIn[8]), .B(DIn[10]), .CI(\add_5_root_add_58_6/carry[9] ), 
        .CO(\add_5_root_add_58_6/carry[10] ), .S(N131) );
  ADDFXL U936 ( .A(DIn[11]), .B(DIn[13]), .CI(\add_4_root_add_59_6/carry[9] ), 
        .CO(\add_4_root_add_59_6/carry[10] ), .S(N250) );
  ADDFXL U937 ( .A(DIn[7]), .B(DIn[10]), .CI(\add_5_root_add_59_6/carry[9] ), 
        .CO(\add_5_root_add_59_6/carry[10] ), .S(N231) );
  CLKINVX1 U938 ( .A(n166), .Y(n457) );
  AOI222XL U939 ( .A0(Wa5[5]), .A1(n160), .B0(Wa3[5]), .B1(n161), .C0(Wa4[5]), 
        .C1(n162), .Y(n166) );
  ADDFXL U940 ( .A(DIn[9]), .B(DIn[12]), .CI(\add_5_root_add_57_6/carry[10] ), 
        .CO(\add_5_root_add_57_6/carry[11] ), .S(N32) );
  ADDFXL U941 ( .A(DIn[13]), .B(DIn[14]), .CI(\r519/carry[10] ), .CO(
        \r519/carry[11] ), .S(N50) );
  ADDFXL U942 ( .A(DIn[9]), .B(DIn[11]), .CI(\add_5_root_add_58_6/carry[10] ), 
        .CO(\add_5_root_add_58_6/carry[11] ), .S(N132) );
  ADDFXL U943 ( .A(DIn[12]), .B(DIn[14]), .CI(\add_4_root_add_59_6/carry[10] ), 
        .CO(\add_4_root_add_59_6/carry[11] ), .S(N251) );
  ADDFXL U944 ( .A(DIn[8]), .B(DIn[11]), .CI(\add_5_root_add_59_6/carry[10] ), 
        .CO(\add_5_root_add_59_6/carry[11] ), .S(N232) );
  ADDFXL U945 ( .A(\Wb3[5] ), .B(\Wb3[3] ), .CI(
        \add_29_root_sub_0_root_add_167_2/carry[7] ), .CO(
        \add_29_root_sub_0_root_add_167_2/carry[8] ), .S(N1008) );
  CLKINVX1 U946 ( .A(n165), .Y(n456) );
  AOI222XL U947 ( .A0(Wa5[6]), .A1(n389), .B0(Wa3[6]), .B1(n391), .C0(Wa4[6]), 
        .C1(n392), .Y(n165) );
  ADDFXL U948 ( .A(DIn[10]), .B(DIn[13]), .CI(\add_5_root_add_57_6/carry[11] ), 
        .CO(\add_5_root_add_57_6/carry[12] ), .S(N33) );
  ADDFXL U949 ( .A(DIn[10]), .B(DIn[12]), .CI(\add_5_root_add_58_6/carry[11] ), 
        .CO(\add_5_root_add_58_6/carry[12] ), .S(N133) );
  ADDFXL U950 ( .A(DIn[13]), .B(N260), .CI(\add_4_root_add_59_6/carry[11] ), 
        .CO(\add_4_root_add_59_6/carry[12] ), .S(N252) );
  ADDFXL U951 ( .A(DIn[9]), .B(DIn[12]), .CI(\add_5_root_add_59_6/carry[11] ), 
        .CO(\add_5_root_add_59_6/carry[12] ), .S(N233) );
  ADDFXL U952 ( .A(\Wb3[6] ), .B(\Wb3[4] ), .CI(
        \add_29_root_sub_0_root_add_167_2/carry[8] ), .CO(
        \add_29_root_sub_0_root_add_167_2/carry[9] ), .S(N1009) );
  CLKINVX1 U953 ( .A(n164), .Y(n455) );
  AOI222XL U954 ( .A0(Wa5[7]), .A1(n390), .B0(Wa3[7]), .B1(n161), .C0(Wa4[7]), 
        .C1(n393), .Y(n164) );
  ADDFXL U955 ( .A(\Wb3[6] ), .B(extended_m1[9]), .CI(
        \add_26_root_sub_0_root_add_167_2/carry [7]), .CO(
        \add_26_root_sub_0_root_add_167_2/carry [8]), .S(\Wb2[7] ) );
  ADDFXL U956 ( .A(DIn[11]), .B(DIn[14]), .CI(\add_5_root_add_57_6/carry[12] ), 
        .CO(\add_5_root_add_57_6/carry[13] ), .S(N34) );
  ADDFXL U957 ( .A(DIn[11]), .B(DIn[13]), .CI(\add_5_root_add_58_6/carry[12] ), 
        .CO(\add_5_root_add_58_6/carry[13] ), .S(N134) );
  ADDFXL U958 ( .A(DIn[10]), .B(DIn[13]), .CI(\add_5_root_add_59_6/carry[12] ), 
        .CO(\add_5_root_add_59_6/carry[13] ), .S(N234) );
  ADDFXL U959 ( .A(extended_m4[9]), .B(extended_m4[11]), .CI(
        \add_22_root_add_167_2/carry[8] ), .CO(
        \add_22_root_add_167_2/carry[9] ), .S(\add_22_root_add_167_2/SUM[8] )
         );
  ADDFXL U960 ( .A(\Wb3[3] ), .B(extended_m3[16]), .CI(
        \add_28_root_sub_0_root_add_167_2/carry[10] ), .CO(
        \add_28_root_sub_0_root_add_167_2/carry[11] ), .S(\Wb3[10] ) );
  ADDFXL U961 ( .A(\Wb3[7] ), .B(\Wb3[5] ), .CI(
        \add_29_root_sub_0_root_add_167_2/carry[9] ), .CO(
        \add_29_root_sub_0_root_add_167_2/carry[10] ), .S(N1010) );
  CLKINVX1 U962 ( .A(n163), .Y(n454) );
  AOI222XL U963 ( .A0(Wa5[8]), .A1(n160), .B0(Wa3[8]), .B1(n391), .C0(Wa4[8]), 
        .C1(n162), .Y(n163) );
  ADDFXL U964 ( .A(\Wb3[7] ), .B(extended_m1[10]), .CI(
        \add_26_root_sub_0_root_add_167_2/carry [8]), .CO(
        \add_26_root_sub_0_root_add_167_2/carry [9]), .S(\Wb2[8] ) );
  ADDFXL U965 ( .A(DIn[12]), .B(N260), .CI(\add_5_root_add_57_6/carry[13] ), 
        .CO(\add_5_root_add_57_6/carry[14] ), .S(N35) );
  ADDFXL U966 ( .A(DIn[12]), .B(DIn[14]), .CI(\add_5_root_add_58_6/carry[13] ), 
        .CO(\add_5_root_add_58_6/carry[14] ), .S(N135) );
  ADDFXL U967 ( .A(DIn[11]), .B(DIn[14]), .CI(\add_5_root_add_59_6/carry[13] ), 
        .CO(\add_5_root_add_59_6/carry[14] ), .S(N235) );
  ADDFXL U968 ( .A(extended_m4[10]), .B(\Wb4[0] ), .CI(
        \add_22_root_add_167_2/carry[9] ), .CO(
        \add_22_root_add_167_2/carry[10] ), .S(\add_22_root_add_167_2/SUM[9] )
         );
  ADDFXL U969 ( .A(\Wb3[4] ), .B(extended_m3[17]), .CI(
        \add_28_root_sub_0_root_add_167_2/carry[11] ), .CO(
        \add_28_root_sub_0_root_add_167_2/carry[12] ), .S(\Wb3[11] ) );
  ADDFXL U970 ( .A(extended_m3[14]), .B(\Wb3[6] ), .CI(
        \add_29_root_sub_0_root_add_167_2/carry[10] ), .CO(
        \add_29_root_sub_0_root_add_167_2/carry[11] ), .S(N1011) );
  CLKINVX1 U971 ( .A(n159), .Y(n453) );
  AOI222XL U972 ( .A0(Wa5[9]), .A1(n389), .B0(Wa3[9]), .B1(n161), .C0(Wa4[9]), 
        .C1(n392), .Y(n159) );
  ADDFXL U973 ( .A(extended_m3[14]), .B(extended_m1[11]), .CI(
        \add_26_root_sub_0_root_add_167_2/carry [9]), .CO(
        \add_26_root_sub_0_root_add_167_2/carry [10]), .S(\Wb2[9] ) );
  ADDFXL U974 ( .A(N953), .B(extended_m2[18]), .CI(
        \add_32_root_sub_0_root_add_167_2/carry[11] ), .CO(
        \add_32_root_sub_0_root_add_167_2/carry[12] ), .S(N962) );
  ADDFXL U975 ( .A(DIn[13]), .B(N260), .CI(\add_5_root_add_57_6/carry[14] ), 
        .CO(\add_5_root_add_57_6/carry[15] ), .S(N36) );
  ADDFXL U976 ( .A(DIn[13]), .B(N260), .CI(\add_5_root_add_58_6/carry[14] ), 
        .CO(\add_5_root_add_58_6/carry[15] ), .S(N136) );
  ADDFXL U977 ( .A(DIn[12]), .B(N260), .CI(\add_5_root_add_59_6/carry[14] ), 
        .CO(\add_5_root_add_59_6/carry[15] ), .S(N236) );
  ADDFXL U978 ( .A(extended_m4[11]), .B(n387), .CI(
        \add_22_root_add_167_2/carry[10] ), .CO(
        \add_22_root_add_167_2/carry[11] ), .S(\add_22_root_add_167_2/SUM[10] ) );
  ADDFXL U979 ( .A(\Wb3[5] ), .B(extended_m3[18]), .CI(
        \add_28_root_sub_0_root_add_167_2/carry[12] ), .CO(
        \add_28_root_sub_0_root_add_167_2/carry[13] ), .S(\Wb3[12] ) );
  ADDFXL U980 ( .A(extended_m3[15]), .B(\Wb3[7] ), .CI(
        \add_29_root_sub_0_root_add_167_2/carry[11] ), .CO(
        \add_29_root_sub_0_root_add_167_2/carry[12] ), .S(N1012) );
  CLKINVX1 U981 ( .A(n183), .Y(n452) );
  AOI222XL U982 ( .A0(Wa5[10]), .A1(n390), .B0(Wa3[10]), .B1(n161), .C0(
        Wa4[10]), .C1(n162), .Y(n183) );
  ADDFXL U983 ( .A(extended_m3[15]), .B(extended_m1[12]), .CI(
        \add_26_root_sub_0_root_add_167_2/carry [10]), .CO(
        \add_26_root_sub_0_root_add_167_2/carry [11]), .S(\Wb2[10] ) );
  ADDFXL U984 ( .A(extended_m1[9]), .B(n430), .CI(
        \add_25_root_sub_0_root_add_167_2/carry[10] ), .CO(
        \add_25_root_sub_0_root_add_167_2/carry[11] ), .S(\Wb0[10] ) );
  ADDFXL U985 ( .A(N954), .B(extended_m2[19]), .CI(
        \add_32_root_sub_0_root_add_167_2/carry[12] ), .CO(
        \add_32_root_sub_0_root_add_167_2/carry[13] ), .S(N963) );
  ADDFXL U986 ( .A(DIn[13]), .B(N260), .CI(\add_5_root_add_59_6/carry[15] ), 
        .CO(\add_5_root_add_59_6/carry[16] ), .S(N237) );
  ADDFXL U987 ( .A(\Wb4[0] ), .B(n385), .CI(\add_22_root_add_167_2/carry[11] ), 
        .CO(\add_22_root_add_167_2/carry[12] ), .S(
        \add_22_root_add_167_2/SUM[11] ) );
  ADDFXL U988 ( .A(\Wb3[6] ), .B(extended_m3[19]), .CI(
        \add_28_root_sub_0_root_add_167_2/carry[13] ), .CO(
        \add_28_root_sub_0_root_add_167_2/carry[14] ), .S(\Wb3[13] ) );
  ADDFXL U989 ( .A(extended_m3[16]), .B(extended_m3[14]), .CI(
        \add_29_root_sub_0_root_add_167_2/carry[12] ), .CO(
        \add_29_root_sub_0_root_add_167_2/carry[13] ), .S(N1013) );
  CLKINVX1 U990 ( .A(n182), .Y(n451) );
  AOI222XL U991 ( .A0(Wa5[11]), .A1(n389), .B0(Wa3[11]), .B1(n391), .C0(
        Wa4[11]), .C1(n162), .Y(n182) );
  ADDFXL U992 ( .A(extended_m3[16]), .B(\Wb0[0] ), .CI(
        \add_26_root_sub_0_root_add_167_2/carry [11]), .CO(
        \add_26_root_sub_0_root_add_167_2/carry [12]), .S(\Wb2[11] ) );
  ADDFXL U993 ( .A(extended_m1[10]), .B(n430), .CI(
        \add_25_root_sub_0_root_add_167_2/carry[11] ), .CO(
        \add_25_root_sub_0_root_add_167_2/carry[12] ), .S(\Wb0[11] ) );
  ADDFXL U994 ( .A(N955), .B(extended_m2[20]), .CI(
        \add_32_root_sub_0_root_add_167_2/carry[13] ), .CO(
        \add_32_root_sub_0_root_add_167_2/carry[14] ), .S(N964) );
  ADDFXL U995 ( .A(\Wb3[7] ), .B(extended_m3[20]), .CI(
        \add_28_root_sub_0_root_add_167_2/carry[14] ), .CO(
        \add_28_root_sub_0_root_add_167_2/carry[15] ), .S(\Wb3[14] ) );
  ADDFXL U996 ( .A(extended_m3[17]), .B(extended_m3[15]), .CI(
        \add_29_root_sub_0_root_add_167_2/carry[13] ), .CO(
        \add_29_root_sub_0_root_add_167_2/carry[14] ), .S(N1014) );
  CLKINVX1 U997 ( .A(n181), .Y(n450) );
  AOI222XL U998 ( .A0(Wa5[12]), .A1(n390), .B0(Wa3[12]), .B1(n161), .C0(
        Wa4[12]), .C1(n392), .Y(n181) );
  ADDFXL U999 ( .A(extended_m3[17]), .B(\Wb0[1] ), .CI(
        \add_26_root_sub_0_root_add_167_2/carry [12]), .CO(
        \add_26_root_sub_0_root_add_167_2/carry [13]), .S(\Wb2[12] ) );
  ADDFXL U1000 ( .A(extended_m1[11]), .B(n430), .CI(
        \add_25_root_sub_0_root_add_167_2/carry[12] ), .CO(
        \add_25_root_sub_0_root_add_167_2/carry[13] ), .S(\Wb0[12] ) );
  ADDFXL U1001 ( .A(N956), .B(extended_m2[21]), .CI(
        \add_32_root_sub_0_root_add_167_2/carry[14] ), .CO(
        \add_32_root_sub_0_root_add_167_2/carry[15] ), .S(N965) );
  ADDFXL U1002 ( .A(n372), .B(extended_m4[9]), .CI(
        \add_17_root_sub_0_root_add_167_2/carry[9] ), .CO(
        \add_17_root_sub_0_root_add_167_2/carry[10] ), .S(\Wb4[9] ) );
  ADDFXL U1003 ( .A(extended_m3[14]), .B(extended_m3[21]), .CI(
        \add_28_root_sub_0_root_add_167_2/carry[15] ), .CO(
        \add_28_root_sub_0_root_add_167_2/carry[16] ), .S(\Wb3[15] ) );
  ADDFXL U1004 ( .A(extended_m3[18]), .B(extended_m3[16]), .CI(
        \add_29_root_sub_0_root_add_167_2/carry[14] ), .CO(
        \add_29_root_sub_0_root_add_167_2/carry[15] ), .S(N1015) );
  CLKINVX1 U1005 ( .A(n180), .Y(n449) );
  AOI222XL U1006 ( .A0(Wa5[13]), .A1(n390), .B0(Wa3[13]), .B1(n391), .C0(
        Wa4[13]), .C1(n392), .Y(n180) );
  ADDFXL U1007 ( .A(extended_m3[18]), .B(\Wb0[2] ), .CI(
        \add_26_root_sub_0_root_add_167_2/carry [13]), .CO(
        \add_26_root_sub_0_root_add_167_2/carry [14]), .S(\Wb2[13] ) );
  ADDFXL U1008 ( .A(extended_m1[12]), .B(n430), .CI(
        \add_25_root_sub_0_root_add_167_2/carry[13] ), .CO(
        \add_25_root_sub_0_root_add_167_2/carry[14] ), .S(\Wb0[13] ) );
  ADDFXL U1009 ( .A(N957), .B(extended_m2_24), .CI(
        \add_32_root_sub_0_root_add_167_2/carry[15] ), .CO(
        \add_32_root_sub_0_root_add_167_2/carry[16] ), .S(N966) );
  ADDFXL U1010 ( .A(n369), .B(extended_m4[10]), .CI(
        \add_17_root_sub_0_root_add_167_2/carry[10] ), .CO(
        \add_17_root_sub_0_root_add_167_2/carry[11] ), .S(\Wb4[10] ) );
  ADDFXL U1011 ( .A(extended_m3[15]), .B(n427), .CI(
        \add_28_root_sub_0_root_add_167_2/carry[16] ), .CO(
        \add_28_root_sub_0_root_add_167_2/carry[17] ), .S(\Wb3[16] ) );
  ADDFXL U1012 ( .A(extended_m3[19]), .B(extended_m3[17]), .CI(
        \add_29_root_sub_0_root_add_167_2/carry[15] ), .CO(
        \add_29_root_sub_0_root_add_167_2/carry[16] ), .S(N1016) );
  CLKINVX1 U1013 ( .A(n179), .Y(n448) );
  AOI222XL U1014 ( .A0(Wa5[14]), .A1(n160), .B0(Wa3[14]), .B1(n161), .C0(
        Wa4[14]), .C1(n162), .Y(n179) );
  ADDFXL U1015 ( .A(extended_m3[19]), .B(\Wb0[3] ), .CI(
        \add_26_root_sub_0_root_add_167_2/carry [14]), .CO(
        \add_26_root_sub_0_root_add_167_2/carry [15]), .S(\Wb2[14] ) );
  ADDFXL U1016 ( .A(\Wb0[0] ), .B(n430), .CI(
        \add_25_root_sub_0_root_add_167_2/carry[14] ), .CO(
        \add_25_root_sub_0_root_add_167_2/carry[15] ), .S(\Wb0[14] ) );
  ADDFXL U1017 ( .A(N958), .B(n429), .CI(
        \add_32_root_sub_0_root_add_167_2/carry[16] ), .CO(
        \add_32_root_sub_0_root_add_167_2/carry[17] ), .S(N967) );
  ADDFXL U1018 ( .A(n370), .B(extended_m4[11]), .CI(
        \add_17_root_sub_0_root_add_167_2/carry[11] ), .CO(
        \add_17_root_sub_0_root_add_167_2/carry[12] ), .S(\Wb4[11] ) );
  ADDFXL U1019 ( .A(extended_m3[16]), .B(n427), .CI(
        \add_28_root_sub_0_root_add_167_2/carry[17] ), .CO(
        \add_28_root_sub_0_root_add_167_2/carry[18] ), .S(\Wb3[17] ) );
  ADDFXL U1020 ( .A(extended_m3[20]), .B(extended_m3[18]), .CI(
        \add_29_root_sub_0_root_add_167_2/carry[16] ), .CO(
        \add_29_root_sub_0_root_add_167_2/carry[17] ), .S(N1017) );
  CLKINVX1 U1021 ( .A(n178), .Y(n447) );
  AOI222XL U1022 ( .A0(Wa5[15]), .A1(n390), .B0(Wa3[15]), .B1(n391), .C0(
        Wa4[15]), .C1(n392), .Y(n178) );
  ADDFXL U1023 ( .A(extended_m3[20]), .B(\Wb0[4] ), .CI(
        \add_26_root_sub_0_root_add_167_2/carry [15]), .CO(
        \add_26_root_sub_0_root_add_167_2/carry [16]), .S(\Wb2[15] ) );
  ADDFXL U1024 ( .A(\Wb0[1] ), .B(n430), .CI(
        \add_25_root_sub_0_root_add_167_2/carry[15] ), .CO(
        \add_25_root_sub_0_root_add_167_2/carry[16] ), .S(\Wb0[15] ) );
  ADDFXL U1025 ( .A(N959), .B(n429), .CI(
        \add_32_root_sub_0_root_add_167_2/carry[17] ), .CO(
        \add_32_root_sub_0_root_add_167_2/carry[18] ), .S(N968) );
  ADDFXL U1026 ( .A(n370), .B(\Wb4[0] ), .CI(
        \add_17_root_sub_0_root_add_167_2/carry[12] ), .CO(
        \add_17_root_sub_0_root_add_167_2/carry[13] ), .S(\Wb4[12] ) );
  ADDFXL U1027 ( .A(extended_m3[17]), .B(n427), .CI(
        \add_28_root_sub_0_root_add_167_2/carry[18] ), .CO(
        \add_28_root_sub_0_root_add_167_2/carry[19] ), .S(\Wb3[18] ) );
  ADDFXL U1028 ( .A(extended_m3[21]), .B(extended_m3[19]), .CI(
        \add_29_root_sub_0_root_add_167_2/carry[17] ), .CO(
        \add_29_root_sub_0_root_add_167_2/carry[18] ), .S(N1018) );
  CLKINVX1 U1029 ( .A(n177), .Y(n446) );
  AOI222XL U1030 ( .A0(Wa5[16]), .A1(n390), .B0(Wa3[16]), .B1(n161), .C0(
        Wa4[16]), .C1(n162), .Y(n177) );
  ADDFXL U1031 ( .A(extended_m3[21]), .B(\Wb0[5] ), .CI(
        \add_26_root_sub_0_root_add_167_2/carry [16]), .CO(
        \add_26_root_sub_0_root_add_167_2/carry [17]), .S(\Wb2[16] ) );
  ADDFXL U1032 ( .A(\Wb0[2] ), .B(n430), .CI(
        \add_25_root_sub_0_root_add_167_2/carry[16] ), .CO(
        \add_25_root_sub_0_root_add_167_2/carry[17] ), .S(\Wb0[16] ) );
  ADDFXL U1033 ( .A(extended_m2[16]), .B(extended_m2_24), .CI(
        \add_32_root_sub_0_root_add_167_2/carry[18] ), .CO(
        \add_32_root_sub_0_root_add_167_2/carry[19] ), .S(N969) );
  ADDFXL U1034 ( .A(extended_m3[18]), .B(n427), .CI(
        \add_28_root_sub_0_root_add_167_2/carry[19] ), .CO(
        \add_28_root_sub_0_root_add_167_2/carry[20] ), .S(\Wb3[19] ) );
  ADDFXL U1035 ( .A(n427), .B(extended_m3[20]), .CI(
        \add_29_root_sub_0_root_add_167_2/carry[18] ), .CO(
        \add_29_root_sub_0_root_add_167_2/carry[19] ), .S(N1019) );
  CLKINVX1 U1036 ( .A(n176), .Y(n445) );
  AOI222XL U1037 ( .A0(Wa5[17]), .A1(n160), .B0(Wa3[17]), .B1(n391), .C0(
        Wa4[17]), .C1(n162), .Y(n176) );
  ADDFXL U1038 ( .A(n428), .B(\Wb0[6] ), .CI(
        \add_26_root_sub_0_root_add_167_2/carry [17]), .CO(
        \add_26_root_sub_0_root_add_167_2/carry [18]), .S(\Wb2[17] ) );
  ADDFXL U1039 ( .A(\Wb0[3] ), .B(n431), .CI(
        \add_25_root_sub_0_root_add_167_2/carry[17] ), .CO(
        \add_25_root_sub_0_root_add_167_2/carry[18] ), .S(\Wb0[17] ) );
  ADDFXL U1040 ( .A(extended_m2[17]), .B(extended_m2_24), .CI(
        \add_32_root_sub_0_root_add_167_2/carry[19] ), .CO(
        \add_32_root_sub_0_root_add_167_2/carry[20] ), .S(N970) );
  ADDFXL U1041 ( .A(extended_m3[19]), .B(n427), .CI(
        \add_28_root_sub_0_root_add_167_2/carry[20] ), .CO(
        \add_28_root_sub_0_root_add_167_2/carry[21] ), .S(\Wb3[20] ) );
  CLKINVX1 U1042 ( .A(n175), .Y(n444) );
  AOI222XL U1043 ( .A0(Wa5[18]), .A1(n389), .B0(Wa3[18]), .B1(n161), .C0(
        Wa4[18]), .C1(n392), .Y(n175) );
  ADDFXL U1044 ( .A(n427), .B(\Wb0[7] ), .CI(
        \add_26_root_sub_0_root_add_167_2/carry [18]), .CO(
        \add_26_root_sub_0_root_add_167_2/carry [19]), .S(\Wb2[18] ) );
  ADDFXL U1045 ( .A(\Wb0[4] ), .B(n431), .CI(
        \add_25_root_sub_0_root_add_167_2/carry[18] ), .CO(
        \add_25_root_sub_0_root_add_167_2/carry[19] ), .S(\Wb0[18] ) );
  ADDFXL U1046 ( .A(extended_m2[18]), .B(n429), .CI(
        \add_32_root_sub_0_root_add_167_2/carry[20] ), .CO(
        \add_32_root_sub_0_root_add_167_2/carry[21] ), .S(N971) );
  ADDFXL U1047 ( .A(extended_m3[20]), .B(n426), .CI(
        \add_28_root_sub_0_root_add_167_2/carry[21] ), .CO(
        \add_28_root_sub_0_root_add_167_2/carry[22] ), .S(\Wb3[21] ) );
  CLKINVX1 U1048 ( .A(n174), .Y(n443) );
  AOI222XL U1049 ( .A0(Wa5[19]), .A1(n390), .B0(Wa3[19]), .B1(n391), .C0(
        Wa4[19]), .C1(n393), .Y(n174) );
  ADDFXL U1050 ( .A(n427), .B(extended_m1[21]), .CI(
        \add_26_root_sub_0_root_add_167_2/carry [19]), .CO(
        \add_26_root_sub_0_root_add_167_2/carry [20]), .S(\Wb2[19] ) );
  ADDFXL U1051 ( .A(\Wb0[5] ), .B(n431), .CI(
        \add_25_root_sub_0_root_add_167_2/carry[19] ), .CO(
        \add_25_root_sub_0_root_add_167_2/carry[20] ), .S(\Wb0[19] ) );
  ADDFXL U1052 ( .A(extended_m2[19]), .B(extended_m2_24), .CI(
        \add_32_root_sub_0_root_add_167_2/carry[21] ), .CO(
        \add_32_root_sub_0_root_add_167_2/carry[22] ), .S(N972) );
  CLKINVX1 U1053 ( .A(n172), .Y(n442) );
  AOI222XL U1054 ( .A0(Wa5[20]), .A1(n389), .B0(Wa3[20]), .B1(n391), .C0(
        Wa4[20]), .C1(n392), .Y(n172) );
  ADDFXL U1055 ( .A(\Wb0[6] ), .B(n431), .CI(
        \add_25_root_sub_0_root_add_167_2/carry[20] ), .CO(
        \add_25_root_sub_0_root_add_167_2/carry[21] ), .S(\Wb0[20] ) );
  ADDFXL U1056 ( .A(extended_m2[20]), .B(n429), .CI(
        \add_32_root_sub_0_root_add_167_2/carry[22] ), .CO(
        \add_32_root_sub_0_root_add_167_2/carry[23] ), .S(N973) );
  CLKINVX1 U1057 ( .A(n171), .Y(n441) );
  AOI222XL U1058 ( .A0(Wa5[21]), .A1(n390), .B0(Wa3[21]), .B1(n161), .C0(
        Wa4[21]), .C1(n393), .Y(n171) );
  ADDFXL U1059 ( .A(\Wb0[7] ), .B(n431), .CI(
        \add_25_root_sub_0_root_add_167_2/carry[21] ), .CO(
        \add_25_root_sub_0_root_add_167_2/carry[22] ), .S(\Wb0[21] ) );
  OAI2BB1X1 U1060 ( .A0N(Wa3[22]), .A1N(n391), .B0(n170), .Y(pa_weight[22]) );
  OAI31XL U1061 ( .A0(n402), .A1(over[0]), .A2(n206), .B0(n207), .Y(N1583) );
  OAI2BB1X1 U1062 ( .A0N(n468), .A1N(WAddr[0]), .B0(n394), .Y(n207) );
  CLKINVX1 U1063 ( .A(last[1]), .Y(n467) );
  CLKINVX1 U1064 ( .A(last[0]), .Y(n466) );
  NAND2X1 U1065 ( .A(WEN), .B(load), .Y(N1219) );
  CLKINVX1 U1066 ( .A(over[1]), .Y(n469) );
  NOR4X1 U1067 ( .A(n191), .B(RAddr[16]), .C(RAddr[18]), .D(RAddr[17]), .Y(
        n186) );
  NOR4X1 U1068 ( .A(n190), .B(RAddr[2]), .C(RAddr[4]), .D(RAddr[3]), .Y(n187)
         );
  CLKBUFX3 U1069 ( .A(extended_m2_24), .Y(n429) );
  OR2X1 U1070 ( .A(\next_counter[0] ), .B(rst), .Y(N1174) );
  AND2X1 U1071 ( .A(N951), .B(extended_m2[16]), .Y(
        \add_32_root_sub_0_root_add_167_2/carry[10] ) );
  XOR2X1 U1072 ( .A(extended_m2[16]), .B(N951), .Y(N960) );
  AND2X1 U1073 ( .A(\Wb3[1] ), .B(extended_m3[14]), .Y(
        \add_28_root_sub_0_root_add_167_2/carry[9] ) );
  XOR2X1 U1074 ( .A(extended_m3[14]), .B(\Wb3[1] ), .Y(\Wb3[8] ) );
  AND2X1 U1075 ( .A(extended_m1[7]), .B(extended_m1[21]), .Y(
        \add_25_root_sub_0_root_add_167_2/carry[9] ) );
  XOR2X1 U1076 ( .A(extended_m1[21]), .B(extended_m1[7]), .Y(\Wb0[8] ) );
  AND2X1 U1077 ( .A(n376), .B(extended_m4[7]), .Y(
        \add_17_root_sub_0_root_add_167_2/carry[8] ) );
  XOR2X1 U1078 ( .A(extended_m4[7]), .B(n376), .Y(\Wb4[7] ) );
  AND2X1 U1079 ( .A(extended_m4[7]), .B(extended_m4[9]), .Y(
        \add_22_root_add_167_2/carry[7] ) );
  XOR2X1 U1080 ( .A(extended_m4[9]), .B(extended_m4[7]), .Y(
        \add_22_root_add_167_2/SUM[6] ) );
  AND2X1 U1081 ( .A(\Wb3[3] ), .B(\Wb3[1] ), .Y(
        \add_29_root_sub_0_root_add_167_2/carry[6] ) );
  XOR2X1 U1082 ( .A(\Wb3[1] ), .B(\Wb3[3] ), .Y(N1006) );
  AND2X1 U1083 ( .A(\Wb3[4] ), .B(extended_m1[7]), .Y(
        \add_26_root_sub_0_root_add_167_2/carry [6]) );
  XOR2X1 U1084 ( .A(extended_m1[7]), .B(\Wb3[4] ), .Y(\Wb2[5] ) );
  AND2X1 U1085 ( .A(DIn[0]), .B(DIn[3]), .Y(\add_5_root_add_59_6/carry[3] ) );
  XOR2X1 U1086 ( .A(DIn[3]), .B(DIn[0]), .Y(N224) );
  AND2X1 U1087 ( .A(DIn[0]), .B(N223), .Y(\add_5_root_add_58_6/carry[2] ) );
  XOR2X1 U1088 ( .A(N223), .B(DIn[0]), .Y(N123) );
  AND2X1 U1089 ( .A(DIn[0]), .B(DIn[3]), .Y(\add_5_root_add_57_6/carry[2] ) );
  XOR2X1 U1090 ( .A(DIn[3]), .B(DIn[0]), .Y(N23) );
  AND2X1 U1091 ( .A(DIn[7]), .B(DIn[8]), .Y(\r525/carry[1] ) );
  XOR2X1 U1092 ( .A(DIn[8]), .B(DIn[7]), .Y(N159) );
  AND2X1 U1093 ( .A(N223), .B(DIn[4]), .Y(\add_4_root_add_59_6/carry[1] ) );
  XOR2X1 U1094 ( .A(DIn[4]), .B(N223), .Y(N241) );
  AND2X1 U1095 ( .A(DIn[5]), .B(DIn[6]), .Y(\add_3_root_add_57_6/carry[1] ) );
  XOR2X1 U1096 ( .A(DIn[6]), .B(DIn[5]), .Y(N59) );
  AND2X1 U1097 ( .A(DIn[3]), .B(DIn[4]), .Y(\r519/carry[1] ) );
  XOR2X1 U1098 ( .A(DIn[4]), .B(DIn[3]), .Y(N40) );
  XNOR2X1 U1099 ( .A(RAddr[19]), .B(\sub_147_aco/carry [19]), .Y(N1337) );
  OR2X1 U1100 ( .A(RAddr[18]), .B(\sub_147_aco/carry [18]), .Y(
        \sub_147_aco/carry [19]) );
  XNOR2X1 U1101 ( .A(\sub_147_aco/carry [18]), .B(RAddr[18]), .Y(N1336) );
  OR2X1 U1102 ( .A(RAddr[17]), .B(\sub_147_aco/carry [17]), .Y(
        \sub_147_aco/carry [18]) );
  XNOR2X1 U1103 ( .A(\sub_147_aco/carry [17]), .B(RAddr[17]), .Y(N1335) );
  OR2X1 U1104 ( .A(RAddr[16]), .B(\sub_147_aco/carry [16]), .Y(
        \sub_147_aco/carry [17]) );
  XNOR2X1 U1105 ( .A(\sub_147_aco/carry [16]), .B(RAddr[16]), .Y(N1334) );
  OR2X1 U1106 ( .A(RAddr[15]), .B(\sub_147_aco/carry [15]), .Y(
        \sub_147_aco/carry [16]) );
  XNOR2X1 U1107 ( .A(\sub_147_aco/carry [15]), .B(RAddr[15]), .Y(N1333) );
  OR2X1 U1108 ( .A(RAddr[14]), .B(\sub_147_aco/carry [14]), .Y(
        \sub_147_aco/carry [15]) );
  XNOR2X1 U1109 ( .A(\sub_147_aco/carry [14]), .B(RAddr[14]), .Y(N1332) );
  OR2X1 U1110 ( .A(RAddr[13]), .B(\sub_147_aco/carry [13]), .Y(
        \sub_147_aco/carry [14]) );
  XNOR2X1 U1111 ( .A(\sub_147_aco/carry [13]), .B(RAddr[13]), .Y(N1331) );
  OR2X1 U1112 ( .A(RAddr[12]), .B(\sub_147_aco/carry [12]), .Y(
        \sub_147_aco/carry [13]) );
  XNOR2X1 U1113 ( .A(\sub_147_aco/carry [12]), .B(RAddr[12]), .Y(N1330) );
  OR2X1 U1114 ( .A(RAddr[11]), .B(\sub_147_aco/carry [11]), .Y(
        \sub_147_aco/carry [12]) );
  XNOR2X1 U1115 ( .A(\sub_147_aco/carry [11]), .B(RAddr[11]), .Y(N1329) );
  OR2X1 U1116 ( .A(RAddr[10]), .B(\sub_147_aco/carry [10]), .Y(
        \sub_147_aco/carry [11]) );
  XNOR2X1 U1117 ( .A(\sub_147_aco/carry [10]), .B(RAddr[10]), .Y(N1328) );
  OR2X1 U1118 ( .A(RAddr[9]), .B(\sub_147_aco/carry [9]), .Y(
        \sub_147_aco/carry [10]) );
  XNOR2X1 U1119 ( .A(\sub_147_aco/carry [9]), .B(RAddr[9]), .Y(N1327) );
  OR2X1 U1120 ( .A(RAddr[8]), .B(\sub_147_aco/carry [8]), .Y(
        \sub_147_aco/carry [9]) );
  XNOR2X1 U1121 ( .A(\sub_147_aco/carry [8]), .B(RAddr[8]), .Y(N1326) );
  OR2X1 U1122 ( .A(RAddr[7]), .B(\sub_147_aco/carry [7]), .Y(
        \sub_147_aco/carry [8]) );
  XNOR2X1 U1123 ( .A(\sub_147_aco/carry [7]), .B(RAddr[7]), .Y(N1325) );
  OR2X1 U1124 ( .A(RAddr[6]), .B(\sub_147_aco/carry [6]), .Y(
        \sub_147_aco/carry [7]) );
  XNOR2X1 U1125 ( .A(\sub_147_aco/carry [6]), .B(RAddr[6]), .Y(N1324) );
  OR2X1 U1126 ( .A(RAddr[5]), .B(\sub_147_aco/carry [5]), .Y(
        \sub_147_aco/carry [6]) );
  XNOR2X1 U1127 ( .A(\sub_147_aco/carry [5]), .B(RAddr[5]), .Y(N1323) );
  OR2X1 U1128 ( .A(RAddr[4]), .B(\sub_147_aco/carry [4]), .Y(
        \sub_147_aco/carry [5]) );
  XNOR2X1 U1129 ( .A(\sub_147_aco/carry [4]), .B(RAddr[4]), .Y(N1322) );
  OR2X1 U1130 ( .A(RAddr[3]), .B(\sub_147_aco/carry [3]), .Y(
        \sub_147_aco/carry [4]) );
  XNOR2X1 U1131 ( .A(\sub_147_aco/carry [3]), .B(RAddr[3]), .Y(N1321) );
  OR2X1 U1132 ( .A(RAddr[2]), .B(\sub_147_aco/carry [2]), .Y(
        \sub_147_aco/carry [3]) );
  XNOR2X1 U1133 ( .A(\sub_147_aco/carry [2]), .B(RAddr[2]), .Y(N1320) );
  OR2X1 U1134 ( .A(RAddr[1]), .B(\sub_147_aco/carry [1]), .Y(
        \sub_147_aco/carry [2]) );
  XNOR2X1 U1135 ( .A(\sub_147_aco/carry [1]), .B(RAddr[1]), .Y(N1319) );
  OR2X1 U1136 ( .A(n208), .B(RAddr[0]), .Y(\sub_147_aco/carry [1]) );
  XNOR2X1 U1137 ( .A(RAddr[0]), .B(n208), .Y(N1318) );
  OA21XL U1138 ( .A0(WAddr[1]), .A1(WAddr[0]), .B0(WAddr[2]), .Y(n434) );
  NOR4X1 U1139 ( .A(WAddr[12]), .B(WAddr[11]), .C(WAddr[10]), .D(n434), .Y(
        n440) );
  OR2X1 U1140 ( .A(WAddr[14]), .B(WAddr[13]), .Y(n435) );
  NOR4X1 U1141 ( .A(n435), .B(WAddr[15]), .C(WAddr[17]), .D(WAddr[16]), .Y(
        n439) );
  NOR4X1 U1142 ( .A(WAddr[4]), .B(WAddr[3]), .C(WAddr[19]), .D(WAddr[18]), .Y(
        n438) );
  OR2X1 U1143 ( .A(WAddr[6]), .B(WAddr[5]), .Y(n436) );
  NOR4X1 U1144 ( .A(n436), .B(WAddr[7]), .C(WAddr[9]), .D(WAddr[8]), .Y(n437)
         );
  NAND4X1 U1145 ( .A(n440), .B(n439), .C(n438), .D(n437), .Y(N1536) );
endmodule

