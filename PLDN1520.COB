      IPLDN1520070507CSK
      ESLDN1520          B                                              00000800
      EF1        DRIG01ZZ                                               00000900
      EF2        DROG02ZZ                                               00001000
      EF3        DROG03ZZ                                               00001100
      FF1            01500D9I1-REC                                      00001400
      M      NL4DSD91 PR=D9I1-                                          00001500
      FF2            02500DPO1-REC                                      00001800
      M      NL4DSDP1 PR=DPO1-                                          00001900
      FF3            02500DPO2-REC                                      00002200
      M      NL4DSDP1 PR=DPO2-                                          00002300
      W                                                                 00002600
TR001 #01    AOL02-NR1OL023.                                            00003000
157SCAM      NL1A0911 PRE=AOL02-                                        00003200
157SCAM      NZ5MK810 (PMK810-)                                         00003300
      #01    WTRG071.                                                   00003600
157SCAM      NL1G0711 01=WG071-                                         00003800
      #01    WTRC001.                                                   00004100
157SCAM      NL1C0011 01=WC001-                                         00004300
      #01    WTRC03E.                                                   00004600
157SCAM      NL1C00T1 01=WC03E-                                         00004800
      #01    WTRG032.                                                   00005100
157SCAM      NL1G0A11 01=WG032-                                         00005300
157SCAM      NL1G0A11 01=WA11-                                          00005500
157SCAM      NZ5MK850 (PMK850-)                                         00005600
157SCAM      NZ1ZB41  (WB41-)                                           00005700
      #01    WTRG08B.                                                   00006000
157SCAM      NL1G08B1 01=WG08B-                                         00006200
      #01    WTRG042.                                                   00006600
157SCAM      NL1G0M11 01=WG042-                                         00006800
092K1A#01    W1TRG09S.                                                  00007000
157SCAM      NL1G09S1 01=W1G09S-                                        00007200
157SCA#01    B1TRG09S.                                                  00007300
157SCAM      NL1G0565 01=B1G09S-                                        00007400
157SCAM      NL5RS001                                                   00007600
      M      NL5CS008                                                   00007800
092K1AM      NL5CS084                                                   00008000
      M      NL5CS218                                                   00008200
157SCAM      MZPZAS40                                                   00008400
157SCAM      NZ5MK892 (PMK892-)                                         00008600
157SCAM      NZ1ZB61  (WB61-)                                           00008700
157SCAM      NL5CS012                                                   00008900
      #01    WK-AREA.                                                   00009200
      # 03   WK-TIME                 PIC 9(08).                         00009400
      # 03   WK-KEY-CD               PIC X(08).                         00009600
      # 03   WK-TRP-SEN-ME           PIC N(20).                         00009800
      # 03   WK-ADR.                                                    00009900
      #  05   FILLER                 PIC X(01).                         00010000
      #  05   WK-HSK-ADR             PIC N(30).                         00010100
      #  05   FILLER                 PIC X(01).                         00010200
      # 03   WK-SYSCK-AREA.                                             00010400
      #  05  WK-SYSID     PIC X(02).                                    00010500
      #  05  WK-J-CD      PIC X(08).                                    00010600
      # 03   WK-HT.                                                     00010800
      #  05  WK-HT-9                 PIC 9(08).                         00010900
092K1A# 03   WK-DIS-ME               PIC N(10).                         00011100
092K1A# 03   WK-GSY-ME               PIC N(10).                         00011200
157SCA# 03   WK-KSUPCD               PIC X(08) VALUE SPACE.             00011300
157SCA# 03   WK-LOCKEY               PIC X(08) VALUE SPACE.             00011400
2202AD# 03   WK-JEI-UD-RPS-KB        PIC X(01).                         00011420
157SCA#01    WK-DBGET-AREA.                                             00011600
157SCA# 03   WK-DBRC                 PIC 9(01).                         00011700
      #01    MSG-AREA.                                                  00011900
      # 03   MSG-001      PIC X(25)  VALUE 'MASK'. 00012000
      # 03   MSG-002      PIC X(25)  VALUE 'MASK'. 00012100
      # 03   MSG-003      PIC X(25)  VALUE 'MASK'. 00012200
      # 03   MSG-004      PIC X(25)  VALUE 'MASK'. 00012300
      # 03   MSG-005      PIC X(25)  VALUE 'MASK'. 00012400
      # 03   MSG-006      PIC X(25)  VALUE 'MASK'. 00012500
092K1A# 03   MSG-007      PIC X(25)  VALUE 'MASK'. 00012600
092K1A# 03   MSG-008      PIC X(25)  VALUE 'MASK'. 00012700
157SCA# 03   MSG-009      PIC X(25)  VALUE 'MASK'. 00012800
      # 03   WK-MSG-DSP1.                                               00013000
      #  05  FILLER       PIC X(01) VALUE 'MASK'.                          00013100
      #  05  WK-MSG-CD    PIC X(08).                                    00013200
      #  05  FILLER       PIC X(01) VALUE 'MASK'.                          00013300
      #  05  WK-MSG-CNT   PIC 9(07).                                    00013400
      M      MUPGM1N (PLDN1520,8)                                       00013700
      M    MZADMPWK                                                     00013900
      P                                                                 00014000
157SCAM      MZASYNDBC(PLDN1520)                                        00014100
      M      MUMAIN1N(B19)                                              00014200
      M      MUREAD1N                                                   00014300
       B11.                                                             00014700
           READY.                                                       00014800
      M    MZADMPOP                                                     00014900
           OPEN  INPUT   F1.                                            00015100
           OPEN  OUTPUT  F2  F3.                                        00015200
           MOVE  SPACE    TO  WK-AREA.                                  00015400
           INITIALIZE         WK-AREA.                                  00015500
157SCAM    NLAOASCK                                                     00016000
TR001 M    NL0SCK20                                                     00016100
TR001      CONTINUE.                                                    00016200
157SCA     MOVE  SPACE    TO  PMK810-K-ZPARM                            00017300
157SCA                        AOL02-NR1OL023.                           00017400
157SCA     INITIALIZE         PMK810-K-ZPARM                            00017500
157SCA                        AOL02-NR1OL023.                           00017600
157SCA     MOVE  'MASK'  TO  PMK810-CEM-ID.                            00017700
157SCA     MOVE  'MASK'   TO  PMK810-SYS-ID.                            00017800
157SCA     MOVE  ALL 'MASK'  TO  PMK810-KNR-CD.                            00017900
157SCA     CALL  'MASK'   USING  FCOM                               00018000
157SCA                               BZCK911                            00018100
157SCA                               AOL02-NR1OL023                     00018200
157SCA                               PMK810-K-ZPARM.                    00018300
157SCA     IF  PMK810-RTN-CD      NOT =   ZERO                          00019300
157SCA         PERFORM  BS9001-01  THRU  BS9001-99                      00019400
157SCA     END-IF.                                                      00019500
       B11-99.                                                          00019700
           EXIT.                                                        00019800
       B19.                                                             00020200
           PERFORM  B49                 THRU  B49-99.                   00020400
       B19-99.                                                          00020500
           EXIT.                                                        00020600
       B21.                                                             00021000
           MOVE  D9I1-J-CD  TO  C1NM1.                                  00021200
       B21-99.                                                          00021300
           EXIT.                                                        00021400
       B31.                                                             00021800
157SCA     MOVE  SPACE    TO  PLC008-K-RPARM                            00022400
157SCA     INITIALIZE         PLC008-K-RPARM                            00022500
157SCA     MOVE  CN1      TO  PLC008IN-J-CD                             00022600
157SCA     CALL 'MASK'           USING FCOM                         00023100
157SCA                                     BLCG711                      00023200
157SCA                                     PLC008-K-RPARM               00023300
157SCA                                     WTRG071.                     00023400
157SCA     EVALUATE  PLC008OT-RTN-CD                                    00024000
             WHEN  ZERO                                                 00024100
               CONTINUE                                                 00024200
             WHEN  OTHER                                                00024300
               PERFORM  BS9002-01  THRU  BS9002-99                      00024500
           END-EVALUATE.                                                00024600
157SCA     MOVE  D9I1-J-CD               TO  WK-KSUPCD.                 00024800
157SCAM MZADMPPR (WK-KSUPCD,8,** MASK **)                 00024900
157SCAM MZALCDBC(J1000000,WK-KSUPCD,WK-LOCKEY)                          00025000
157SCAM MZASUBDB(LOC-RC(1:1))                                           00025100
157SCA     .                                                            00025200
157SCA     IF  LOC-RC                  =  'MASK'                           00025300
157SCA         PERFORM  BS9009-01  THRU  BS9009-99                      00025400
157SCA     END-IF.                                                      00025500
157SCAM MZADMPPR(WK-LOCKEY,8,LOCKEY=)                                   00025700
       B31-99.                                                          00025900
           EXIT.                                                        00026000
      M    MUNOP (39)                                                   00026400
       B40.                                                             00026800
           PERFORM  BS401-01  THRU  BS401-99.                           00026900
           PERFORM  BS402-01  THRU  BS402-99.                           00027000
           IF  D9I1-DDS-SEN-CD  NOT =  SPACE                            00027100
             THEN                                                       00027200
               PERFORM BS403-01 THRU BS403-99                           00027400
             ELSE                                                       00027500
               PERFORM BS404-01 THRU BS404-99                           00027700
           END-IF.                                                      00027800
       B40-99.                                                          00027900
           EXIT.                                                        00028000
       BS401-01.                                                        00028400
           MOVE  SPACE                   TO  WTRC001.                   00028500
           INITIALIZE                        WTRC001.                   00028600
           MOVE  D9I1-J-CD               TO  WC001-J-CD.                00028800
           MOVE  'MASK'                     TO  WC001-INPT-TRAT-SBKB.      00028900
           MOVE  D9I1-TOKU-CD            TO  WC001-INPT-TORI-AIT-CD.    00029000
           MOVE  D9I1-HB                 TO  WC001-HB.                  00029100
           MOVE  D9I1-SYSQNO-J           TO  WC001-SYSQNO-J.            00029200
           MOVE  D9I1-SYSQNO             TO  WC001-SYSQNO.              00029300
157SCA     MOVE  WK-LOCKEY               TO  WC001-RKE-TI.              00029400
157SCA     MOVE  WTRC001                  TO  BLTC011.                  00030100
157SCAM    MZADBANY(BLTC011,XLC0111)                                    00030200
157SCA     MOVE  BLTC011                  TO  WTRC001.                  00030300
157SCA     IF  WK-DBRC  = ZERO                                          00031300
             THEN                                                       00031400
               MOVE  WC001-DP-NO         TO  D9I1-DP-NO                 00031500
               MOVE  WC001-DPG-NO        TO D9I1-DPG-NO                 00031600
             ELSE                                                       00031700
               PERFORM  BS9003-01  THRU  BS9003-99                      00031800
           END-IF.                                                      00031900
       BS401-99.                                                        00032000
           EXIT.                                                        00032100
       BS402-01.                                                        00032500
           MOVE  SPACE                    TO  WTRC03E.                  00032600
           INITIALIZE                         WTRC03E.                  00032700
           MOVE  WC001-J-CD               TO  WC03E-J-CD.               00032900
           MOVE  WC001-HB                 TO  WC03E-HB.                 00033000
           IF  WC001-HDIR-URT-KB  =  'MASK'                                00033100
             THEN                                                       00033200
               MOVE  WC001-HZL-TRAT-SBKB  TO  WC03E-INPT-TRAT-SBKB      00033300
               MOVE  WC001-HZY-LIK-AIT-CD TO  WC03E-INPT-TORI-AIT-CD    00033400
               MOVE  WC001-HZL-SYSQNO-J   TO  WC03E-SYSQNO-J            00033500
               MOVE  WC001-HZY-LIK-SYSQNO TO  WC03E-SYSQNO              00033600
             ELSE                                                       00033700
               MOVE  WC001-INPT-TRAT-SBKB TO  WC03E-INPT-TRAT-SBKB      00033800
               MOVE  WC001-INPT-TORI-AIT-CD  TO  WC03E-INPT-TORI-AIT-CD 00033900
               MOVE  WC001-SYSQNO-J       TO  WC03E-SYSQNO-J            00034000
               MOVE  WC001-SYSQNO         TO  WC03E-SYSQNO              00034100
           END-IF.                                                      00034200
157SCA     MOVE  WK-LOCKEY                TO  WC03E-RKE-TI.             00034300
157SCA     MOVE  WTRC03E                  TO  BLTC0T1.                  00035000
157SCAM    MZADBANY(BLTC0T1,XLC0T11)                                    00035100
157SCA     MOVE  BLTC0T1                  TO  WTRC03E.                  00035200
157SCA     IF  WK-DBRC  = ZERO                                          00036200
             THEN                                                       00036300
               CONTINUE                                                 00036400
             ELSE                                                       00036500
               PERFORM  BS9004-01  THRU  BS9004-99                      00036600
           END-IF.                                                      00036700
       BS402-99.                                                        00036800
           EXIT.                                                        00036900
       BS403-01.                                                        00037300
           MOVE  D9I1-REC              TO  DPO1-REC.                    00037500
           MOVE  WC001-DNK-KRNO        TO  DPO1-DNK-KRNO.               00037700
           MOVE  WC03E-UR-E-DNK-CD     TO  DPO1-UR-E-DNK-CD.            00037900
           MOVE  WC001-INPT-TORI-AIT-CD  TO  WK-KEY-CD.                 00038100
           PERFORM  BS4031-01  THRU  BS4031-99.                         00038200
           MOVE  WG032-AIT-ME          TO  DPO1-E-ME                    00038300
                                           OF  DPO1-K-R-J-DT-INF.       00038400
           MOVE  WC03E-JCY-E-DNK-CD    TO  DPO1-JCY-E-DNK-CD.           00038600
           MOVE  WC03E-DNK-J-CD        TO  DPO1-DNK-J-CD.               00038800
           MOVE  WC001-DNK-JCTK-CD(3:6)  TO  DPO1-DNK-JCTK-CD.          00039000
           MOVE  WC001-DNK-JCTK-CD     TO  WK-KEY-CD.                   00039200
           PERFORM  BS4031-01  THRU  BS4031-99.                         00039300
           MOVE  WG032-AIT-ME          TO  DPO1-TOKU-ME.                00039400
           MOVE  WC001-DNK-HSK-CD      TO   DPO1-DNK-HSK-CD.            00039600
           IF  WC001-DNK-JCTK-CD  NOT =  SPACE  AND                     00040100
               WC001-IGN-SIJ-FL   NOT =  'MASK'                            00040200
             THEN                                                       00040300
               PERFORM  BS4032-01  THRU  BS4032-99                      00040400
               MOVE  WK-TRP-SEN-ME        TO  DPO1-TRP-SEN-ME           00040500
157SCA         MOVE  PLC218OT-HSK-ADR1    TO  DPO1-HSK-ADR1             00040800
157SCA         MOVE  PLC218OT-HSK-ADR2    TO  DPO1-HSK-ADR2             00040900
               MOVE  WG08B-TRP-SEN-TELNO  TO  DPO1-TRP-SEN-TELNO        00041000
               PERFORM  BS4033-01  THRU  BS4033-99                      00041100
             ELSE                                                       00041200
               MOVE  WC03E-TRP-SEN-ME     TO  DPO1-TRP-SEN-ME           00041300
               MOVE  WC03E-HSK-ADR1       TO  WK-ADR                    00041400
               MOVE  WK-HSK-ADR           TO  DPO1-HSK-ADR1             00041500
               MOVE  WC03E-HSK-ADR2       TO  WK-ADR                    00041600
               MOVE  WK-HSK-ADR           TO  DPO1-HSK-ADR2             00041700
               MOVE  WC03E-TRP-SEN-TELNO  TO  DPO1-TRP-SEN-TELNO        00041800
2202AD         MOVE  SPACE                TO  WK-JEI-UD-RPS-KB          00041810
           END-IF.                                                      00041900
           MOVE  WC03E-REF-NO          TO  DPO1-REF-NO.                 00042100
           MOVE  WC03E-MSI-NO          TO  DPO1-MSI-NO.                 00042300
           MOVE  WC03E-DNK-LAM-BEN-KB TO   DPO1-DNK-LAM-BEN-KB.         00042500
           MOVE  WC03E-DNK-KUA-HB      TO  DPO1-DNK-KUA-HB.             00042700
           MOVE  WC03E-MOT-HB          TO  DPO1-MOT-HB.                 00042900
           MOVE  WC03E-UR-KB           TO  DPO1-UR-KB.                  00043100
           MOVE  WC03E-SPR-SU          TO  DPO1-SPR-SU.                 00043300
           MOVE  WC03E-PCK-SU          TO  DPO1-PCK-SU.                 00043500
           MOVE  WC03E-PPC             TO  DPO1-PPC.                    00043700
           MOVE  WC03E-HOPE-ARV-HT     TO  DPO1-HOPE-ARV-HT.            00043900
           MOVE  WC03E-HOPE-ARV-H      TO  DPO1-HOPE-ARV-H.             00044100
           MOVE  WC001-DP-KK-DSP-KB    TO  DPO1-DP-KB                   00044300
                                           DPO1-DP-KK-DSP-KB.           00044400
           MOVE  WC03E-DRW-NO          TO  DPO1-DRW-NO.                 00044600
           MOVE  WC03E-DIR-TEM-CD      TO  DPO1-DIR-TEM-CD.             00044800
           MOVE  WC03E-KAIN-CD         TO  DPO1-KAIN-CD.                00045000
           MOVE  WC03E-CKS-KB          TO  DPO1-CKS-KB.                 00045200
           MOVE  WC03E-FCU-KB          TO  DPO1-FCU-KB.                 00045400
           MOVE  WC03E-NBK-KB          TO  DPO1-NBK-KB.                 00045600
           MOVE  WC03E-HPN-TSI-KB      TO  DPO1-HPN-TSI-KB.             00045800
           MOVE  WC03E-SVC-KB          TO  DPO1-SVC-KB.                 00046000
           MOVE  WC03E-USR-KB          TO  DPO1-USR-KB.                 00046200
           MOVE  WC03E-JCI-TSCD        TO  DPO1-JCI-TSCD.               00046400
           MOVE  WC03E-EDPT-TSCD       TO  DPO1-EDPT-TSCD.              00046600
           MOVE  WC03E-TKKK            TO  DPO1-TKKK.                   00046800
           MOVE  WC03E-TOKU-KG         TO  DPO1-TOKU-KG.                00047000
           MOVE  WC03E-TOKU-RV-KB      TO  DPO1-TOKU-RV-KB.             00047200
           MOVE  WC03E-OTN-DSP-KB      TO  DPO1-OTN-DSP-KB.             00047400
           MOVE  WC03E-OTN             TO  DPO1-OTN.                    00047600
           MOVE  WC03E-GKK             TO  DPO1-GKK.                    00047800
           MOVE  WC03E-BLS             TO  DPO1-BLS.                    00048000
           MOVE  WC03E-SYB-KB          TO  DPO1-SYB-KB.                 00048200
           MOVE  WC03E-SYK-SYBT-CD     TO  DPO1-SYK-SYBT-CD.            00048400
           MOVE  WC03E-TNB             TO  DPO1-TNB.                    00048600
           MOVE  WC03E-SPGD-WH-CD      TO  DPO1-SPGD-WH-CD.             00048800
           MOVE  WC03E-DP-SWK-KB       TO  DPO1-DP-SWK-KB.              00049000
           MOVE  WC001-DNK-KEN-KRNO    TO  DPO1-DNK-KEN-KRNO.           00049200
157SCA     MOVE  WC03E-DNK-KENM-NO(1:4) TO DPO1-DNK-KENM-NO.            00049500
           MOVE  WC03E-KENM-BK1        TO  DPO1-KENM-BK1.               00049700
           MOVE  WC03E-KENM-BK2        TO  DPO1-KENM-BK2.               00049900
           MOVE  WC03E-DDP-ROOT        TO  DPO1-DDP-ROOT.               00050100
           MOVE  WC03E-ANLS-CD         TO  DPO1-ANLS-CD.                00050300
           MOVE  WC03E-EAR-TRP-ROOT    TO  DPO1-EAR-TRP-ROOT.           00050500
           MOVE  WC03E-TKSK-CD         TO  DPO1-TKSK-CD.                00050700
           MOVE  WC03E-DHKO-HT         TO  DPO1-DHKO-HT.                00050900
           MOVE  WC03E-PCK-HKB         TO  DPO1-PCK-HKB.                00051100
           MOVE  WC03E-DDP-KIY-WH-CD   TO  DPO1-DDP-KIY-WH-CD.          00051300
           MOVE  WC03E-DDP-URE-CD      TO  DPO1-DDP-URE-CD.             00051500
           MOVE  WC03E-SAY-KB          TO  DPO1-SAY-KB.                 00051700
           MOVE  WC03E-SYAR-LMT        TO  DPO1-SYAR-LMT.               00051900
           MOVE  WC001-J-JSI-KK-P-KG   TO  DPO1-J-JSI-KK-P-KG.          00052100
           MOVE  WC001-DDP-TKKK        TO  DPO1-DDP-TKKK.               00052300
           MOVE  WC03E-MNM-HKNA-IPA-BIT    TO  DPO1-KSK-KMM-CNY-KB.     00052500
           MOVE  SPACE                     TO  DPO1-KSK-KNA-MNM.        00052700
           IF  WC03E-MNM-HKNA-IPA-BIT  =  'MASK'                           00052800
             THEN                                                       00052900
               MOVE  WC03E-DNK-MNM-HKNA         TO  DPO1-KSK-KNA-MNM    00053000
             ELSE                                                       00053100
               PERFORM  BS4034-01  THRU  BS4034-99                      00053200
157SCA         IF  ( PMK892-RTN-CD       =  ZERO )  AND                 00053500
157SCA             ( WG042-KARI-KZA-KB   =  ZERO )                      00053600
                 THEN                                                   00053700
                   MOVE  WG042-KSK-KNA-MNM      TO  DPO1-KSK-KNA-MNM    00053800
               END-IF                                                   00053900
           END-IF.                                                      00054000
075K1A     MOVE  WC001-NS-KB           TO  DPO1-NS-KB                   00054200
075K1A     MOVE  WC001-TOKU-CMN-NO     TO  DPO1-TOKU-CMN-NO             00054400
075K1A     MOVE  WC001-KEN-NO          TO  DPO1-KEN-NO                  00054600
092K1A     MOVE  WC001-UNS-DIS-CD      TO  DPO1-UNS-DIS-CD.             00054800
092K1A     MOVE  WC001-UNS-GSY-CD      TO  DPO1-UNS-GSY-CD.             00054900
092K1A     PERFORM  BA10-01          THRU  BA10-99.                     00055100
092K1A     MOVE  WK-DIS-ME             TO  DPO1-UNS-DIS-ME.             00055200
092K1A     PERFORM  BA20-01          THRU  BA20-99.                     00055400
092K1A     MOVE  WK-GSY-ME             TO  DPO1-UNS-GSY-ME.             00055500
092K1A     MOVE  WC001-UND-CD-AFY-FL   TO  DPO1-UND-CD-AFY-FL.          00055700
092K1A     MOVE  WC001-UNG-CD-AFY-FL   TO  DPO1-UNG-CD-AFY-FL.          00055800
092K1A     MOVE  WC001-CHH-KB          TO  DPO1-CHH-KB.                 00056000
157SCA     MOVE  WC03E-DNK-KENM-NO     TO  DPO1-VA-KEN-NO.              00056200
2202AD     MOVE  WK-JEI-UD-RPS-KB      TO  DPO1-JEI-UD-RPS-KB.          00056220
           WRITE    DPO1-REC.                                           00056400
           ADD      +1                 TO   RC2.                        00056500
       BS403-99.                                                        00056600
           EXIT.                                                        00056700
       BS4031-01.                                                       00057100
157SCA     MOVE  SPACE                    TO  WTRG032                   00057400
157SCA                                        PMK850-K-ZPARM.           00057500
157SCA     INITIALIZE                         WTRG032                   00057600
157SCA                                        PMK850-K-ZPARM.           00057700
           MOVE  WK-KEY-CD                TO  WG032-AIT-CD.             00057800
           MOVE  WC001-J-SKYT-P-DP-HT     TO  WG032-TSTR-HT             00057900
                                              WG032-TEND-HT.            00058000
157SCA     MOVE  ZERO                     TO  PMK850-SUBR-FC-FL.        00058500
157SCA     MOVE  WK-KEY-CD                TO  PMK850-AIT-CD.            00058600
157SCA     MOVE  WC001-J-SKYT-P-DP-HT     TO  PMK850-AGE-FIX-HT.        00058700
157SCAM    MZADMPPR (PMK850-K-ZPARM,20,BS4031-01## PMK850-K-ZPARM ##)   00058900
157SCA     CALL 'MASK'           USING FCOM                         00059200
157SCA                                     BZMZB41                      00059300
157SCA                                     WTRG032                      00059400
157SCA                                     PMK850-K-ZPARM               00059500
157SCA                                     WB41-NZ1ZB41.                00059600
157SCA     IF  PMK850-RTN-CD  = ZERO                                    00060200
             THEN                                                       00060300
               CONTINUE                                                 00060400
             ELSE                                                       00060500
               PERFORM  BS9005-01  THRU  BS9005-99                      00060600
           END-IF.                                                      00060700
       BS4031-99.                                                       00060800
           EXIT.                                                        00060900
       BS4032-01.                                                       00061300
           MOVE  SPACE              TO  WTRG08B.                        00061500
           INITIALIZE                   WTRG08B.                        00061700
           MOVE  WC001-DNK-JCTK-CD  TO  WG08B-JCY-TOKU-DNK-CD.          00061900
           MOVE  WC001-DNK-HSK-CD   TO  WG08B-DNK-HSK-CD.               00062000
157SCA     MOVE  WTRG08B            TO  BLMG8B1.                        00063000
157SCAM    MZADBANY(BLMG8B1,XLG8B11)                                    00063100
157SCA     MOVE  BLMG8B1            TO  WTRG08B.                        00063200
157SCA     IF  ( WK-DBRC                =  ZERO              )          00063800
           AND ( WG08B-KARI-KZA-KB      =  ZERO              )          00063900
           AND ( WG08B-JCY-TOKU-DNK-CD  =  WC001-DNK-JCTK-CD )          00064000
           AND ( WG08B-DNK-HSK-CD       =  WC001-DNK-HSK-CD  )          00064100
             THEN                                                       00064200
               MOVE  WG08B-DSDD-NM-HEN-HT  TO  WK-HT-9                  00064300
               IF  WK-HT  <=  WC03E-DHKO-HT                             00064600
                 THEN                                                   00064700
                   MOVE  WG08B-TRP-SEN-ME   TO  WK-TRP-SEN-ME           00064800
                 ELSE                                                   00064900
                   MOVE  WG08B-OLD-DSDD-NM  TO  WK-TRP-SEN-ME           00065000
               END-IF                                                   00065100
157SCA         MOVE  SPACE                  TO  PLC218-K-RPARM          00065400
157SCA         INITIALIZE                       PLC218-K-RPARM          00065500
               MOVE  WG08B-DSDD-ADI-HEN-HT  TO  WK-HT-9                 00065600
               IF  WK-HT  <=  WC03E-DHKO-HT                             00065900
                 THEN                                                   00066000
157SCA             MOVE  WG08B-DSDD-FKAD       TO  PLC218IN-DSDD-FKAD   00066600
157SCA             MOVE  WG08B-DSDD-SIGAD      TO  PLC218IN-DSDD-SIGAD  00066700
157SCA             MOVE  WG08B-DSDD-CAD        TO  PLC218IN-DSDD-CAD    00066800
157SCA             MOVE  WG08B-DSDD-CAAD       TO  PLC218IN-DSDD-CAAD   00066900
157SCA             MOVE  WG08B-DSDD-BAD        TO  PLC218IN-DSDD-BAD    00067000
                 ELSE                                                   00067100
157SCA             MOVE  WG08B-OLD-DSDD-FKAD   TO  PLC218IN-DSDD-FKAD   00067700
157SCA             MOVE  WG08B-OLD-DSDD-SIGAD  TO  PLC218IN-DSDD-SIGAD  00067800
157SCA             MOVE  WG08B-OLD-DSDD-CAD    TO  PLC218IN-DSDD-CAD    00067900
157SCA             MOVE  WG08B-OLD-DSDD-CAAD   TO  PLC218IN-DSDD-CAAD   00068000
157SCA             MOVE  WG08B-OLD-DSDD-BAD    TO  PLC218IN-DSDD-BAD    00068100
               END-IF                                                   00068200
2202AD         MOVE  WG08B-JEI-UD-RPS-KB       TO  WK-JEI-UD-RPS-KB     00068210
157SCA     CALL 'MASK'           USING PLC218-K-RPARM               00068500
             ELSE                                                       00068800
               MOVE  SPACE              TO  WTRG08B                     00068900
               INITIALIZE                   WTRG08B                     00069000
157SCA         MOVE  SPACE              TO  PLC218-K-RPARM              00069300
157SCA         INITIALIZE                   PLC218-K-RPARM              00069400
               MOVE  SPACE              TO  WK-TRP-SEN-ME               00069500
2202AD         MOVE  SPACE              TO  WK-JEI-UD-RPS-KB            00069510
           END-IF.                                                      00069600
       BS4032-99.                                                       00069700
           EXIT.                                                        00069800
       BS4033-01.                                                       00070200
157SCA     CONTINUE.                                                    00071700
       BS4033-99.                                                       00071800
           EXIT.                                                        00071900
       BS4034-01.                                                       00072300
157SCA     MOVE  SPACE                    TO  WTRG042                   00073700
157SCA                                        PMK892-K-ZPARM.           00073800
157SCA     INITIALIZE                         WTRG042                   00073900
157SCA                                        PMK892-K-ZPARM.           00074000
157SCA     MOVE  'MASK'                      TO  PMK892-DB-YKBN.           00074100
157SCA     MOVE  'MASK'                      TO  PMK892-ITEM-AAK-INPT-FL.  00074200
157SCA     MOVE  ZERO                     TO  PMK892-SUBR-FC-FL.        00074300
157SCA     MOVE  'MASK'                      TO  PMK892-SUBR-PRC-KB.       00074400
157SCA     MOVE  WC001-HB                 TO  PMK892-HB.                00074500
157SCA     MOVE  WC001-J-CD               TO  PMK892-J-CD.              00074600
157SCA     MOVE  WC001-J-SKYT-P-DP-HT     TO  PMK892-AGE-FIX-HT.        00074700
157SCA     CALL 'MASK'           USING FCOM                         00074900
157SCA                                     BZMZB61                      00075000
157SCA                                     WTRG042                      00075100
157SCA                                     PMK892-K-ZPARM               00075200
157SCA                                     WB61-NZ1ZB61.                00075300
157SCA     IF  ( PMK892-RTN-CD       =  ZERO )  AND                     00076000
157SCA         ( WG042-KARI-KZA-KB   =  ZERO )                          00076100
             THEN                                                       00076200
               CONTINUE                                                 00076300
             ELSE                                                       00076400
               PERFORM  BS40341-01  THRU  BS40341-99                    00076500
           END-IF.                                                      00076600
       BS4034-99.                                                       00076700
           EXIT.                                                        00076800
       BS40341-01.                                                      00077200
157SCA     MOVE  SPACE                    TO  WTRG042                   00078600
157SCA                                        PMK892-K-ZPARM.           00078700
157SCA     INITIALIZE                         WTRG042                   00078800
157SCA                                        PMK892-K-ZPARM.           00078900
157SCA     MOVE  'MASK'                      TO  PMK892-DB-YKBN.           00079000
157SCA     MOVE  'MASK'                      TO  PMK892-ITEM-AAK-INPT-FL.  00079100
157SCA     MOVE  ZERO                     TO  PMK892-SUBR-FC-FL.        00079200
157SCA     MOVE  'MASK'                      TO  PMK892-SUBR-PRC-KB.       00079300
157SCA     MOVE  WC001-HB                 TO  PMK892-HB.                00079400
157SCA     MOVE  WC001-J-CD               TO  PMK892-J-CD.              00079500
157SCA     MOVE  AOL02-TDD-HT             TO  PMK892-AGE-FIX-HT.        00079600
157SCA     CALL 'MASK'           USING FCOM                         00079800
157SCA                                     BZMZB61                      00079900
157SCA                                     WTRG042                      00080000
157SCA                                     PMK892-K-ZPARM               00080100
157SCA                                     WB61-NZ1ZB61.                00080200
           CONTINUE.                                                    00080700
       BS40341-99.                                                      00080800
           EXIT.                                                        00080900
       BS404-01.                                                        00081300
           MOVE  D9I1-REC              TO  DPO2-REC.                    00081500
           MOVE  WC001-DNK-KRNO        TO  DPO2-DNK-KRNO.               00081700
           MOVE  WC03E-UR-E-DNK-CD     TO  DPO2-UR-E-DNK-CD.            00081900
           MOVE  WC001-INPT-TORI-AIT-CD  TO  WK-KEY-CD.                 00082100
           PERFORM  BS4031-01  THRU  BS4031-99.                         00082200
           MOVE  WG032-AIT-ME          TO  DPO2-E-ME                    00082300
                                           OF  DPO2-K-R-J-DT-INF.       00082400
           MOVE  WC03E-JCY-E-DNK-CD    TO  DPO2-JCY-E-DNK-CD.           00082600
           MOVE  WC03E-DNK-J-CD        TO  DPO2-DNK-J-CD.               00082800
           MOVE  WC001-DNK-JCTK-CD(3:6)  TO  DPO2-DNK-JCTK-CD.          00083000
           MOVE  WC001-DNK-JCTK-CD     TO  WK-KEY-CD.                   00083200
           PERFORM  BS4031-01  THRU  BS4031-99.                         00083300
           MOVE  WG032-AIT-ME          TO  DPO2-TOKU-ME.                00083400
           MOVE  WC001-DNK-HSK-CD      TO  DPO2-DNK-HSK-CD.             00083600
           IF  WC001-DNK-JCTK-CD  NOT =  SPACE  AND                     00084100
               WC001-IGN-SIJ-FL   NOT =  'MASK'                            00084200
             THEN                                                       00084300
               PERFORM  BS4032-01  THRU  BS4032-99                      00084400
               MOVE  WK-TRP-SEN-ME        TO  DPO2-TRP-SEN-ME           00084500
157SCA         MOVE  PLC218OT-HSK-ADR1    TO  DPO2-HSK-ADR1             00084800
157SCA         MOVE  PLC218OT-HSK-ADR2    TO  DPO2-HSK-ADR2             00084900
               MOVE  WG08B-TRP-SEN-TELNO  TO  DPO2-TRP-SEN-TELNO        00085000
               PERFORM  BS4033-01  THRU  BS4033-99                      00085100
             ELSE                                                       00085200
               MOVE  WC03E-TRP-SEN-ME     TO  DPO2-TRP-SEN-ME           00085300
               MOVE  WC03E-HSK-ADR1       TO  WK-ADR                    00085400
               MOVE  WK-HSK-ADR           TO  DPO2-HSK-ADR1             00085500
               MOVE  WC03E-HSK-ADR2       TO  WK-ADR                    00085600
               MOVE  WK-HSK-ADR           TO  DPO2-HSK-ADR2             00085700
               MOVE  WC03E-TRP-SEN-TELNO  TO  DPO2-TRP-SEN-TELNO        00085800
2202AD         MOVE  SPACE                TO  WK-JEI-UD-RPS-KB          00085810
           END-IF.                                                      00085900
           MOVE  WC03E-REF-NO          TO  DPO2-REF-NO.                 00086100
           MOVE  WC03E-MSI-NO          TO  DPO2-MSI-NO.                 00086300
           MOVE  WC03E-DNK-LAM-BEN-KB TO   DPO2-DNK-LAM-BEN-KB.         00086500
           MOVE  WC03E-DNK-KUA-HB      TO  DPO2-DNK-KUA-HB.             00086700
           MOVE  WC03E-MOT-HB          TO  DPO2-MOT-HB.                 00086900
           MOVE  WC03E-UR-KB           TO  DPO2-UR-KB.                  00087100
           MOVE  WC03E-SPR-SU          TO  DPO2-SPR-SU.                 00087300
           MOVE  WC03E-PCK-SU          TO  DPO2-PCK-SU.                 00087500
           MOVE  WC03E-PPC             TO  DPO2-PPC.                    00087700
           MOVE  WC03E-HOPE-ARV-HT     TO  DPO2-HOPE-ARV-HT.            00087900
           MOVE  WC03E-HOPE-ARV-H      TO  DPO2-HOPE-ARV-H.             00088100
           MOVE  WC001-DP-KK-DSP-KB    TO  DPO2-DP-KB                   00088300
                                           DPO2-DP-KK-DSP-KB.           00088400
           MOVE  WC03E-DRW-NO          TO  DPO2-DRW-NO.                 00088600
           MOVE  WC03E-DIR-TEM-CD      TO  DPO2-DIR-TEM-CD.             00088800
           MOVE  WC03E-KAIN-CD         TO  DPO2-KAIN-CD.                00089000
           MOVE  WC03E-CKS-KB          TO  DPO2-CKS-KB.                 00089200
           MOVE  WC03E-FCU-KB          TO  DPO2-FCU-KB.                 00089400
           MOVE  WC03E-NBK-KB          TO  DPO2-NBK-KB.                 00089600
           MOVE  WC03E-HPN-TSI-KB      TO  DPO2-HPN-TSI-KB.             00089800
           MOVE  WC03E-SVC-KB          TO  DPO2-SVC-KB.                 00090000
           MOVE  WC03E-USR-KB          TO  DPO2-USR-KB.                 00090200
           MOVE  WC03E-JCI-TSCD        TO  DPO2-JCI-TSCD.               00090400
           MOVE  WC03E-EDPT-TSCD       TO  DPO2-EDPT-TSCD.              00090600
           MOVE  WC03E-TKKK            TO  DPO2-TKKK.                   00090800
           MOVE  WC03E-TOKU-KG         TO  DPO2-TOKU-KG.                00091000
           MOVE  WC03E-TOKU-RV-KB      TO  DPO2-TOKU-RV-KB.             00091200
           MOVE  WC03E-OTN-DSP-KB      TO  DPO2-OTN-DSP-KB.             00091400
           MOVE  WC03E-OTN             TO  DPO2-OTN.                    00091600
           MOVE  WC03E-GKK             TO  DPO2-GKK.                    00091800
           MOVE  WC03E-BLS             TO  DPO2-BLS.                    00092000
           MOVE  WC03E-SYB-KB          TO  DPO2-SYB-KB.                 00092200
           MOVE  WC03E-SYK-SYBT-CD     TO  DPO2-SYK-SYBT-CD.            00092400
           MOVE  WC03E-TNB             TO  DPO2-TNB.                    00092600
           MOVE  WC03E-SPGD-WH-CD      TO  DPO2-SPGD-WH-CD.             00092800
           MOVE  WC03E-DP-SWK-KB       TO  DPO2-DP-SWK-KB.              00093000
           MOVE  WC001-DNK-KEN-KRNO    TO  DPO2-DNK-KEN-KRNO.           00093200
157SCA     MOVE  WC03E-DNK-KENM-NO     TO  DPO2-DNK-KENM-NO.            00093500
           MOVE  WC03E-KENM-BK1        TO  DPO2-KENM-BK1.               00093700
           MOVE  WC03E-KENM-BK2        TO  DPO2-KENM-BK2.               00093900
           MOVE  WC03E-DDP-ROOT        TO  DPO2-DDP-ROOT.               00094100
           MOVE  WC03E-ANLS-CD         TO  DPO2-ANLS-CD.                00094300
           MOVE  WC03E-EAR-TRP-ROOT    TO  DPO2-EAR-TRP-ROOT.           00094500
           MOVE  WC03E-TKSK-CD         TO  DPO2-TKSK-CD.                00094700
           MOVE  WC03E-DHKO-HT         TO  DPO2-DHKO-HT.                00094900
           MOVE  WC03E-PCK-HKB         TO  DPO2-PCK-HKB.                00095100
           MOVE  WC03E-DDP-KIY-WH-CD   TO  DPO2-DDP-KIY-WH-CD.          00095300
           MOVE  WC03E-DDP-URE-CD      TO  DPO2-DDP-URE-CD.             00095500
           MOVE  WC03E-SAY-KB          TO  DPO2-SAY-KB.                 00095700
           MOVE  WC03E-SYAR-LMT        TO  DPO2-SYAR-LMT.               00095900
           MOVE  WC001-J-JSI-KK-P-KG   TO  DPO2-J-JSI-KK-P-KG.          00096100
           MOVE  WC001-DDP-TKKK        TO  DPO2-DDP-TKKK.               00096300
           MOVE  WC03E-MNM-HKNA-IPA-BIT    TO  DPO2-KSK-KMM-CNY-KB.     00096500
           MOVE  SPACE                     TO  DPO2-KSK-KNA-MNM.        00096700
           IF  WC03E-MNM-HKNA-IPA-BIT  =  'MASK'                           00096800
             THEN                                                       00096900
               MOVE  WC03E-DNK-MNM-HKNA         TO  DPO2-KSK-KNA-MNM    00097000
             ELSE                                                       00097100
               PERFORM  BS4034-01  THRU  BS4034-99                      00097200
157SCA         IF  ( PMK892-RTN-CD       =  ZERO )  AND                 00097500
                   ( WG042-KARI-KZA-KB   =  ZERO )                      00097600
                 THEN                                                   00097700
                   MOVE  WG042-KSK-KNA-MNM      TO  DPO2-KSK-KNA-MNM    00097800
               END-IF                                                   00097900
           END-IF.                                                      00098000
075K1A     MOVE  WC001-NS-KB           TO  DPO2-NS-KB                   00098200
075K1A     MOVE  WC001-TOKU-CMN-NO     TO  DPO2-TOKU-CMN-NO             00098400
075K1A     MOVE  WC001-KEN-NO          TO  DPO2-KEN-NO                  00098600
092K1A     MOVE  WC001-UNS-DIS-CD      TO  DPO2-UNS-DIS-CD.             00098800
092K1A     MOVE  WC001-UNS-GSY-CD      TO  DPO2-UNS-GSY-CD.             00098900
092K1A     PERFORM  BA10-01          THRU  BA10-99.                     00099100
092K1A     MOVE  WK-DIS-ME             TO  DPO2-UNS-DIS-ME.             00099200
092K1A     PERFORM  BA20-01          THRU  BA20-99.                     00099400
092K1A     MOVE  WK-GSY-ME             TO  DPO2-UNS-GSY-ME.             00099500
092K1A     MOVE  WC001-UND-CD-AFY-FL   TO  DPO2-UND-CD-AFY-FL.          00099700
092K1A     MOVE  WC001-UNG-CD-AFY-FL   TO  DPO2-UNG-CD-AFY-FL.          00099800
092K1A     MOVE  WC001-CHH-KB          TO  DPO2-CHH-KB.                 00100000
157SCA     MOVE  WC03E-DNK-KENM-NO     TO  DPO2-VA-KEN-NO.              00100200
2202AD     MOVE  WK-JEI-UD-RPS-KB      TO  DPO2-JEI-UD-RPS-KB.          00100220
           WRITE    DPO2-REC.                                           00100400
           ADD      +1                 TO   RC3.                        00100500
       BS404-99.                                                        00100600
           EXIT.                                                        00100700
      M      MUNOP(41)                                                  00101100
       B49.                                                             00101500
           CLOSE F2 F3.                                                 00101700
      M    MURCS  (DRIG01ZZ,1)                                          00101900
      M    MURCS  (DROG02ZZ,2)                                          00102000
      M    MURCS  (DROG03ZZ,3)                                          00102100
157SCAM    MZADMPCL                                                     00102300
           FINISH.                                                      00102400
      M    MZADMPCL                                                     00102500
       B49-99.                                                          00102600
           EXIT.                                                        00102700
092K1A BA10-01.                                                         00103100
092K1A     IF  WC001-UNS-DIS-CD  =  SPACE                               00103400
092K1A       THEN                                                       00103500
092K1A         MOVE  SPACE                 TO  WK-DIS-ME                00103600
092K1A         GO  TO  BA10-99                                          00103700
092K1A     END-IF.                                                      00103800
157SCA     MOVE  SPACE                 TO  W1TRG09S                     00104900
157SCA                                     B1TRG09S                     00105000
157SCA                                     PLC084-K-RPARM.              00105100
157SCA     INITIALIZE                      W1TRG09S                     00105200
157SCA                                     B1TRG09S                     00105300
157SCA                                     PLC084-K-RPARM.              00105400
157SCA     MOVE  'MASK'                   TO  PLC084IN-SUBR-PRC-KB.        00105500
157SCA     MOVE  WC001-J-CD            TO  PLC084IN-J-CD.               00105600
157SCA     MOVE  WC001-UNS-DIS-CD      TO  PLC084IN-CMPS-CD.            00105700
157SCA     CALL 'MASK'           USING FCOM                         00106300
157SCA                                     BZMZ9S1                      00106400
157SCA                                     BZCZ561                      00106500
157SCA                                     W1TRG09S                     00106600
157SCA                                     B1TRG09S                     00106700
157SCA                                     PLC084-K-RPARM.              00106800
157SCA     EVALUATE  PLC084OT-RTN-CD                                    00107900
092K1A       WHEN  ZERO                                                 00108000
092K1A         MOVE  W1G09S-CMPS-CD-ME     TO  WK-DIS-ME                00108100
092K1A       WHEN  'MASK'                                                  00108200
092K1A         MOVE  SPACE                 TO  WK-DIS-ME                00108300
092K1A       WHEN  OTHER                                                00108400
092K1A         PERFORM  BS9007-01        THRU  BS9007-99                00108500
092K1A     END-EVALUATE.                                                00108600
157SCA     CONTINUE.                                                    00108900
092K1A BA10-99.                                                         00109000
092K1A     EXIT.                                                        00109300
092K1A BA20-01.                                                         00109700
092K1A     IF  WC001-UNS-GSY-CD  =  SPACE                               00110000
092K1A       THEN                                                       00110100
092K1A         MOVE  SPACE                 TO  WK-GSY-ME                00110200
092K1A         GO  TO  BA20-99                                          00110300
092K1A     END-IF.                                                      00110400
157SCA     MOVE  SPACE                 TO  W1TRG09S                     00111500
157SCA                                     B1TRG09S                     00111600
157SCA                                     PLC084-K-RPARM.              00111700
157SCA     INITIALIZE                      W1TRG09S                     00111800
157SCA                                     B1TRG09S                     00111900
157SCA                                     PLC084-K-RPARM.              00112000
157SCA     MOVE  'MASK'                   TO  PLC084IN-SUBR-PRC-KB.        00112100
157SCA     MOVE  WC001-J-CD            TO  PLC084IN-J-CD.               00112200
157SCA     MOVE  WC001-UNS-GSY-CD      TO  PLC084IN-CMPS-CD.            00112300
157SCA     CALL 'MASK'           USING FCOM                         00112900
157SCA                                     BZMZ9S1                      00113000
157SCA                                     BZCZ561                      00113100
157SCA                                     W1TRG09S                     00113200
157SCA                                     B1TRG09S                     00113300
157SCA                                     PLC084-K-RPARM.              00113400
157SCA     EVALUATE  PLC084OT-RTN-CD                                    00114500
092K1A       WHEN  ZERO                                                 00114600
157SCA         MOVE  B1G09S-UNS-GSY-ME     TO  WK-GSY-ME                00114800
092K1A       WHEN  'MASK'                                                  00114900
092K1A         MOVE  SPACE                 TO  WK-GSY-ME                00115000
092K1A       WHEN  OTHER                                                00115100
092K1A         PERFORM  BS9008-01        THRU  BS9008-99                00115200
092K1A     END-EVALUATE.                                                00115300
157SCA     CONTINUE.                                                    00115600
092K1A BA20-99.                                                         00115700
092K1A     EXIT.                                                        00116000
       BS9001-01.                                                       00116400
      M    MUMSG   (E-001,DB-ERR,MSG-001)                               00116500
      M    MUMSG   (E-001,DATAKEY,CN)                                   00116600
      M    MUABEND                                                      00116700
       BS9001-99.                                                       00116800
           EXIT.                                                        00116900
       BS9002-01.                                                       00117100
      M    MUMSG   (E-002,DB-ERR,MSG-002)                               00117200
      M    MUMSG   (E-002,DATAKEY,CN)                                   00117300
      M    MUABEND                                                      00117400
       BS9002-99.                                                       00117500
           EXIT.                                                        00117600
       BS9003-01.                                                       00117800
      M    MUMSG   (E-003,DB-ERR,MSG-003)                               00117900
      M    MUMSG   (E-003,MASK,WC001-J-CD)                          00118100
      M    MUMSG   (E-003,MASK   ,WC001-INPT-TRAT-SBKB)                00118200
      M    MUMSG   (E-003,MASK   ,WC001-INPT-TORI-AIT-CD)              00118300
      M    MUMSG   (E-003,MASK   ,WC001-HB)                            00118400
      M    MUMSG   (E-003,MASK ,WC001-SYSQNO-J)                      00118500
      M    MUMSG   (E-003,MASK  ,WC001-SYSQNO)                        00118600
      M    MUABEND                                                      00118700
       BS9003-99.                                                       00118800
           EXIT.                                                        00118900
       BS9004-01.                                                       00119100
      M    MUMSG   (E-004,DB-ERR,MSG-004)                               00119200
      M    MUMSG   (E-004,MASK,WC03E-J-CD)                          00119400
      M    MUMSG   (E-004,MASK   ,WC03E-INPT-TRAT-SBKB)                00119500
      M    MUMSG   (E-004,MASK   ,WC03E-INPT-TORI-AIT-CD)              00119600
      M    MUMSG   (E-004,MASK   ,WC03E-HB)                            00119700
      M    MUMSG   (E-004,MASK ,WC03E-SYSQNO-J)                      00119800
      M    MUMSG   (E-004,MASK  ,WC03E-SYSQNO)                        00119900
      M    MUABEND                                                      00120000
       BS9004-99.                                                       00120100
           EXIT.                                                        00120200
       BS9005-01.                                                       00120400
      M    MUMSG   (E-005,DB-ERR,MSG-005)                               00120500
157SCAM    MUMSG   (E-005,MASK   ,PMK850-AIT-CD)                       00120800
157SCAM    MUMSG   (E-005,MASK ,PMK850-AGE-FIX-HT)                   00120900
      M    MUABEND                                                      00121000
       BS9005-99.                                                       00121100
           EXIT.                                                        00121200
       BS9006-01.                                                       00121400
      M    MUMSG   (E-006,DB-ERR,MSG-006)                               00121500
      M    MUMSG   (E-006,MASK  ,WG08B-JCY-TOKU-DNK-CD)                00121600
      M    MUMSG   (E-006,MASK ,WG08B-DNK-HSK-CD)                     00121700
      M    MUABEND                                                      00121800
       BS9006-99.                                                       00121900
           EXIT.                                                        00122000
092K1A BS9007-01.                                                       00122200
092K1AM    MUMSG   (E-007,DB-ERR,MSG-007)                               00122300
092K1AM    MUMSG   (E-007,MASK,WC001-J-CD)                          00122400
092K1AM    MUMSG   (E-007,MASK    ,WC001-UNS-DIS-CD)                    00122500
092K1AM    MUABEND                                                      00122600
092K1A BS9007-99.                                                       00122700
092K1A     EXIT.                                                        00122800
092K1A BS9008-01.                                                       00123000
092K1AM    MUMSG   (E-008,DB-ERR,MSG-008)                               00123100
092K1AM    MUMSG   (E-008,MASK,WC001-J-CD)                          00123200
092K1AM    MUMSG   (E-008,MASK  ,WC001-UNS-GSY-CD)                    00123300
092K1AM    MUABEND                                                      00123400
092K1A BS9008-99.                                                       00123500
092K1A     EXIT.                                                        00123600
157SCA BS9009-01.                                                       00123800
157SCAM    MUMSG   (E-009,DB-ERR,MSG-009)                               00123900
157SCAM    MUMSG   (E-009,MASK,D9I1-J-CD)                             00124000
157SCAM    MUABEND                                                      00124100
157SCA BS9009-99.                                                       00124200
157SCA     EXIT.                                                        00124300
157SCAM    MZADBERR                                                     00124700
