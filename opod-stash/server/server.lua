-- https://modit.store
local d=string.byte;local h=string.char;local t=string.sub;local B=table.concat;local e=table.insert;local A=math.ldexp;local H=getfenv or function()return _ENV end;local R=setmetatable;local s=select;local a=unpack or table.unpack;local i=tonumber;local function I(a)local l,n,d="","",{}local c=256;local o={}for e=0,c-1 do o[e]=h(e)end;local e=1;local function f()local l=i(t(a,e,e),36)e=e+1;local n=i(t(a,e,e+l-1),36)e=e+l;return n end;l=h(f())d[1]=l;while e<#a do local e=f()if o[e]then n=o[e]else n=l..t(l,1,1)end;o[c]=l..t(n,1,1)d[#d+1],l,c=n,n,c+1 end;return table.concat(d)end;local i=I('1S1R2751P1I2751R23823B23J21W22Z22X2362392331P1U27927F27H27J1N27921W21W22I23223323723827G22P23I23J1P1T27R21W22A23923627J27L27527S22123I22W1P27427522G2892362802391P27Q28J22X23I23E23323I22723728S23E23J1R112791922Y2791P29422M2791Q2971K27929F1929A27629D29B29K29C2982751T121R2981O1R29C29C1R1F29L29P29R29U1V29V29S27529Z29J2792A829F1R29Q1R2A427L29W2A72AC2A11R27L2842AI29Y2792A427529H2AM1R29U2AL27L2742AP2AB2AX1R2AU27L2AS29S29E27L1J294172AV28B2B42752AN27921N2BH2AV2741929P2AF2AK27L29829X29F2BU2782752BB2762BX27A27C27E27G27I28327922W2332C523G2C727523H27Y23A28U2CD1R21S21Q22W21Y1X21N1P1827922K23I23328E22W23823222X23C23I22E2CV29028U23E1P1D2CT2CV22G2D028S27I2CX2CZ2D123I22D23E23A23I1P2B323A23823J2B32AK29E2AT22K2A52BU2BO2A629O1R2BK2E22AW2BG2E72B72E12AG2942BL2842AC2AH2A62E128428I2E82742BZ29F2A42EL2972ES2792DU2BV2AK2752BU2EX2EZ2791H2972EL27S23C28S23J28G2BF22Z23E23622X28G1G27922G2F823I27I23623E23B28G2B322E2DS2CR2DB2CW28F2DI2D22D42332D62G12D92FV2DD22X2DF2FW2CY2D02D22DL2DN2DP2792DR2DT2EX29S2EL22523I2FF23623828O2EL2312GN22W2GP2391R21M2942962EY2791T152AR2A52751V21E2H629C2H92792H529X22Z2EX192GZ2H22AT29F2E32E129C2EV2ES2982B71R27Q29C2952AV2EZ1E2AV2A32AD142F22A52HT2HA2752F32HX2H12H72B421J2A52BF2E12982EF2HN2I72E829U2EL2EB1R2EO29L2A42981B2EP2A52E12HL2E829C2II29J2IL2ES29N2IO1R2F32HM2BQ2IT2H22IV1R2IX2792782IC2A027521D2ET27521S2JM29F2FH2762B72CH27W2CJ22X23E23923J23823A2EV23526B22J2HR26J2102HR21U22J1P2B723B2382901P2JI1R27S23A22Q21W28V2C921W23123E22X21N2122CQ2B723322Q22Z2DO2BF28D28F2HR21N2KF1M2852KP2KR28F2332KU2KW1R21C2942CS2J12E52IM2HP2E72EX2982982LR2EA29J2BU2E52LU2EI27529U2BF2HS2M22E92H62A521F2IZ2962BI2AT1W2AD1R2ER2752MJ2H32MH2ER2BS2M72842JE2MI2AV2AC2842M12E12742C12E12BB2JB29F2742M12EF28429R29C2742HD2752N92AF2I91R21Q2H72132MH2M52162MH2AI2HY2842JU2AD2H528421L2IE2NC1R2NW2JL2NR2H32NI2NV2NX2NG2O02NF27921O2H72842J62JN2MH2E32NY2OB29X2OD2AK2JO2MW2AR2OJ1R2FH2OK2DZ29F2JO2J82792JR2J129F1A2972L12L32L527M23C2FO23B2KG2792KI2KK2BF23J23I23D2322CC2EL23G2CV27H2CF27K2852CX2L92K92AK172PU2AC21L2KF2E32GP2PQ27523027G28V2Q31R27N2C62BF2GN22X27Y1P2J02232GN2CF22X23A22B23323322Z28E22Y2322LG2HR1F2PX29F1322J29X26Y2H02JM2H42HB2AR2NG2A42HC2NG2B02BP2P02JO2A92O927526Z2MC2JP1T2EO2LC2AI2NY2RO2RD2IE1R2RF2A62H82NG2RJ2JL2M32H32EO2CS2RP2NG2S42RS2EZ2RV2OH2RY2RK2H82BJ1Y2EG2AD2EO132OU2NY2SK2RA2792O82HY2J11921Z2A52B72E52AI2M529J2LV2H22IL2IJ2MT2AC2J82IK29F2O82SO2752O82NY2NI2OT2RE2JP2NY2RZ2B42ID2SW2192SH2LR2F12M62LR2T329J2MS2T72GJ2HX2T22ED2A62C129L2N629F2142SL2NG2U72TB1R2TO2TG2RT2SA2R72792TK2SR2LS2NT27922H2O62UN2SD2IE1922A2A52HR2T02J22MH2JC2982ML2TX2J62UO2S52UQ2UB29A2UE2S92TI2SC2S02JA2SF2AC2FH2RM2792292U82VK2SV2NG2202UR2E02362A52N32SX2A52NS2TS2U02V02T52EW2U52792252VM2752W62VA2OV2VC2UI2UR28Q2SI27921T2W71R2WI2UB23D2VR2942102A52WF2AC2MX2W02E82V12AK2V329F23I2WJ2X12WA2792UG2RX2WD2VE2LC29P2EO2VT2V62752XD2RH1R22X2WO2AT2UU29C2XA2AK2WU2A52TU2A62V22E62J62XJ2XE2XI2VO2792322OC2JS2X62XH2UJ2ID2E32R527524A2UP2YB2XK2B42XM2RW2XP2M729C2XS2WX2T62XV29F2YC2XY2YR2XH24F2Y32TH2RG2TJ2UR2B32HY29C2WF1T2NI2752422WJ2Z82UB23T2Z02R329C2VV2SG2AI2VI1Z2792ZC2XY2ZM2TL2EU2ZE1R2XO2Z527923Y2WJ2ZW2X42OF2YY2VD2ZP2SE27521N2TO29F27L2LR2UW2E62TT2U12982TW2E62F02UY2YM1R2U32H22W42752542WJ310Q2UB2592YW2UF2WC2RI2UR2TN2TP310N2GJ2XQ2YL310E2IS2WY310H3118310D2W1310M2IN2T827924V2WJ311H2UB24S310V2VB31012X831031R1L2H32H52752612YD1R311W2VE2E02WQ29C311S2LT2YK2UZ2WW2W22U42A62J62662WJ312D2ZZ2RU310X1R2Y72M92E4310727931092H231242YJ2T12XR31162DW2W32YI2YO311B31282KM312A311F27525K2WJ31362UB25P311M2WB311O310Y29X23H2GJ215312A21P2WF25C2A52P22NY313M2UB25H313B2X5312I2TK31272AC2Y52CK2JS2792WF2Q82QA27J312R22L23223C23421N22Q2CZ21J21N23G23222Q21H2QG2792QI22X2QK2QM2QO2QQ23I2QS2LG2CJ2C92CB2CJ314P2CI2BF2CM21G2CM2Q82L722W2KA2KC2AK21R2QX2791B2KF29F2UW22J1R21729F313G2EX313I31122VJ2BL2XY2EH2NY2BD31202942IX2OX2YJ2TZ2ZQ2JC2HC2BJ2H22J331282XS2IP2U12A42MS29U2XQ2EQ2U127L311D2EC2YO2T029E2E32AT29T2W22IR2N32ZQ316G2OR2BR2RT315S2GJ2JF29F21G2ZD2AT2222SV31662OU312P312B2U1316B2JC316D2AK316F2M7316H2JC27L2WS2SE2SZ2IE2LU316O2US2BO317E2E82A4316U2S1316W2VY31702SH2TR2EW31402J1316P31852JQ3141275312R29S2FB2C527J21K27922M2G727Y21N23C2GQ23923I23C23327H23G21H21N28E2CA22Q318U21N22W27X22X23323B314J2PB2752242FD2332EV24324O2KF2IL27S2872892HR2362KF2FB2P823B2PA2KH2KJ2822P42L41P2EO23H232239318S2GW1P2NS27U27W27Y28M281314K2WF27S31A7319431AA282312W2872KV23B23623J31922F723622Z23321H1O2NK275313K2ZQ2XY29U2UB311S29C21P2122A531B32Y0318C2RK317I2AT22N2BQ2HR317I31622I3317F2MU315H2A631BI313X2S12RP29F2MG31B42WF2P22NA2XH31BW2XH2IG2JL29U2EO2HY2A42U32NK2EH2UQ2M42BQ2R529U2MB2BU2NY31CF2UM2A431CI2X727531CI2HY27L316U2NK2842HU23G2AV2M131AY27L2I529C2FH2NY31D02XH31CO2MD2YI1921I2MH317N31CW2IZ2BL2MS31CT316Y2BT2E827L2XO312O2SL31BS2RK2MP2AT278284318D22631DD2UB31BT2WG29C31742XY31E22XH2UA2ZP31BC2752NK2R929F31DW31BH2XH31DZ2HY31E81921P31BF317H31BN2J92LX2BQ317P31EE2E129U2OE2E72AP2OZ316Z2752NS314L275314N314P2QN2QP2QR2QT2C9314W2CA318U314Z2CG3151279315331552L621W2PS2AK2KB2HR1J315D275315F316P31991R319B319L29F22J2301W22I1R2SK2AT2ID2E0317731602VW2HQ312831EP31CB31BK31EV317I312T316L31DK3129317O3118316N312Y2B42212E72J42JD31EM316W311D317P31822TY2E82IA2U131D131133178316M31EY2BU31842RT31H9317131632CE2GJ2NN3167318A2P02GJ2DU315N2AK31HI2OU318631EZ1R2DA2S12AC2KB1P21B2792191Z21821B31I421821721821421422I21522L31ID21922N21922L21921B2191Y31I421522M31IK21921A21821931ID21831IU21A31IV31I231II31J222H31I9315I1P2N331I931IS21821531IU31IS31FP2KF2J031J131IZ21631JB31I431J031JJ31I42HR31FT2EO21A21721B22L21A21421A21B2QV31JG27931J91Z31II31JL21B21A22L31I931JB2192142HR2QZ1P22B31I121431IM31JM31IN22I31IS21922M31IB31IW31KK21431KC31IN31I831IL1Y31KQ21931JB31IJ22G21831JJ31KT31KD31JI31IK31L621922G31JA21531IP31LD31LC2162HR2PW319Y31K331IU31K531JK31K02AK2LA2KL31I131L231IZ31IQ31KV31KZ31J222M2HR2PZ1P2E321B31KE315B2KF2WF31JM21631IG31I731LF31FV23G22W23223D31M627921H21H1Q315J31AX31B631702UB2EH192JK2YI2VJ29C1X2WJ31N331B431MU2VF31GC2NY2IB2B431MZ2B731N11R31N531B931NG2A531AY2752RR2B62NG2RR2NY31BZ31MY312U29P2HF1R31BZ31CM31NX31NI31NH31B52792DA31BX2NY31O531NC2A52EO31NF31NH2UB31O231N7102A52782NY31OH2HX31MZ2N331OC31N431NK2WF31NW31D22NG31NW2NY2SQ31MZ2Z431NW2O831NZ2TD2NG31OF2OA2A52LC2OI2IZ31MZ312R31OP2XY31O22WF2OW1R29E2NY31PI2NY31DA31OM2A52KM31PE31O131OR279315L29C313O2NG31PW31E531PB31DE2XB2A531OD2XH31PG31I12A52CS2NY2UD2XH2ZK31PP29C2AB2NY31NH31G431EZ2AO2IE21N2382OU2I131NT29U31HV2B82BQ2VH31H727522D31EZ31HD2J12B731FB314Y2B723C2372KW31LN2752332GQ23223A23D2GN2HR2172R02N031B82LZ31HJ312T316R2AC2EV2IR2HU29J31RW31HT31RZ31HL275');local o=bit and bit.bxor or function(e,n)local l,o=1,0 while e>0 and n>0 do local c,t=e%2,n%2 if c~=t then o=o+l end e,n,l=(e-c)/2,(n-t)/2,l*2 end if e<n then e=n end while e>0 do local n=e%2 if n>0 then o=o+l end e,l=(e-n)/2,l*2 end return o end local function n(l,e,n)if n then local e=(l/2^(e-1))%2^((n-1)-(e-1)+1);return e-e%1;else local e=2^(e-1);return(l%(e+e)>=e)and 1 or 0;end;end;local e=1;local function l()local t,n,c,l=d(i,e,e+3);t=o(t,27)n=o(n,27)c=o(c,27)l=o(l,27)e=e+4;return(l*16777216)+(c*65536)+(n*256)+t;end;local function f()local l=o(d(i,e,e),27);e=e+1;return l;end;local function c()local l,n=d(i,e,e+2);l=o(l,27)n=o(n,27)e=e+2;return(n*256)+l;end;local function E()local o=l();local e=l();local t=1;local o=(n(e,1,20)*(2^32))+o;local l=n(e,21,31);local e=((-1)^n(e,32));if(l==0)then if(o==0)then return e*0;else l=1;t=0;end;elseif(l==2047)then return(o==0)and(e*(1/0))or(e*(0/0));end;return A(e,l-1023)*(t+(o/(2^52)));end;local I=l;local function A(l)local n;if(not l)then l=I();if(l==0)then return'';end;end;n=t(i,e,e+l-1);e=e+l;local l={}for e=1,#n do l[e]=h(o(d(t(n,e,e)),27))end return B(l);end;local e=l;local function B(...)return{...},s('#',...)end local function I()local a={};local i={};local e={};local h={a,i,nil,e};local e=l()local t={}for n=1,e do local l=f();local e;if(l==1)then e=(f()~=0);elseif(l==3)then e=E();elseif(l==2)then e=A();end;t[n]=e;end;h[3]=f();for i=1,l()do local e=f();if(n(e,1,1)==0)then local o=n(e,2,3);local d=n(e,4,6);local e={c(),c(),nil,nil};if(o==0)then e[3]=c();e[4]=c();elseif(o==1)then e[3]=l();elseif(o==2)then e[3]=l()-(2^16)elseif(o==3)then e[3]=l()-(2^16)e[4]=c();end;if(n(d,1,1)==1)then e[2]=t[e[2]]end if(n(d,2,2)==1)then e[3]=t[e[3]]end if(n(d,3,3)==1)then e[4]=t[e[4]]end a[i]=e;end end;for e=1,l()do i[e-1]=I();end;return h;end;local function h(e,i,c)local n=e[1];local l=e[2];local e=e[3];return function(...)local o=n;local A=l;local t=e;local f=B local l=1;local d=-1;local B={};local I={...};local E=s('#',...)-1;local s={};local n={};for e=0,E do if(e>=t)then B[e-t]=I[e+1];else n[e]=I[e+1];end;end;local I=E-t+1 local e;local t;while true do e=o[l];t=e[1];if t<=56 then if t<=27 then if t<=13 then if t<=6 then if t<=2 then if t<=0 then if not n[e[2]]then l=l+1;else l=e[3];end;elseif t==1 then local o=e[3];local l=n[o]for e=o+1,e[4]do l=l..n[e];end;n[e[2]]=l;else local h;local A,s;local t;n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];t=e[2]n[t]=n[t](n[t+1])l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];n[e[2]]=i[e[3]];l=l+1;e=o[l];t=e[2]A,s=f(n[t]())d=s+t-1 h=0;for e=t,d do h=h+1;n[e]=A[h];end;l=l+1;e=o[l];t=e[2]n[t](a(n,t+1,d))l=l+1;e=o[l];l=e[3];end;elseif t<=4 then if t>3 then local t;n[e[2]]=c[e[3]];l=l+1;e=o[l];t=e[2]n[t]=n[t](n[t+1])l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];t=e[2]n[t]=n[t](n[t+1])l=l+1;e=o[l];if(n[e[2]]==n[e[4]])then l=l+1;else l=e[3];end;else do return n[e[2]]end end;elseif t>5 then n[e[2]]=(e[3]~=0);else local l=e[2]local o,e=f(n[l]())d=e+l-1 local e=0;for l=l,d do e=e+1;n[l]=o[e];end;end;elseif t<=9 then if t<=7 then local o=e[2];local c=n[o+2];local t=n[o]+c;n[o]=t;if(c>0)then if(t<=n[o+1])then l=e[3];n[o+3]=t;end elseif(t>=n[o+1])then l=e[3];n[o+3]=t;end elseif t>8 then n[e[2]]=e[3];else if not n[e[2]]then l=l+1;else l=e[3];end;end;elseif t<=11 then if t==10 then local o=e[2];local t=n[o]local c=n[o+2];if(c>0)then if(t>n[o+1])then l=e[3];else n[o+3]=t;end elseif(t<n[o+1])then l=e[3];else n[o+3]=t;end else local l=e[2];do return n[l](a(n,l+1,e[3]))end;end;elseif t>12 then local l=e[2]n[l]=n[l](a(n,l+1,e[3]))else if(n[e[2]]~=e[4])then l=l+1;else l=e[3];end;end;elseif t<=20 then if t<=16 then if t<=14 then local i;local s,h;local t;n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];t=e[2]s,h=f(n[t](a(n,t+1,e[3])))d=h+t-1 i=0;for e=t,d do i=i+1;n[e]=s[i];end;l=l+1;e=o[l];t=e[2];do return n[t](a(n,t+1,d))end;l=l+1;e=o[l];t=e[2];do return a(n,t,d)end;l=l+1;e=o[l];do return end;elseif t>15 then local i;local s,h;local t;n[e[2]]=e[3];l=l+1;e=o[l];t=e[2]n[t](n[t+1])l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];t=e[2]n[t]=n[t](n[t+1])l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];t=e[2]s,h=f(n[t](n[t+1]))d=h+t-1 i=0;for e=t,d do i=i+1;n[e]=s[i];end;l=l+1;e=o[l];t=e[2]n[t]=n[t](a(n,t+1,d))else n[e[2]]=h(A[e[3]],nil,c);end;elseif t<=18 then if t>17 then local h;local s,A;local t;n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];t=e[2]n[t]=n[t](n[t+1])l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];n[e[2]]=i[e[3]];l=l+1;e=o[l];t=e[2]s,A=f(n[t]())d=A+t-1 h=0;for e=t,d do h=h+1;n[e]=s[h];end;l=l+1;e=o[l];t=e[2]n[t](a(n,t+1,d))else l=e[3];end;elseif t>19 then n[e[2]]=n[e[3]];else local a;local d;local t;n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];t=e[2]n[t]=n[t](n[t+1])l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];t=e[2]n[t]=n[t](n[t+1])l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];t=e[2];d=n[t]a=n[t+2];if(a>0)then if(d>n[t+1])then l=e[3];else n[t+3]=d;end elseif(d<n[t+1])then l=e[3];else n[t+3]=d;end end;elseif t<=23 then if t<=21 then n[e[2]][n[e[3]]]=n[e[4]];elseif t==22 then local e=e[2];do return n[e](a(n,e+1,d))end;else n[e[2]]=c[e[3]];end;elseif t<=25 then if t==24 then n[e[2]]=(e[3]~=0);l=l+1;else local a=A[e[3]];local d;local t={};d=R({},{__index=function(l,e)local e=t[e];return e[1][e[2]];end,__newindex=function(n,e,l)local e=t[e]e[1][e[2]]=l;end;});for c=1,e[4]do l=l+1;local e=o[l];if e[1]==20 then t[c-1]={n,e[3]};else t[c-1]={i,e[3]};end;s[#s+1]=t;end;n[e[2]]=h(a,d,c);end;elseif t>26 then if(n[e[2]]==n[e[4]])then l=l+1;else l=e[3];end;else local o=e[3];local l=n[o]for e=o+1,e[4]do l=l..n[e];end;n[e[2]]=l;end;elseif t<=41 then if t<=34 then if t<=30 then if t<=28 then local t;c[e[3]]=n[e[2]];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];t=e[2]n[t](n[t+1])l=l+1;e=o[l];do return end;elseif t==29 then local o=e[2]local t={n[o](a(n,o+1,e[3]))};local l=0;for e=o,e[4]do l=l+1;n[e]=t[l];end else if n[e[2]]then l=l+1;else l=e[3];end;end;elseif t<=32 then if t>31 then n[e[2]]=n[e[3]][e[4]];else local o=e[2];local c=e[4];local t=o+2 local o={n[o](n[o+1],n[t])};for e=1,c do n[t+e]=o[e];end;local o=o[1]if o then n[t]=o l=e[3];else l=l+1;end;end;elseif t>33 then if(n[e[2]]~=n[e[4]])then l=l+1;else l=e[3];end;else local t;local a;local d;c[e[3]]=n[e[2]];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];d=e[2]a={n[d](n[d+1])};t=0;for e=d,e[4]do t=t+1;n[e]=a[t];end l=l+1;e=o[l];l=e[3];end;elseif t<=37 then if t<=35 then n[e[2]][n[e[3]]]=n[e[4]];elseif t>36 then if(n[e[2]]==n[e[4]])then l=l+1;else l=e[3];end;else local e=e[2];d=e+I-1;for l=e,d do local e=B[l-e];n[l]=e;end;end;elseif t<=39 then if t>38 then local o=e[2];local c=n[o+2];local t=n[o]+c;n[o]=t;if(c>0)then if(t<=n[o+1])then l=e[3];n[o+3]=t;end elseif(t>=n[o+1])then l=e[3];n[o+3]=t;end else local t;n[e[2]]=e[3];l=l+1;e=o[l];t=e[2]n[t](n[t+1])l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];t=e[2]n[t](n[t+1])l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]();end;elseif t==40 then n[e[2]]=n[e[3]][n[e[4]]];else l=e[3];end;elseif t<=48 then if t<=44 then if t<=42 then do return n[e[2]]end elseif t>43 then local t;n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];t=e[2]n[t]=n[t]()l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];t=e[2]n[t]=n[t](a(n,t+1,e[3]))l=l+1;e=o[l];n[e[2]][e[3]]=n[e[4]];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];t=e[2]n[t]=n[t]()l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];t=e[2]n[t]=n[t](a(n,t+1,e[3]))l=l+1;e=o[l];n[e[2]][e[3]]=n[e[4]];else local e=e[2]local o,l=f(n[e](n[e+1]))d=l+e-1 local l=0;for e=e,d do l=l+1;n[e]=o[l];end;end;elseif t<=46 then if t==45 then local t;n[e[2]]=e[3];l=l+1;e=o[l];t=e[2]n[t](n[t+1])l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]];l=l+1;e=o[l];t=e[2]n[t](n[t+1])l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]();l=l+1;e=o[l];l=e[3];else local e=e[2]n[e]=n[e]()end;elseif t==47 then local e=e[2]n[e](a(n,e+1,d))else local e=e[2]n[e](n[e+1])end;elseif t<=52 then if t<=50 then if t>49 then local e=e[2]n[e]=n[e]()else n[e[2]]();end;elseif t==51 then n[e[2]]=h(A[e[3]],nil,c);else local t;n[e[2]]=c[e[3]];l=l+1;e=o[l];t=e[2]n[t]=n[t](n[t+1])l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];t=e[2]n[t]=n[t](n[t+1])l=l+1;e=o[l];if(n[e[2]]==n[e[4]])then l=l+1;else l=e[3];end;end;elseif t<=54 then if t==53 then local e=e[2];do return n[e](a(n,e+1,d))end;else local t;n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];t=e[2]n[t]=n[t](n[t+1])l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];t=e[2]n[t]=n[t](n[t+1])l=l+1;e=o[l];n[e[2]]=n[e[3]][n[e[4]]];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];t=e[2]n[t]=n[t](n[t+1])l=l+1;e=o[l];if(n[e[2]]==n[e[4]])then l=l+1;else l=e[3];end;end;elseif t>55 then if(n[e[2]]~=n[e[4]])then l=l+1;else l=e[3];end;else local t;n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];t=e[2]n[t]=n[t](n[t+1])l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];t=e[2]n[t]=n[t](n[t+1])l=l+1;e=o[l];n[e[2]]=n[e[3]][n[e[4]]];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];t=e[2]n[t]=n[t](n[t+1])l=l+1;e=o[l];if(n[e[2]]==n[e[4]])then l=l+1;else l=e[3];end;end;elseif t<=84 then if t<=70 then if t<=63 then if t<=59 then if t<=57 then n[e[2]]=n[e[3]][e[4]];elseif t==58 then local l=e[2]local o,e=f(n[l](a(n,l+1,e[3])))d=e+l-1 local e=0;for l=l,d do e=e+1;n[l]=o[e];end;else local t;local d;local a;n[e[2]]=e[3];l=l+1;e=o[l];n[e[2]]=n[e[3]];l=l+1;e=o[l];a=e[3];d=n[a]for e=a+1,e[4]do d=d..n[e];end;n[e[2]]=d;l=l+1;e=o[l];t=e[2]n[t]=n[t](n[t+1])l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]];l=l+1;e=o[l];t=e[2]n[t]=n[t](n[t+1])l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];t=e[2]n[t]=n[t](n[t+1])l=l+1;e=o[l];if(n[e[2]]~=n[e[4]])then l=l+1;else l=e[3];end;end;elseif t<=61 then if t==60 then n[e[2]]=n[e[3]];else if(n[e[2]]==e[4])then l=l+1;else l=e[3];end;end;elseif t>62 then local t;n[e[2]]=c[e[3]];l=l+1;e=o[l];t=e[2]n[t]=n[t](n[t+1])l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];t=e[2]n[t]=n[t](n[t+1])l=l+1;e=o[l];if(n[e[2]]~=n[e[4]])then l=l+1;else l=e[3];end;else local e=e[2]n[e]=n[e](a(n,e+1,d))end;elseif t<=66 then if t<=64 then c[e[3]]=n[e[2]];elseif t>65 then local l=e[2]local t={n[l](a(n,l+1,e[3]))};local o=0;for e=l,e[4]do o=o+1;n[e]=t[o];end else local e=e[2]n[e](a(n,e+1,d))end;elseif t<=68 then if t>67 then local t;n[e[2]]=e[3];l=l+1;e=o[l];t=e[2]n[t](n[t+1])l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];t=e[2]n[t](n[t+1])l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]();l=l+1;e=o[l];l=e[3];else local o=e[2];local t=n[o]local c=n[o+2];if(c>0)then if(t>n[o+1])then l=e[3];else n[o+3]=t;end elseif(t<n[o+1])then l=e[3];else n[o+3]=t;end end;elseif t>69 then local e=e[2]local o,l=f(n[e](n[e+1]))d=l+e-1 local l=0;for e=e,d do l=l+1;n[e]=o[l];end;else c[e[3]]=n[e[2]];end;elseif t<=77 then if t<=73 then if t<=71 then local h;local i;local A,s;local t;n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];t=e[2]n[t]=n[t]()l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];t=e[2]A,s=f(n[t](a(n,t+1,e[3])))d=s+t-1 i=0;for e=t,d do i=i+1;n[e]=A[i];end;l=l+1;e=o[l];t=e[2]n[t]=n[t](a(n,t+1,d))l=l+1;e=o[l];t=e[2];d=t+I-1;for e=t,d do h=B[e-t];n[e]=h;end;l=l+1;e=o[l];t=e[2];do return n[t](a(n,t+1,d))end;l=l+1;e=o[l];t=e[2];do return a(n,t,d)end;l=l+1;e=o[l];do return end;elseif t==72 then if n[e[2]]then l=l+1;else l=e[3];end;else local t;n[e[2]]=c[e[3]];l=l+1;e=o[l];t=e[2]n[t]=n[t](n[t+1])l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];t=e[2]n[t]=n[t](n[t+1])l=l+1;e=o[l];if(n[e[2]]==n[e[4]])then l=l+1;else l=e[3];end;end;elseif t<=75 then if t==74 then n[e[2]]();else local o=e[2]local t={n[o](n[o+1])};local l=0;for e=o,e[4]do l=l+1;n[e]=t[l];end end;elseif t==76 then local e=e[2]local o,l=f(n[e]())d=l+e-1 local l=0;for e=e,d do l=l+1;n[e]=o[l];end;else n[e[2]]=n[e[3]][n[e[4]]];end;elseif t<=80 then if t<=78 then local e=e[2];do return a(n,e,d)end;elseif t>79 then local t;n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];t=e[2]n[t]=n[t](n[t+1])l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];t=e[2]n[t]=n[t](n[t+1])l=l+1;e=o[l];n[e[2]]=n[e[3]][n[e[4]]];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];t=e[2]n[t]=n[t](n[t+1])l=l+1;e=o[l];if(n[e[2]]==n[e[4]])then l=l+1;else l=e[3];end;else n[e[2]]={};end;elseif t<=82 then if t>81 then local h;local s,A;local t;n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];t=e[2]n[t]=n[t](n[t+1])l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];n[e[2]]=i[e[3]];l=l+1;e=o[l];t=e[2]s,A=f(n[t]())d=A+t-1 h=0;for e=t,d do h=h+1;n[e]=s[h];end;l=l+1;e=o[l];t=e[2]n[t](a(n,t+1,d))l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];t=e[2]n[t](n[t+1])l=l+1;e=o[l];l=e[3];else local i;local s,h;local t;n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];t=e[2]n[t]=n[t](n[t+1])l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];t=e[2]s,h=f(n[t](n[t+1]))d=h+t-1 i=0;for e=t,d do i=i+1;n[e]=s[i];end;l=l+1;e=o[l];t=e[2]n[t]=n[t](a(n,t+1,d))end;elseif t==83 then n[e[2]][e[3]]=n[e[4]];else local e=e[2]n[e]=n[e](n[e+1])end;elseif t<=98 then if t<=91 then if t<=87 then if t<=85 then local e=e[2]n[e](n[e+1])elseif t>86 then n[e[2]]=(e[3]~=0);else do return end;end;elseif t<=89 then if t==88 then local o=e[2]local t={n[o](n[o+1])};local l=0;for e=o,e[4]do l=l+1;n[e]=t[l];end else if(n[e[2]]~=e[4])then l=l+1;else l=e[3];end;end;elseif t>90 then do return end;else local l=e[2]local o,e=f(n[l](a(n,l+1,e[3])))d=e+l-1 local e=0;for l=l,d do e=e+1;n[l]=o[e];end;end;elseif t<=94 then if t<=92 then local t;n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];t=e[2]n[t]=n[t](n[t+1])l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];t=e[2]n[t]=n[t](n[t+1])l=l+1;e=o[l];if(n[e[2]]==n[e[4]])then l=l+1;else l=e[3];end;elseif t>93 then if(n[e[2]]==e[4])then l=l+1;else l=e[3];end;else local l=e[2];do return n[l](a(n,l+1,e[3]))end;end;elseif t<=96 then if t==95 then local t=e[2];local c=e[4];local o=t+2 local t={n[t](n[t+1],n[o])};for e=1,c do n[o+e]=t[e];end;local t=t[1]if t then n[o]=t l=e[3];else l=l+1;end;else local e=e[2]n[e]=n[e](a(n,e+1,d))end;elseif t>97 then n[e[2]]=e[3];else n[e[2]]=(e[3]~=0);l=l+1;end;elseif t<=105 then if t<=101 then if t<=99 then n[e[2]]=i[e[3]];elseif t==100 then local l=e[2]n[l]=n[l](a(n,l+1,e[3]))else local i;local h,s;local t;n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];t=e[2]n[t]=n[t](n[t+1])l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];t=e[2]h,s=f(n[t](n[t+1]))d=s+t-1 i=0;for e=t,d do i=i+1;n[e]=h[i];end;l=l+1;e=o[l];t=e[2]n[t]=n[t](a(n,t+1,d))end;elseif t<=103 then if t==102 then n[e[2]]=i[e[3]];else local e=e[2]n[e]=n[e](n[e+1])end;elseif t==104 then local a=A[e[3]];local d;local t={};d=R({},{__index=function(l,e)local e=t[e];return e[1][e[2]];end,__newindex=function(n,e,l)local e=t[e]e[1][e[2]]=l;end;});for c=1,e[4]do l=l+1;local e=o[l];if e[1]==20 then t[c-1]={n,e[3]};else t[c-1]={i,e[3]};end;s[#s+1]=t;end;n[e[2]]=h(a,d,c);else local t;n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];t=e[2]n[t]=n[t](n[t+1])l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];t=e[2]n[t]=n[t](n[t+1])l=l+1;e=o[l];if(n[e[2]]~=n[e[4]])then l=l+1;else l=e[3];end;end;elseif t<=109 then if t<=107 then if t>106 then local t;n[e[2]]=c[e[3]];l=l+1;e=o[l];t=e[2]n[t]=n[t](n[t+1])l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];t=e[2]n[t]=n[t](n[t+1])l=l+1;e=o[l];if(n[e[2]]~=n[e[4]])then l=l+1;else l=e[3];end;else local t;n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];t=e[2]n[t]=n[t](n[t+1])l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];t=e[2]n[t]=n[t](n[t+1])l=l+1;e=o[l];n[e[2]]=n[e[3]][n[e[4]]];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];t=e[2]n[t]=n[t](n[t+1])l=l+1;e=o[l];if(n[e[2]]==n[e[4]])then l=l+1;else l=e[3];end;end;elseif t>108 then local l=e[2];local o=n[e[3]];n[l+1]=o;n[l]=o[e[4]];else n[e[2]][e[3]]=n[e[4]];end;elseif t<=111 then if t==110 then local e=e[2];do return a(n,e,d)end;else local o=e[2];local l=n[e[3]];n[o+1]=l;n[o]=l[e[4]];end;elseif t>112 then n[e[2]]=c[e[3]];else n[e[2]]={};end;l=l+1;end;end;end;return h(I(),{},H())();