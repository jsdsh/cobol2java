      IPLDN1520070507CSK
      ESLDN1520          B                                             
      EF1        DRIG01ZZ                                              
      EF2        DROG02ZZ                                              
      EF3        DROG03ZZ                                              
      FF1            01500D9I1-REC                                     
      M      NL4DSD91 PR=D9I1-                                         
      FF2            02500DPO1-REC                                     
      M      NL4DSDP1 PR=DPO1-                                         
      FF3            02500DPO2-REC                                     
      M      NL4DSDP1 PR=DPO2-                                         
      W                                                                
TR001 #01    AOL02-NR1OL023.                                           
157SCAM      NL1A0911 PRE=AOL02-                                       
157SCAM      NZ5MK810 (PMK810-)                                        
      #01    WTRG071.                                                  
157SCAM      NL1G0711 01=WG071-                                        
      #01    WTRC001.                                                  
157SCAM      NL1C0011 01=WC001-                                        
      #01    WTRC03E.                                                  
157SCAM      NL1C00T1 01=WC03E-                                        
      #01    WTRG032.                                                  
157SCAM      NL1G0A11 01=WG032-                                        
157SCAM      NL1G0A11 01=WA11-                                         
157SCAM      NZ5MK850 (PMK850-)                                         
157SCAM      NZ1ZB41  (WB41-)                                           
      #01    WTRG08B.                                                   
157SCAM      NL1G08B1 01=WG08B-                                         
      #01    WTRG042.                                                   
157SCAM      NL1G0M11 01=WG042-                                         
092K1A#01    W1TRG09S.                                                  
157SCAM      NL1G09S1 01=W1G09S-                                        
157SCA#01    B1TRG09S.                                                  
157SCAM      NL1G0565 01=B1G09S-                                        
157SCAM      NL5RS001                                                   
      M      NL5CS008                                                   
092K1AM      NL5CS084                                                   
      M      NL5CS218                                                   
157SCAM      MZPZAS40                                                   
157SCAM      NZ5MK892 (PMK892-)                                         
157SCAM      NZ1ZB61  (WB61-)                                           
157SCAM      NL5CS012                                                   
      #01    WK-AREA.                                                   
      # 03   WK-TIME                 PIC 9(08).                         
      # 03   WK-KEY-CD               PIC X(08).                         
      # 03   WK-TRP-SEN-ME           PIC N(20).                         
      # 03   WK-ADR.                                                    
      #  05   FILLER                 PIC X(01).                         
      #  05   WK-HSK-ADR             PIC N(30).                         
      #  05   FILLER                 PIC X(01).                         
      # 03   WK-SYSCK-AREA.                                             
      #  05  WK-SYSID     PIC X(02).                                    
      #  05  WK-J-CD      PIC X(08).                                    
      # 03   WK-HT.                                                     
      #  05  WK-HT-9                 PIC 9(08).                         
092K1A# 03   WK-DIS-ME               PIC N(10).                         
092K1A# 03   WK-GSY-ME               PIC N(10).                         
157SCA# 03   WK-KSUPCD               PIC X(08) VALUE SPACE.             
157SCA# 03   WK-LOCKEY               PIC X(08) VALUE SPACE.             
2202AD# 03   WK-JEI-UD-RPS-KB        PIC X(01).                         
157SCA#01    WK-DBGET-AREA.                                             
157SCA# 03   WK-DBRC                 PIC 9(01).                         
      #01    MSG-AREA.                                                  
      # 03   MSG-001      PIC X(25)  VALUE 'MASK'. 
      # 03   MSG-002      PIC X(25)  VALUE 'MASK'. 
      # 03   MSG-003      PIC X(25)  VALUE 'MASK'. 
      # 03   MSG-004      PIC X(25)  VALUE 'MASK'. 
      # 03   MSG-005      PIC X(25)  VALUE 'MASK'. 
      # 03   MSG-006      PIC X(25)  VALUE 'MASK'. 
092K1A# 03   MSG-007      PIC X(25)  VALUE 'MASK'. 
092K1A# 03   MSG-008      PIC X(25)  VALUE 'MASK'. 
157SCA# 03   MSG-009      PIC X(25)  VALUE 'MASK'. 
      # 03   WK-MSG-DSP1.                                               
      #  05  FILLER       PIC X(01) VALUE 'MASK'.                       
      #  05  WK-MSG-CD    PIC X(08).                                    
      #  05  FILLER       PIC X(01) VALUE 'MASK'.                       
      #  05  WK-MSG-CNT   PIC 9(07).                                    
      M      MUPGM1N (PLDN1520,8)                                       
      M    MZADMPWK                                                     
      P                                                                 
157SCAM      MZASYNDBC(PLDN1520)                                        
      M      MUMAIN1N(B19)                                              
      M      MUREAD1N                                                   
       B11.                                                             
           READY.                                                       
      M    MZADMPOP                                                     
           OPEN  INPUT   F1.                                            
           OPEN  OUTPUT  F2  F3.                                  
           MOVE  SPACE    TO  WK-AREA.                            
           INITIALIZE         WK-AREA.                            
157SCAM    NLAOASCK                                               
TR001 M    NL0SCK20                                               
TR001      CONTINUE.                                              
157SCA     MOVE  SPACE    TO  PMK810-K-ZPARM                      
157SCA                        AOL02-NR1OL023.                     
157SCA     INITIALIZE         PMK810-K-ZPARM                      
157SCA                        AOL02-NR1OL023.                     
157SCA     MOVE  'MASK'  TO  PMK810-CEM-ID.                       
157SCA     MOVE  'MASK'   TO  PMK810-SYS-ID.                      
157SCA     MOVE  ALL 'MASK'  TO  PMK810-KNR-CD.                   
157SCA     CALL  'MASK'   USING  FCOM                             
157SCA                               BZCK911                      
157SCA                               AOL02-NR1OL023               
157SCA                               PMK810-K-ZPARM.              
157SCA     IF  PMK810-RTN-CD      NOT =   ZERO                    
157SCA         PERFORM  BS9001-01  THRU  BS9001-99                
157SCA     END-IF.                                                
       B11-99.                                                    
           EXIT.                                                  
       B19.                                                       
           PERFORM  B49                 THRU  B49-99.              
       B19-99.                                                     
           EXIT.                                                   
       B21.                                                        
           MOVE  D9I1-J-CD  TO  C1NM1.                             
       B21-99.                                                     
           EXIT.                                                   
       B31.                                                        
157SCA     MOVE  SPACE    TO  PLC008-K-RPARM                       
157SCA     INITIALIZE         PLC008-K-RPARM                       
157SCA     MOVE  CN1      TO  PLC008IN-J-CD                        
157SCA     CALL 'MASK'           USING FCOM                        
157SCA                                     BLCG711                 
157SCA                                     PLC008-K-RPARM          
157SCA                                     WTRG071.                
157SCA     EVALUATE  PLC008OT-RTN-CD                               
             WHEN  ZERO                                            
               CONTINUE                                            
             WHEN  OTHER                                  
               PERFORM  BS9002-01  THRU  BS9002-99        
           END-EVALUATE.                                  
157SCA     MOVE  D9I1-J-CD               TO  WK-KSUPCD.   
157SCAM MZADMPPR (WK-KSUPCD,8,** MASK **)                 
157SCAM MZALCDBC(J1000000,WK-KSUPCD,WK-LOCKEY)            
157SCAM MZASUBDB(LOC-RC(1:1))                             
157SCA     .                                              
157SCA     IF  LOC-RC                  =  'MASK'          
157SCA         PERFORM  BS9009-01  THRU  BS9009-99        
157SCA     END-IF.                                        
157SCAM MZADMPPR(WK-LOCKEY,8,LOCKEY=)                     
       B31-99.                                            
           EXIT.                                          
      M    MUNOP (39)                                     
       B40.                                               
           PERFORM  BS401-01  THRU  BS401-99.             
           PERFORM  BS402-01  THRU  BS402-99.             
           IF  D9I1-DDS-SEN-CD  NOT =  SPACE              
             THEN                                                       
               PERFORM BS403-01 THRU BS403-99                           
             ELSE                                                       
               PERFORM BS404-01 THRU BS404-99                           
           END-IF.                                                      
       B40-99.                                                          
           EXIT.                                                        
       BS401-01.                                                        
           MOVE  SPACE                   TO  WTRC001.                   
           INITIALIZE                        WTRC001.                   
           MOVE  D9I1-J-CD               TO  WC001-J-CD.                
           MOVE  'MASK'                     TO  WC001-INPT-TRAT-SBKB.   
           MOVE  D9I1-TOKU-CD            TO  WC001-INPT-TORI-AIT-CD.    
           MOVE  D9I1-HB                 TO  WC001-HB.                  
           MOVE  D9I1-SYSQNO-J           TO  WC001-SYSQNO-J.            
           MOVE  D9I1-SYSQNO             TO  WC001-SYSQNO.              
157SCA     MOVE  WK-LOCKEY               TO  WC001-RKE-TI.              
157SCA     MOVE  WTRC001                  TO  BLTC011.                  
157SCAM    MZADBANY(BLTC011,XLC0111)                                    
157SCA     MOVE  BLTC011                  TO  WTRC001.                  
157SCA     IF  WK-DBRC  = ZERO                                          
             THEN                                                       
               MOVE  WC001-DP-NO         TO  D9I1-DP-NO                 
               MOVE  WC001-DPG-NO        TO D9I1-DPG-NO                 
             ELSE                                                       
               PERFORM  BS9003-01  THRU  BS9003-99                      
           END-IF.                                                      
       BS401-99.                                                        
           EXIT.                                                        
       BS402-01.                                                        
           MOVE  SPACE                    TO  WTRC03E.                  
           INITIALIZE                         WTRC03E.                  
           MOVE  WC001-J-CD               TO  WC03E-J-CD.               
           MOVE  WC001-HB                 TO  WC03E-HB.                 
           IF  WC001-HDIR-URT-KB  =  'MASK'                             
             THEN                                                       
               MOVE  WC001-HZL-TRAT-SBKB  TO  WC03E-INPT-TRAT-SBKB      
               MOVE  WC001-HZY-LIK-AIT-CD TO  WC03E-INPT-TORI-AIT-CD    
               MOVE  WC001-HZL-SYSQNO-J   TO  WC03E-SYSQNO-J            
               MOVE  WC001-HZY-LIK-SYSQNO TO  WC03E-SYSQNO              
             ELSE                                                       
               MOVE  WC001-INPT-TRAT-SBKB TO  WC03E-INPT-TRAT-SBKB      
               MOVE  WC001-INPT-TORI-AIT-CD  TO  WC03E-INPT-TORI-AIT-CD 
               MOVE  WC001-SYSQNO-J       TO  WC03E-SYSQNO-J            
               MOVE  WC001-SYSQNO         TO  WC03E-SYSQNO              
           END-IF.                                                      
157SCA     MOVE  WK-LOCKEY                TO  WC03E-RKE-TI.             
157SCA     MOVE  WTRC03E                  TO  BLTC0T1.                  
157SCAM    MZADBANY(BLTC0T1,XLC0T11)                                    
157SCA     MOVE  BLTC0T1                  TO  WTRC03E.                  
157SCA     IF  WK-DBRC  = ZERO                                          
             THEN                                                       
               CONTINUE                                                 
             ELSE                                                       
               PERFORM  BS9004-01  THRU  BS9004-99                      
           END-IF.                                                      
       BS402-99.                                                        
           EXIT.                                                        
       BS403-01.                                                        
           MOVE  D9I1-REC              TO  DPO1-REC.                    
           MOVE  WC001-DNK-KRNO        TO  DPO1-DNK-KRNO.               
           MOVE  WC03E-UR-E-DNK-CD     TO  DPO1-UR-E-DNK-CD.            
           MOVE  WC001-INPT-TORI-AIT-CD  TO  WK-KEY-CD.                 
           PERFORM  BS4031-01  THRU  BS4031-99.                         
           MOVE  WG032-AIT-ME          TO  DPO1-E-ME                    
                                           OF  DPO1-K-R-J-DT-INF.       
           MOVE  WC03E-JCY-E-DNK-CD    TO  DPO1-JCY-E-DNK-CD.           
           MOVE  WC03E-DNK-J-CD        TO  DPO1-DNK-J-CD.               
           MOVE  WC001-DNK-JCTK-CD(3:6)  TO  DPO1-DNK-JCTK-CD.          
           MOVE  WC001-DNK-JCTK-CD     TO  WK-KEY-CD.                   
           PERFORM  BS4031-01  THRU  BS4031-99.                         
           MOVE  WG032-AIT-ME          TO  DPO1-TOKU-ME.                
           MOVE  WC001-DNK-HSK-CD      TO   DPO1-DNK-HSK-CD.            
           IF  WC001-DNK-JCTK-CD  NOT =  SPACE  AND                     
               WC001-IGN-SIJ-FL   NOT =  'MASK'                         
             THEN                                                       
               PERFORM  BS4032-01  THRU  BS4032-99                      
               MOVE  WK-TRP-SEN-ME        TO  DPO1-TRP-SEN-ME           
157SCA         MOVE  PLC218OT-HSK-ADR1    TO  DPO1-HSK-ADR1             
157SCA         MOVE  PLC218OT-HSK-ADR2    TO  DPO1-HSK-ADR2             
               MOVE  WG08B-TRP-SEN-TELNO  TO  DPO1-TRP-SEN-TELNO        
               PERFORM  BS4033-01  THRU  BS4033-99                      
             ELSE                                                       
               MOVE  WC03E-TRP-SEN-ME     TO  DPO1-TRP-SEN-ME           
               MOVE  WC03E-HSK-ADR1       TO  WK-ADR                    
               MOVE  WK-HSK-ADR           TO  DPO1-HSK-ADR1             
               MOVE  WC03E-HSK-ADR2       TO  WK-ADR                    
               MOVE  WK-HSK-ADR           TO  DPO1-HSK-ADR2             
               MOVE  WC03E-TRP-SEN-TELNO  TO  DPO1-TRP-SEN-TELNO        
2202AD         MOVE  SPACE                TO  WK-JEI-UD-RPS-KB          
           END-IF.                                                      
           MOVE  WC03E-REF-NO          TO  DPO1-REF-NO.                 
           MOVE  WC03E-MSI-NO          TO  DPO1-MSI-NO.                 
           MOVE  WC03E-DNK-LAM-BEN-KB TO   DPO1-DNK-LAM-BEN-KB.         
           MOVE  WC03E-DNK-KUA-HB      TO  DPO1-DNK-KUA-HB.             
           MOVE  WC03E-MOT-HB          TO  DPO1-MOT-HB.                 
           MOVE  WC03E-UR-KB           TO  DPO1-UR-KB.                  
           MOVE  WC03E-SPR-SU          TO  DPO1-SPR-SU.                 
           MOVE  WC03E-PCK-SU          TO  DPO1-PCK-SU.                 
           MOVE  WC03E-PPC             TO  DPO1-PPC.                    
           MOVE  WC03E-HOPE-ARV-HT     TO  DPO1-HOPE-ARV-HT.            
           MOVE  WC03E-HOPE-ARV-H      TO  DPO1-HOPE-ARV-H.             
           MOVE  WC001-DP-KK-DSP-KB    TO  DPO1-DP-KB                   
                                           DPO1-DP-KK-DSP-KB.           
           MOVE  WC03E-DRW-NO          TO  DPO1-DRW-NO.                 
           MOVE  WC03E-DIR-TEM-CD      TO  DPO1-DIR-TEM-CD.             
           MOVE  WC03E-KAIN-CD         TO  DPO1-KAIN-CD.                
           MOVE  WC03E-CKS-KB          TO  DPO1-CKS-KB.                 
           MOVE  WC03E-FCU-KB          TO  DPO1-FCU-KB.                 
           MOVE  WC03E-NBK-KB          TO  DPO1-NBK-KB.                 
           MOVE  WC03E-HPN-TSI-KB      TO  DPO1-HPN-TSI-KB.             
           MOVE  WC03E-SVC-KB          TO  DPO1-SVC-KB.                 
           MOVE  WC03E-USR-KB          TO  DPO1-USR-KB.                 
           MOVE  WC03E-JCI-TSCD        TO  DPO1-JCI-TSCD.               
           MOVE  WC03E-EDPT-TSCD       TO  DPO1-EDPT-TSCD.              
           MOVE  WC03E-TKKK            TO  DPO1-TKKK.                   
           MOVE  WC03E-TOKU-KG         TO  DPO1-TOKU-KG.                
           MOVE  WC03E-TOKU-RV-KB      TO  DPO1-TOKU-RV-KB.             
           MOVE  WC03E-OTN-DSP-KB      TO  DPO1-OTN-DSP-KB.             
           MOVE  WC03E-OTN             TO  DPO1-OTN.                    
           MOVE  WC03E-GKK             TO  DPO1-GKK.                    
           MOVE  WC03E-BLS             TO  DPO1-BLS.                    
           MOVE  WC03E-SYB-KB          TO  DPO1-SYB-KB.                 
           MOVE  WC03E-SYK-SYBT-CD     TO  DPO1-SYK-SYBT-CD.            
           MOVE  WC03E-TNB             TO  DPO1-TNB.                    
           MOVE  WC03E-SPGD-WH-CD      TO  DPO1-SPGD-WH-CD.             
           MOVE  WC03E-DP-SWK-KB       TO  DPO1-DP-SWK-KB.              
           MOVE  WC001-DNK-KEN-KRNO    TO  DPO1-DNK-KEN-KRNO.           
157SCA     MOVE  WC03E-DNK-KENM-NO(1:4) TO DPO1-DNK-KENM-NO.            
           MOVE  WC03E-KENM-BK1        TO  DPO1-KENM-BK1.               
           MOVE  WC03E-KENM-BK2        TO  DPO1-KENM-BK2.               
           MOVE  WC03E-DDP-ROOT        TO  DPO1-DDP-ROOT.               
           MOVE  WC03E-ANLS-CD         TO  DPO1-ANLS-CD.                
           MOVE  WC03E-EAR-TRP-ROOT    TO  DPO1-EAR-TRP-ROOT.           
           MOVE  WC03E-TKSK-CD         TO  DPO1-TKSK-CD.                
           MOVE  WC03E-DHKO-HT         TO  DPO1-DHKO-HT.                
           MOVE  WC03E-PCK-HKB         TO  DPO1-PCK-HKB.                
           MOVE  WC03E-DDP-KIY-WH-CD   TO  DPO1-DDP-KIY-WH-CD.          
           MOVE  WC03E-DDP-URE-CD      TO  DPO1-DDP-URE-CD.             
           MOVE  WC03E-SAY-KB          TO  DPO1-SAY-KB.                 
           MOVE  WC03E-SYAR-LMT        TO  DPO1-SYAR-LMT.               
           MOVE  WC001-J-JSI-KK-P-KG   TO  DPO1-J-JSI-KK-P-KG.          
           MOVE  WC001-DDP-TKKK        TO  DPO1-DDP-TKKK.               
           MOVE  WC03E-MNM-HKNA-IPA-BIT    TO  DPO1-KSK-KMM-CNY-KB.     
           MOVE  SPACE                     TO  DPO1-KSK-KNA-MNM.        
           IF  WC03E-MNM-HKNA-IPA-BIT  =  'MASK'                        
             THEN                                                       
               MOVE  WC03E-DNK-MNM-HKNA         TO  DPO1-KSK-KNA-MNM    
             ELSE                                                       
               PERFORM  BS4034-01  THRU  BS4034-99                      
157SCA         IF  ( PMK892-RTN-CD       =  ZERO )  AND                 
157SCA             ( WG042-KARI-KZA-KB   =  ZERO )                      
                 THEN                                                   
                   MOVE  WG042-KSK-KNA-MNM      TO  DPO1-KSK-KNA-MNM    
               END-IF                                                   
           END-IF.                                                      
075K1A     MOVE  WC001-NS-KB           TO  DPO1-NS-KB                   
075K1A     MOVE  WC001-TOKU-CMN-NO     TO  DPO1-TOKU-CMN-NO             
075K1A     MOVE  WC001-KEN-NO          TO  DPO1-KEN-NO                  
092K1A     MOVE  WC001-UNS-DIS-CD      TO  DPO1-UNS-DIS-CD.             
092K1A     MOVE  WC001-UNS-GSY-CD      TO  DPO1-UNS-GSY-CD.             
092K1A     PERFORM  BA10-01          THRU  BA10-99.                     
092K1A     MOVE  WK-DIS-ME             TO  DPO1-UNS-DIS-ME.             
092K1A     PERFORM  BA20-01          THRU  BA20-99.                     
092K1A     MOVE  WK-GSY-ME             TO  DPO1-UNS-GSY-ME.             
092K1A     MOVE  WC001-UND-CD-AFY-FL   TO  DPO1-UND-CD-AFY-FL.          
092K1A     MOVE  WC001-UNG-CD-AFY-FL   TO  DPO1-UNG-CD-AFY-FL.          
092K1A     MOVE  WC001-CHH-KB          TO  DPO1-CHH-KB.                 
157SCA     MOVE  WC03E-DNK-KENM-NO     TO  DPO1-VA-KEN-NO.              
2202AD     MOVE  WK-JEI-UD-RPS-KB      TO  DPO1-JEI-UD-RPS-KB.          
           WRITE    DPO1-REC.                                           
           ADD      +1                 TO   RC2.                        
       BS403-99.                                                        
           EXIT.                                                        
       BS4031-01.                                                       
157SCA     MOVE  SPACE                    TO  WTRG032                   
157SCA                                        PMK850-K-ZPARM.           
157SCA     INITIALIZE                         WTRG032                   
157SCA                                        PMK850-K-ZPARM.           
           MOVE  WK-KEY-CD                TO  WG032-AIT-CD.             
           MOVE  WC001-J-SKYT-P-DP-HT     TO  WG032-TSTR-HT             
                                              WG032-TEND-HT.            
157SCA     MOVE  ZERO                     TO  PMK850-SUBR-FC-FL.        
157SCA     MOVE  WK-KEY-CD                TO  PMK850-AIT-CD.            
157SCA     MOVE  WC001-J-SKYT-P-DP-HT     TO  PMK850-AGE-FIX-HT.        
157SCAM    MZADMPPR (PMK850-K-ZPARM,20,BS4031-01## PMK850-K-ZPARM ##)   
157SCA     CALL 'MASK'           USING FCOM                         
157SCA                                     BZMZB41                      
157SCA                                     WTRG032                      
157SCA                                     PMK850-K-ZPARM               
157SCA                                     WB41-NZ1ZB41.                
157SCA     IF  PMK850-RTN-CD  = ZERO                                    
             THEN                                                       
               CONTINUE                                                 
             ELSE                                                       
               PERFORM  BS9005-01  THRU  BS9005-99                      
           END-IF.                                                      
       BS4031-99.                                                       
           EXIT.                                                        
       BS4032-01.                                                       
           MOVE  SPACE              TO  WTRG08B.                        
           INITIALIZE                   WTRG08B.                        
           MOVE  WC001-DNK-JCTK-CD  TO  WG08B-JCY-TOKU-DNK-CD.          
           MOVE  WC001-DNK-HSK-CD   TO  WG08B-DNK-HSK-CD.               
157SCA     MOVE  WTRG08B            TO  BLMG8B1.                        
157SCAM    MZADBANY(BLMG8B1,XLG8B11)                                    
157SCA     MOVE  BLMG8B1            TO  WTRG08B.                        
157SCA     IF  ( WK-DBRC                =  ZERO              )          
           AND ( WG08B-KARI-KZA-KB      =  ZERO              )          
           AND ( WG08B-JCY-TOKU-DNK-CD  =  WC001-DNK-JCTK-CD )          
           AND ( WG08B-DNK-HSK-CD       =  WC001-DNK-HSK-CD  )          
             THEN                                                       
               MOVE  WG08B-DSDD-NM-HEN-HT  TO  WK-HT-9                  
               IF  WK-HT  <=  WC03E-DHKO-HT                             
                 THEN                                                   
                   MOVE  WG08B-TRP-SEN-ME   TO  WK-TRP-SEN-ME           
                 ELSE                                                   
                   MOVE  WG08B-OLD-DSDD-NM  TO  WK-TRP-SEN-ME           
               END-IF                                                   
157SCA         MOVE  SPACE                  TO  PLC218-K-RPARM          
157SCA         INITIALIZE                       PLC218-K-RPARM          
               MOVE  WG08B-DSDD-ADI-HEN-HT  TO  WK-HT-9                 
               IF  WK-HT  <=  WC03E-DHKO-HT                             
                 THEN                                                   
157SCA             MOVE  WG08B-DSDD-FKAD       TO  PLC218IN-DSDD-FKAD   
157SCA             MOVE  WG08B-DSDD-SIGAD      TO  PLC218IN-DSDD-SIGAD  
157SCA             MOVE  WG08B-DSDD-CAD        TO  PLC218IN-DSDD-CAD    
157SCA             MOVE  WG08B-DSDD-CAAD       TO  PLC218IN-DSDD-CAAD   
157SCA             MOVE  WG08B-DSDD-BAD        TO  PLC218IN-DSDD-BAD    
                 ELSE                                                   
157SCA             MOVE  WG08B-OLD-DSDD-FKAD   TO  PLC218IN-DSDD-FKAD   
157SCA             MOVE  WG08B-OLD-DSDD-SIGAD  TO  PLC218IN-DSDD-SIGAD  
157SCA             MOVE  WG08B-OLD-DSDD-CAD    TO  PLC218IN-DSDD-CAD    
157SCA             MOVE  WG08B-OLD-DSDD-CAAD   TO  PLC218IN-DSDD-CAAD   
157SCA             MOVE  WG08B-OLD-DSDD-BAD    TO  PLC218IN-DSDD-BAD    
               END-IF                                                   
2202AD         MOVE  WG08B-JEI-UD-RPS-KB       TO  WK-JEI-UD-RPS-KB     
157SCA     CALL 'MASK'           USING PLC218-K-RPARM               
             ELSE                                                       
               MOVE  SPACE              TO  WTRG08B                     
               INITIALIZE                   WTRG08B                     
157SCA         MOVE  SPACE              TO  PLC218-K-RPARM              
157SCA         INITIALIZE                   PLC218-K-RPARM              
               MOVE  SPACE              TO  WK-TRP-SEN-ME               
2202AD         MOVE  SPACE              TO  WK-JEI-UD-RPS-KB            
           END-IF.                                                      
       BS4032-99.                                                       
           EXIT.                                                        
       BS4033-01.                                                       
157SCA     CONTINUE.                                                    
       BS4033-99.                                                       
           EXIT.                                                        
       BS4034-01.                                                       
157SCA     MOVE  SPACE                    TO  WTRG042                   
157SCA                                        PMK892-K-ZPARM.           
157SCA     INITIALIZE                         WTRG042                   
157SCA                                        PMK892-K-ZPARM.           
157SCA     MOVE  'MASK'                      TO  PMK892-DB-YKBN.          
157SCA     MOVE  'MASK'                      TO  PMK892-ITEM-AAK-INPT-FL. 
157SCA     MOVE  ZERO                     TO  PMK892-SUBR-FC-FL.        
157SCA     MOVE  'MASK'                      TO  PMK892-SUBR-PRC-KB.       
157SCA     MOVE  WC001-HB                 TO  PMK892-HB.                
157SCA     MOVE  WC001-J-CD               TO  PMK892-J-CD.              
157SCA     MOVE  WC001-J-SKYT-P-DP-HT     TO  PMK892-AGE-FIX-HT.        
157SCA     CALL 'MASK'           USING FCOM                         
157SCA                                     BZMZB61                      
157SCA                                     WTRG042                      
157SCA                                     PMK892-K-ZPARM               
157SCA                                     WB61-NZ1ZB61.                
157SCA     IF  ( PMK892-RTN-CD       =  ZERO )  AND                     
157SCA         ( WG042-KARI-KZA-KB   =  ZERO )                          
             THEN                                                       
               CONTINUE                                                 
             ELSE                                                       
               PERFORM  BS40341-01  THRU  BS40341-99                    
           END-IF.                                                      
       BS4034-99.                                                       
           EXIT.                                                        
       BS40341-01.                                                      
157SCA     MOVE  SPACE                    TO  WTRG042                   
157SCA                                        PMK892-K-ZPARM.           
157SCA     INITIALIZE                         WTRG042                   
157SCA                                        PMK892-K-ZPARM.           
157SCA     MOVE  'MASK'                      TO  PMK892-DB-YKBN.           
157SCA     MOVE  'MASK'                      TO  PMK892-ITEM-AAK-INPT-FL.  
157SCA     MOVE  ZERO                     TO  PMK892-SUBR-FC-FL.        
157SCA     MOVE  'MASK'                      TO  PMK892-SUBR-PRC-KB.       
157SCA     MOVE  WC001-HB                 TO  PMK892-HB.                
157SCA     MOVE  WC001-J-CD               TO  PMK892-J-CD.              
157SCA     MOVE  AOL02-TDD-HT             TO  PMK892-AGE-FIX-HT.        
157SCA     CALL 'MASK'           USING FCOM                         
157SCA                                     BZMZB61                      
157SCA                                     WTRG042                      
157SCA                                     PMK892-K-ZPARM               
157SCA                                     WB61-NZ1ZB61.                
           CONTINUE.                                                    
       BS40341-99.                                                      
           EXIT.                                                        
       BS404-01.                                                        
           MOVE  D9I1-REC              TO  DPO2-REC.                    
           MOVE  WC001-DNK-KRNO        TO  DPO2-DNK-KRNO.               
           MOVE  WC03E-UR-E-DNK-CD     TO  DPO2-UR-E-DNK-CD.            
           MOVE  WC001-INPT-TORI-AIT-CD  TO  WK-KEY-CD.                 
           PERFORM  BS4031-01  THRU  BS4031-99.                         
           MOVE  WG032-AIT-ME          TO  DPO2-E-ME                    
                                           OF  DPO2-K-R-J-DT-INF.       
           MOVE  WC03E-JCY-E-DNK-CD    TO  DPO2-JCY-E-DNK-CD.           
           MOVE  WC03E-DNK-J-CD        TO  DPO2-DNK-J-CD.               
           MOVE  WC001-DNK-JCTK-CD(3:6)  TO  DPO2-DNK-JCTK-CD.          
           MOVE  WC001-DNK-JCTK-CD     TO  WK-KEY-CD.                   
           PERFORM  BS4031-01  THRU  BS4031-99.                         
           MOVE  WG032-AIT-ME          TO  DPO2-TOKU-ME.                
           MOVE  WC001-DNK-HSK-CD      TO  DPO2-DNK-HSK-CD.             
           IF  WC001-DNK-JCTK-CD  NOT =  SPACE  AND                     
               WC001-IGN-SIJ-FL   NOT =  'MASK'                         
             THEN                                                       
               PERFORM  BS4032-01  THRU  BS4032-99                      
               MOVE  WK-TRP-SEN-ME        TO  DPO2-TRP-SEN-ME           
157SCA         MOVE  PLC218OT-HSK-ADR1    TO  DPO2-HSK-ADR1             
157SCA         MOVE  PLC218OT-HSK-ADR2    TO  DPO2-HSK-ADR2             
               MOVE  WG08B-TRP-SEN-TELNO  TO  DPO2-TRP-SEN-TELNO        
               PERFORM  BS4033-01  THRU  BS4033-99                      
             ELSE                                                       
               MOVE  WC03E-TRP-SEN-ME     TO  DPO2-TRP-SEN-ME           
               MOVE  WC03E-HSK-ADR1       TO  WK-ADR                    
               MOVE  WK-HSK-ADR           TO  DPO2-HSK-ADR1             
               MOVE  WC03E-HSK-ADR2       TO  WK-ADR                    
               MOVE  WK-HSK-ADR           TO  DPO2-HSK-ADR2             
               MOVE  WC03E-TRP-SEN-TELNO  TO  DPO2-TRP-SEN-TELNO        
2202AD         MOVE  SPACE                TO  WK-JEI-UD-RPS-KB          
           END-IF.                                                      
           MOVE  WC03E-REF-NO          TO  DPO2-REF-NO.                 
           MOVE  WC03E-MSI-NO          TO  DPO2-MSI-NO.                 
           MOVE  WC03E-DNK-LAM-BEN-KB TO   DPO2-DNK-LAM-BEN-KB.         
           MOVE  WC03E-DNK-KUA-HB      TO  DPO2-DNK-KUA-HB.             
           MOVE  WC03E-MOT-HB          TO  DPO2-MOT-HB.                 
           MOVE  WC03E-UR-KB           TO  DPO2-UR-KB.                  
           MOVE  WC03E-SPR-SU          TO  DPO2-SPR-SU.                 
           MOVE  WC03E-PCK-SU          TO  DPO2-PCK-SU.                 
           MOVE  WC03E-PPC             TO  DPO2-PPC.                    
           MOVE  WC03E-HOPE-ARV-HT     TO  DPO2-HOPE-ARV-HT.            
           MOVE  WC03E-HOPE-ARV-H      TO  DPO2-HOPE-ARV-H.             
           MOVE  WC001-DP-KK-DSP-KB    TO  DPO2-DP-KB                   
                                           DPO2-DP-KK-DSP-KB.           
           MOVE  WC03E-DRW-NO          TO  DPO2-DRW-NO.                 
           MOVE  WC03E-DIR-TEM-CD      TO  DPO2-DIR-TEM-CD.             
           MOVE  WC03E-KAIN-CD         TO  DPO2-KAIN-CD.                
           MOVE  WC03E-CKS-KB          TO  DPO2-CKS-KB.                 
           MOVE  WC03E-FCU-KB          TO  DPO2-FCU-KB.                 
           MOVE  WC03E-NBK-KB          TO  DPO2-NBK-KB.                 
           MOVE  WC03E-HPN-TSI-KB      TO  DPO2-HPN-TSI-KB.             
           MOVE  WC03E-SVC-KB          TO  DPO2-SVC-KB.                 
           MOVE  WC03E-USR-KB          TO  DPO2-USR-KB.                 
           MOVE  WC03E-JCI-TSCD        TO  DPO2-JCI-TSCD.               
           MOVE  WC03E-EDPT-TSCD       TO  DPO2-EDPT-TSCD.              
           MOVE  WC03E-TKKK            TO  DPO2-TKKK.                   
           MOVE  WC03E-TOKU-KG         TO  DPO2-TOKU-KG.                
           MOVE  WC03E-TOKU-RV-KB      TO  DPO2-TOKU-RV-KB.             
           MOVE  WC03E-OTN-DSP-KB      TO  DPO2-OTN-DSP-KB.             
           MOVE  WC03E-OTN             TO  DPO2-OTN.                    
           MOVE  WC03E-GKK             TO  DPO2-GKK.                    
           MOVE  WC03E-BLS             TO  DPO2-BLS.                    
           MOVE  WC03E-SYB-KB          TO  DPO2-SYB-KB.                 
           MOVE  WC03E-SYK-SYBT-CD     TO  DPO2-SYK-SYBT-CD.            
           MOVE  WC03E-TNB             TO  DPO2-TNB.                    
           MOVE  WC03E-SPGD-WH-CD      TO  DPO2-SPGD-WH-CD.             
           MOVE  WC03E-DP-SWK-KB       TO  DPO2-DP-SWK-KB.              
           MOVE  WC001-DNK-KEN-KRNO    TO  DPO2-DNK-KEN-KRNO.           
157SCA     MOVE  WC03E-DNK-KENM-NO     TO  DPO2-DNK-KENM-NO.            
           MOVE  WC03E-KENM-BK1        TO  DPO2-KENM-BK1.               
           MOVE  WC03E-KENM-BK2        TO  DPO2-KENM-BK2.               
           MOVE  WC03E-DDP-ROOT        TO  DPO2-DDP-ROOT.               
           MOVE  WC03E-ANLS-CD         TO  DPO2-ANLS-CD.                
           MOVE  WC03E-EAR-TRP-ROOT    TO  DPO2-EAR-TRP-ROOT.           
           MOVE  WC03E-TKSK-CD         TO  DPO2-TKSK-CD.                
           MOVE  WC03E-DHKO-HT         TO  DPO2-DHKO-HT.                
           MOVE  WC03E-PCK-HKB         TO  DPO2-PCK-HKB.                
           MOVE  WC03E-DDP-KIY-WH-CD   TO  DPO2-DDP-KIY-WH-CD.          
           MOVE  WC03E-DDP-URE-CD      TO  DPO2-DDP-URE-CD.             
           MOVE  WC03E-SAY-KB          TO  DPO2-SAY-KB.                 
           MOVE  WC03E-SYAR-LMT        TO  DPO2-SYAR-LMT.               
           MOVE  WC001-J-JSI-KK-P-KG   TO  DPO2-J-JSI-KK-P-KG.          
           MOVE  WC001-DDP-TKKK        TO  DPO2-DDP-TKKK.               
           MOVE  WC03E-MNM-HKNA-IPA-BIT    TO  DPO2-KSK-KMM-CNY-KB.     
           MOVE  SPACE                     TO  DPO2-KSK-KNA-MNM.        
           IF  WC03E-MNM-HKNA-IPA-BIT  =  'MASK'                        
             THEN                                                       
               MOVE  WC03E-DNK-MNM-HKNA         TO  DPO2-KSK-KNA-MNM    
             ELSE                                                       
               PERFORM  BS4034-01  THRU  BS4034-99                      
157SCA         IF  ( PMK892-RTN-CD       =  ZERO )  AND                 
                   ( WG042-KARI-KZA-KB   =  ZERO )                      
                 THEN                                                   
                   MOVE  WG042-KSK-KNA-MNM      TO  DPO2-KSK-KNA-MNM    
               END-IF                                                   
           END-IF.                                                      
075K1A     MOVE  WC001-NS-KB           TO  DPO2-NS-KB                   
075K1A     MOVE  WC001-TOKU-CMN-NO     TO  DPO2-TOKU-CMN-NO             
075K1A     MOVE  WC001-KEN-NO          TO  DPO2-KEN-NO                  
092K1A     MOVE  WC001-UNS-DIS-CD      TO  DPO2-UNS-DIS-CD.             
092K1A     MOVE  WC001-UNS-GSY-CD      TO  DPO2-UNS-GSY-CD.             
092K1A     PERFORM  BA10-01          THRU  BA10-99.                     
092K1A     MOVE  WK-DIS-ME             TO  DPO2-UNS-DIS-ME.             
092K1A     PERFORM  BA20-01          THRU  BA20-99.                     
092K1A     MOVE  WK-GSY-ME             TO  DPO2-UNS-GSY-ME.             
092K1A     MOVE  WC001-UND-CD-AFY-FL   TO  DPO2-UND-CD-AFY-FL.          
092K1A     MOVE  WC001-UNG-CD-AFY-FL   TO  DPO2-UNG-CD-AFY-FL.          
092K1A     MOVE  WC001-CHH-KB          TO  DPO2-CHH-KB.                 
157SCA     MOVE  WC03E-DNK-KENM-NO     TO  DPO2-VA-KEN-NO.              
2202AD     MOVE  WK-JEI-UD-RPS-KB      TO  DPO2-JEI-UD-RPS-KB.          
           WRITE    DPO2-REC.                                           
           ADD      +1                 TO   RC3.                        
       BS404-99.                                                        
           EXIT.                                                        
      M      MUNOP(41)                                                  
       B49.                                                             
           CLOSE F2 F3.                                                 
      M    MURCS  (DRIG01ZZ,1)                                          
      M    MURCS  (DROG02ZZ,2)                                          
      M    MURCS  (DROG03ZZ,3)                                          
157SCAM    MZADMPCL                                                     
           FINISH.                                                      
      M    MZADMPCL                                                     
       B49-99.                                                          
           EXIT.                                                        
092K1A BA10-01.                                                         
092K1A     IF  WC001-UNS-DIS-CD  =  SPACE                               
092K1A       THEN                                                       
092K1A         MOVE  SPACE                 TO  WK-DIS-ME                
092K1A         GO  TO  BA10-99                                          
092K1A     END-IF.                                                      
157SCA     MOVE  SPACE                 TO  W1TRG09S                     
157SCA                                     B1TRG09S                     
157SCA                                     PLC084-K-RPARM.              
157SCA     INITIALIZE                      W1TRG09S                     
157SCA                                     B1TRG09S                     
157SCA                                     PLC084-K-RPARM.              
157SCA     MOVE  'MASK'                   TO  PLC084IN-SUBR-PRC-KB.     
157SCA     MOVE  WC001-J-CD            TO  PLC084IN-J-CD.               
157SCA     MOVE  WC001-UNS-DIS-CD      TO  PLC084IN-CMPS-CD.            
157SCA     CALL 'MASK'           USING FCOM                         
157SCA                                     BZMZ9S1                      
157SCA                                     BZCZ561                      
157SCA                                     W1TRG09S                     
157SCA                                     B1TRG09S                     
157SCA                                     PLC084-K-RPARM.              
157SCA     EVALUATE  PLC084OT-RTN-CD                                    
092K1A       WHEN  ZERO                                                 
092K1A         MOVE  W1G09S-CMPS-CD-ME     TO  WK-DIS-ME                
092K1A       WHEN  'MASK'                                               
092K1A         MOVE  SPACE                 TO  WK-DIS-ME                
092K1A       WHEN  OTHER                                                
092K1A         PERFORM  BS9007-01        THRU  BS9007-99                
092K1A     END-EVALUATE.                                                
157SCA     CONTINUE.                                                    
092K1A BA10-99.                                                         
092K1A     EXIT.                                                        
092K1A BA20-01.                                                         
092K1A     IF  WC001-UNS-GSY-CD  =  SPACE                               
092K1A       THEN                                                       
092K1A         MOVE  SPACE                 TO  WK-GSY-ME                
092K1A         GO  TO  BA20-99                                          
092K1A     END-IF.                                                      
157SCA     MOVE  SPACE                 TO  W1TRG09S                     
157SCA                                     B1TRG09S                     
157SCA                                     PLC084-K-RPARM.              
157SCA     INITIALIZE                      W1TRG09S                     
157SCA                                     B1TRG09S                     
157SCA                                     PLC084-K-RPARM.              
157SCA     MOVE  'MASK'                   TO  PLC084IN-SUBR-PRC-KB.     
157SCA     MOVE  WC001-J-CD            TO  PLC084IN-J-CD.               
157SCA     MOVE  WC001-UNS-GSY-CD      TO  PLC084IN-CMPS-CD.            
157SCA     CALL 'MASK'           USING FCOM                         
157SCA                                     BZMZ9S1                      
157SCA                                     BZCZ561                      
157SCA                                     W1TRG09S                     
157SCA                                     B1TRG09S                     
157SCA                                     PLC084-K-RPARM.              
157SCA     EVALUATE  PLC084OT-RTN-CD                                    
092K1A       WHEN  ZERO                                                 
157SCA         MOVE  B1G09S-UNS-GSY-ME     TO  WK-GSY-ME                
092K1A       WHEN  'MASK'                                               
092K1A         MOVE  SPACE                 TO  WK-GSY-ME                
092K1A       WHEN  OTHER                                                
092K1A         PERFORM  BS9008-01        THRU  BS9008-99                
092K1A     END-EVALUATE.                                                
157SCA     CONTINUE.                                                    
092K1A BA20-99.                                                         
092K1A     EXIT.                                                        
       BS9001-01.                                                       
      M    MUMSG   (E-001,DB-ERR,MSG-001)                               
      M    MUMSG   (E-001,DATAKEY,CN)                                   
      M    MUABEND                                                      
       BS9001-99.                                                       
           EXIT.                                                        
       BS9002-01.                                                       
      M    MUMSG   (E-002,DB-ERR,MSG-002)                               
      M    MUMSG   (E-002,DATAKEY,CN)                                   
      M    MUABEND                                                      
       BS9002-99.                                                       
           EXIT.                                                        
       BS9003-01.                                                       
      M    MUMSG   (E-003,DB-ERR,MSG-003)                               
      M    MUMSG   (E-003,MASK,WC001-J-CD)                          
      M    MUMSG   (E-003,MASK   ,WC001-INPT-TRAT-SBKB)                
      M    MUMSG   (E-003,MASK   ,WC001-INPT-TORI-AIT-CD)              
      M    MUMSG   (E-003,MASK   ,WC001-HB)                            
      M    MUMSG   (E-003,MASK ,WC001-SYSQNO-J)                      
      M    MUMSG   (E-003,MASK  ,WC001-SYSQNO)                        
      M    MUABEND                                                     
       BS9003-99.                                                      
           EXIT.                                                       
       BS9004-01.                                                      
      M    MUMSG   (E-004,DB-ERR,MSG-004)                              
      M    MUMSG   (E-004,MASK,WC03E-J-CD)                          
      M    MUMSG   (E-004,MASK   ,WC03E-INPT-TRAT-SBKB)                
      M    MUMSG   (E-004,MASK   ,WC03E-INPT-TORI-AIT-CD)              
      M    MUMSG   (E-004,MASK   ,WC03E-HB)                            
      M    MUMSG   (E-004,MASK ,WC03E-SYSQNO-J)                      
      M    MUMSG   (E-004,MASK  ,WC03E-SYSQNO)                        
      M    MUABEND                                                     
       BS9004-99.                                                      
           EXIT.                                                       
       BS9005-01.                                                      
      M    MUMSG   (E-005,DB-ERR,MSG-005)                              
157SCAM    MUMSG   (E-005,MASK   ,PMK850-AIT-CD)                       
157SCAM    MUMSG   (E-005,MASK ,PMK850-AGE-FIX-HT)                   
      M    MUABEND                                                     
       BS9005-99.                                                      
           EXIT.                                                       
       BS9006-01.                                                      
      M    MUMSG   (E-006,DB-ERR,MSG-006)                              
      M    MUMSG   (E-006,MASK  ,WG08B-JCY-TOKU-DNK-CD)                
      M    MUMSG   (E-006,MASK ,WG08B-DNK-HSK-CD)                 
      M    MUABEND                                                
       BS9006-99.                                                 
           EXIT.                                                  
092K1A BS9007-01.                                                 
092K1AM    MUMSG   (E-007,DB-ERR,MSG-007)                         
092K1AM    MUMSG   (E-007,MASK,WC001-J-CD)                        
092K1AM    MUMSG   (E-007,MASK    ,WC001-UNS-DIS-CD)              
092K1AM    MUABEND                                                
092K1A BS9007-99.                                                 
092K1A     EXIT.                                                  
092K1A BS9008-01.                                                 
092K1AM    MUMSG   (E-008,DB-ERR,MSG-008)                         
092K1AM    MUMSG   (E-008,MASK,WC001-J-CD)                        
092K1AM    MUMSG   (E-008,MASK  ,WC001-UNS-GSY-CD)                
092K1AM    MUABEND                                                
092K1A BS9008-99.                                                 
092K1A     EXIT.                                                  
157SCA BS9009-01.                                                 
157SCAM    MUMSG   (E-009,DB-ERR,MSG-009)                         
157SCAM    MUMSG   (E-009,MASK,D9I1-J-CD)                         
157SCAM    MUABEND                                                
157SCA BS9009-99.                                                 
157SCA     EXIT.                                                  
157SCAM    MZADBERR                                               
