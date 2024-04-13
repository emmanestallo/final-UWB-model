%if you want to test the delay block, comment out its stdev
%the stdev will be obtained from the processing.m file

%% Delay Block
mean_delay = 125e-12; 
%stdev_delay = 0e-12;

tp_delay_b1 = mean_delay + normrnd(0, stdev_delay);
tp_delay_b2 = mean_delay + normrnd(0, stdev_delay);
tp_delay_b3 = mean_delay + normrnd(0, stdev_delay);
tp_delay_b4 = mean_delay + normrnd(0, stdev_delay);
tp_delay_b5 = mean_delay + normrnd(0, stdev_delay);
tp_delay_b6 = mean_delay + normrnd(0, stdev_delay);
tp_delay_b7 = mean_delay + normrnd(0, stdev_delay);
tp_delay_b8 = mean_delay + normrnd(0, stdev_delay);
tp_delay_b9 = mean_delay + normrnd(0, stdev_delay);
tp_delay_b10 = mean_delay + normrnd(0, stdev_delay);
tp_delay_b11 = mean_delay + normrnd(0, stdev_delay);
tp_delay_b12 = mean_delay + normrnd(0, stdev_delay);
tp_delay_b13 = mean_delay + normrnd(0, stdev_delay);
tp_delay_b14 = mean_delay + normrnd(0, stdev_delay);
tp_delay_b15 = mean_delay + normrnd(0, stdev_delay);
tp_delay_b16 = mean_delay + normrnd(0, stdev_delay);
tp_delay_b17 = mean_delay + normrnd(0, stdev_delay);
tp_delay_b18 = mean_delay + normrnd(0, stdev_delay);
tp_delay_b19 = mean_delay + normrnd(0, stdev_delay);
tp_delay_b20 = mean_delay + normrnd(0, stdev_delay);
tp_delay_b21 = mean_delay + normrnd(0, stdev_delay);
tp_delay_b22 = mean_delay + normrnd(0, stdev_delay);
tp_delay_b23 = mean_delay + normrnd(0, stdev_delay);
tp_delay_b24 = mean_delay + normrnd(0, stdev_delay);
tp_delay_b25 = mean_delay + normrnd(0, stdev_delay);
tp_delay_b26 = mean_delay + normrnd(0, stdev_delay);
tp_delay_b27 = mean_delay + normrnd(0, stdev_delay);
tp_delay_b28 = mean_delay + normrnd(0, stdev_delay);
tp_delay_b29 = mean_delay + normrnd(0, stdev_delay);
tp_delay_b30 = mean_delay + normrnd(0, stdev_delay);
tp_delay_b31 = mean_delay + normrnd(0, stdev_delay);


%% Router Setting

%sigma=1000p
[r1_1, r1_2, r1_4, r1_8] = deal(0,0,1,0);
[r2_1, r2_2, r2_4, r2_8] = deal(0,0,1,0);
[r3_1, r3_2, r3_4, r3_8] = deal(0,0,1,1);
[r4_1, r4_2, r4_4, r4_8] = deal(0,1,0,0);
[r5_1, r5_2, r5_4, r5_8] = deal(0,1,0,1);
[r6_1, r6_2, r6_4, r6_8] = deal(0,1,1,0);
[r7_1, r7_2, r7_4, r7_8] = deal(0,1,1,1);
[r8_1, r8_2, r8_4, r8_8] = deal(1,0,0,0);
[r9_1, r9_2, r9_4, r9_8] = deal(1,0,0,1);
[r10_1, r10_2, r10_4, r10_8] = deal(1,0,1,0);
[r11_1, r11_2, r11_4, r11_8] = deal(1,1,0,0);
[r12_1, r12_2, r12_4, r12_8] = deal(1,1,0,1);
[r13_1, r13_2, r13_4, r13_8] = deal(1,1,1,0);
[r14_1, r14_2, r14_4, r14_8] = deal(1,1,1,0);
[r15_1, r15_2, r15_4, r15_8] = deal(1,1,1,1);
[r16_1, r16_2, r16_4, r16_8] = deal(1,1,1,1);

%sigma=750p
%[r1_1, r1_2, r1_4, r1_8] = deal(0,0,0,0);
%[r2_1, r2_2, r2_4, r2_8] = deal(0,0,0,0);
%[r3_1, r3_2, r3_4, r3_8] = deal(0,0,0,1);
%[r4_1, r4_2, r4_4, r4_8] = deal(0,0,0,1);
%[r5_1, r5_2, r5_4, r5_8] = deal(0,0,1,0);
%[r6_1, r6_2, r6_4, r6_8] = deal(0,0,1,0);
%[r7_1, r7_2, r7_4, r7_8] = deal(0,0,1,1);
%[r8_1, r8_2, r8_4, r8_8] = deal(0,1,0,1);
%[r9_1, r9_2, r9_4, r9_8] = deal(0,1,1,0);
%[r10_1, r10_2, r10_4, r10_8] = deal(1,0,0,0);
%[r11_1, r11_2, r11_4, r11_8] = deal(1,0,0,1);
%[r12_1, r12_2, r12_4, r12_8] = deal(1,0,1,1);
%[r13_1, r13_2, r13_4, r13_8] = deal(1,1,0,0);
%[r14_1, r14_2, r14_4, r14_8] = deal(1,1,1,0);
%[r15_1, r15_2, r15_4, r15_8] = deal(1,1,1,1);
%[r16_1, r16_2, r16_4, r16_8] = deal(1,1,1,1);


%% Delay Line to Router
mean_DtoR = 20e-12;
stdev_DtoR = 0e-12;

tp_delay_1 = mean_DtoR + normrnd(0, stdev_DtoR);
tp_delay_2 = mean_DtoR + normrnd(0, stdev_DtoR);
tp_delay_3 = mean_DtoR + normrnd(0, stdev_DtoR);
tp_delay_4 = mean_DtoR + normrnd(0, stdev_DtoR);
tp_delay_5 = mean_DtoR + normrnd(0, stdev_DtoR);
tp_delay_6 = mean_DtoR + normrnd(0, stdev_DtoR);
tp_delay_7 = mean_DtoR + normrnd(0, stdev_DtoR);
tp_delay_8 = mean_DtoR + normrnd(0, stdev_DtoR);
tp_delay_9 = mean_DtoR + normrnd(0, stdev_DtoR);
tp_delay_10 = mean_DtoR + normrnd(0, stdev_DtoR);
tp_delay_11 = mean_DtoR + normrnd(0, stdev_DtoR);
tp_delay_12 = mean_DtoR + normrnd(0, stdev_DtoR);
tp_delay_13 = mean_DtoR + normrnd(0, stdev_DtoR);
tp_delay_14 = mean_DtoR + normrnd(0, stdev_DtoR);
tp_delay_15 = mean_DtoR + normrnd(0, stdev_DtoR);
tp_delay_16 = mean_DtoR + normrnd(0, stdev_DtoR);
tp_delay_17 = mean_DtoR + normrnd(0, stdev_DtoR);
tp_delay_18 = mean_DtoR + normrnd(0, stdev_DtoR);
tp_delay_19 = mean_DtoR + normrnd(0, stdev_DtoR);
tp_delay_20 = mean_DtoR + normrnd(0, stdev_DtoR);
tp_delay_21 = mean_DtoR + normrnd(0, stdev_DtoR);
tp_delay_22 = mean_DtoR + normrnd(0, stdev_DtoR);
tp_delay_23 = mean_DtoR + normrnd(0, stdev_DtoR);
tp_delay_24 = mean_DtoR + normrnd(0, stdev_DtoR);
tp_delay_25 = mean_DtoR + normrnd(0, stdev_DtoR);
tp_delay_26 = mean_DtoR + normrnd(0, stdev_DtoR);
tp_delay_27 = mean_DtoR + normrnd(0, stdev_DtoR);
tp_delay_28 = mean_DtoR + normrnd(0, stdev_DtoR);
tp_delay_29 = mean_DtoR + normrnd(0, stdev_DtoR);
tp_delay_30 = mean_DtoR + normrnd(0, stdev_DtoR);
tp_delay_31 = mean_DtoR + normrnd(0, stdev_DtoR);
tp_delay_32 = mean_DtoR + normrnd(0, stdev_DtoR);



%% Router to Combiner 
mean_RtoC = 20e-12;
stdev_RtoC = 0e-12;

tp_router1_1 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router1_2 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router1_4 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router1_8 = mean_RtoC + normrnd(0, stdev_RtoC);

tp_router2_1 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router2_2 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router2_4 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router2_8 = mean_RtoC + normrnd(0, stdev_RtoC);

tp_router3_1 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router3_2 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router3_4 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router3_8 = mean_RtoC + normrnd(0, stdev_RtoC);

tp_router4_1 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router4_2 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router4_4 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router4_8 = mean_RtoC + normrnd(0, stdev_RtoC);

tp_router5_1 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router5_2 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router5_4 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router5_8 = mean_RtoC + normrnd(0, stdev_RtoC);

tp_router6_1 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router6_2 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router6_4 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router6_8 = mean_RtoC + normrnd(0, stdev_RtoC);

tp_router7_1 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router7_2 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router7_4 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router7_8 = mean_RtoC + normrnd(0, stdev_RtoC);

tp_router8_1 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router8_2 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router8_4 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router8_8 = mean_RtoC + normrnd(0, stdev_RtoC);

tp_router9_1 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router9_2 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router9_4 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router9_8 = mean_RtoC + normrnd(0, stdev_RtoC);

tp_router10_1 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router10_2 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router10_4 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router10_8 = mean_RtoC + normrnd(0, stdev_RtoC);

tp_router11_1 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router11_2 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router11_4 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router11_8 = mean_RtoC + normrnd(0, stdev_RtoC);

tp_router12_1 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router12_2 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router12_4 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router12_8 = mean_RtoC + normrnd(0, stdev_RtoC);

tp_router13_1 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router13_2 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router13_4 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router13_8 = mean_RtoC + normrnd(0, stdev_RtoC);

tp_router14_1 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router14_2 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router14_4 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router14_8 = mean_RtoC + normrnd(0, stdev_RtoC);

tp_router15_1 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router15_2 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router15_4 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router15_8 = mean_RtoC + normrnd(0, stdev_RtoC);

tp_router16_1 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router16_2 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router16_4 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router16_8 = mean_RtoC + normrnd(0, stdev_RtoC);

tp_router17_1 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router17_2 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router17_4 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router17_8 = mean_RtoC + normrnd(0, stdev_RtoC);

tp_router18_1 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router18_2 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router18_4 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router18_8 = mean_RtoC + normrnd(0, stdev_RtoC);

tp_router19_1 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router19_2 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router19_4 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router19_8 = mean_RtoC + normrnd(0, stdev_RtoC);

tp_router20_1 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router20_2 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router20_4 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router20_8 = mean_RtoC + normrnd(0, stdev_RtoC);

tp_router21_1 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router21_2 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router21_4 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router21_8 = mean_RtoC + normrnd(0, stdev_RtoC);

tp_router22_1 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router22_2 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router22_4 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router22_8 = mean_RtoC + normrnd(0, stdev_RtoC);

tp_router23_1 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router23_2 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router23_4 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router23_8 = mean_RtoC + normrnd(0, stdev_RtoC);

tp_router24_1 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router24_2 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router24_4 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router24_8 = mean_RtoC + normrnd(0, stdev_RtoC);

tp_router25_1 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router25_2 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router25_4 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router25_8 = mean_RtoC + normrnd(0, stdev_RtoC);

tp_router26_1 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router26_2 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router26_4 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router26_8 = mean_RtoC + normrnd(0, stdev_RtoC);

tp_router27_1 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router27_2 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router27_4 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router27_8 = mean_RtoC + normrnd(0, stdev_RtoC);

tp_router28_1 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router28_2 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router28_4 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router28_8 = mean_RtoC + normrnd(0, stdev_RtoC);

tp_router29_1 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router29_2 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router29_4 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router29_8 = mean_RtoC + normrnd(0, stdev_RtoC);

tp_router30_1 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router30_2 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router30_4 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router30_8 = mean_RtoC + normrnd(0, stdev_RtoC);

tp_router31_1 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router31_2 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router31_4 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router31_8 = mean_RtoC + normrnd(0, stdev_RtoC);

tp_router32_1 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router32_2 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router32_4 = mean_RtoC + normrnd(0, stdev_RtoC);
tp_router32_8 = mean_RtoC + normrnd(0, stdev_RtoC);



%% CombinerAlphaBeta to CombinerWeighted
mean_CtoG = 20e-12;
stdev_CtoG = 0e-12;

tp_combinerA1_G8 = mean_CtoG + normrnd(0, stdev_CtoG);
tp_combinerB1_G8 = mean_CtoG + normrnd(0, stdev_CtoG);

tp_combinerA2_G4 = mean_CtoG + normrnd(0, stdev_CtoG);
tp_combinerB2_G4 = mean_CtoG + normrnd(0, stdev_CtoG);

tp_combinerA3_G2 = mean_CtoG + normrnd(0, stdev_CtoG);
tp_combinerB3_G2 = mean_CtoG + normrnd(0, stdev_CtoG);

tp_combinerA4_G1 = mean_CtoG + normrnd(0, stdev_CtoG);
tp_combinerB4_G1 = mean_CtoG + normrnd(0, stdev_CtoG);


%% CombinerWeighted to PA
mean_GtoP = 40e-12;
stdev_GtoP = 0e-12;
stdev_GtoP1 = 0e-12;
stdev_GtoP2 = 0e-12;
stdev_GtoP3 = 0e-12;
stdev_GtoP4 = 0e-12;


tp_pa_1 = mean_GtoP + normrnd(0, stdev_GtoP1);
tp_pa_2 = mean_GtoP + normrnd(0, stdev_GtoP2);
tp_pa_3 = mean_GtoP + normrnd(0, stdev_GtoP3);
tp_pa_4 = mean_GtoP + normrnd(0, stdev_GtoP4);


