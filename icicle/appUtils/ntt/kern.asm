      MOV R1, c[0x0][0x28] 
      S2R R8, SR_CTAID.X 
      ISETP.GE.U32.AND P0, PT, R8, c[0x0][0x17c], PT 
@P0   EXIT 
      S2R R7, SR_TID.X 
      ISETP.GE.U32.AND P0, PT, R7, c[0x0][0x0], PT 
@P0   EXIT 
      IMAD.MOV.U32 R4, RZ, RZ, c[0x0][0x0] 
      IMAD.SHL.U32 R4, R4, 0x2, RZ 
      I2F.U32.RP R0, R4 
      IADD3 R5, RZ, -R4, RZ 
      ISETP.NE.U32.AND P2, PT, R4, RZ, PT 
      MUFU.RCP R0, R0 
      IADD3 R2, R0, 0xffffffe, RZ 
      F2I.FTZ.U32.TRUNC.NTZ R3, R2 
      IMAD.MOV.U32 R2, RZ, RZ, RZ 
      IMAD R5, R5, R3, RZ 
      IMAD.HI.U32 R3, R3, R5, R2 
      IMAD.HI.U32 R5, R3, c[0x0][0x168], RZ 
      IMAD.MOV R3, RZ, RZ, -R5 
      IMAD R3, R4, R3, c[0x0][0x168] 
      ISETP.GE.U32.AND P0, PT, R3, R4, PT 
@P0   IADD3 R3, -R4, R3, RZ 
@P0   IADD3 R5, R5, 0x1, RZ 
      ISETP.GE.U32.AND P1, PT, R3, R4, PT 
@P1   IADD3 R5, R5, 0x1, RZ 
@!P2  LOP3.LUT R5, RZ, R4, RZ, 0x33, !PT 
      I2F.U32.RP R0, R5 
      ISETP.NE.U32.AND P1, PT, R5, RZ, PT 
      MUFU.RCP R0, R0 
      IADD3 R2, R0, 0xffffffe, RZ 
      IMAD.MOV.U32 R0, RZ, RZ, c[0x0][0x180] 
      F2I.FTZ.U32.TRUNC.NTZ R3, R2 
      ISETP.GT.U32.AND P2, PT, R0, c[0x0][0x184], PT 
      MOV R2, RZ 
      IMAD R6, R5, R3, RZ 
      IMAD.MOV R9, RZ, RZ, -R6 
      IMAD.HI.U32 R3, R3, R9, R2 
      IMAD.HI.U32 R3, R3, R8, RZ 
      IMAD.MOV R3, RZ, RZ, -R3 
      IMAD R6, R5, R3, R8 
      ISETP.GE.U32.AND P0, PT, R6, R5, PT 
@P0   IADD3 R6, -R5, R6, RZ 
      ISETP.GE.U32.AND P0, PT, R6, R5, PT 
@P0   IADD3 R6, -R5, R6, RZ 
@!P1  LOP3.LUT R6, RZ, R5, RZ, 0x33, !PT 
@P2   EXIT 
      IMAD R0, R6, c[0x0][0x0], R7 
      ULDC UR4, c[0x0][0x168] 
      IMAD R2, R4, R8, RZ 
      MOV R4, c[0x0][0x180] 
      UIADD3 UR4, UR4, 0xffff, URZ 
      LOP3.LUT R3, R0, 0xffff, RZ, 0xc0, !PT 
      ULDC.64 UR8, c[0x0][0x118] 
      IMAD.MOV.U32 R5, RZ, RZ, 0x1 
      IADD3 R8, -R4, c[0x0][0x184], RZ 
      IMAD.MOV.U32 R11, RZ, RZ, c[0x0][0x178] 
      SHF.L.U32 R5, R5, R8, RZ 
      IADD3 R6, R8, 0x1, RZ 
      SHF.R.U32.HI R8, RZ, R8, R3 
      LOP3.LUT R25, R5, 0xffff, RZ, 0xc0, !PT 
      IADD3 R7, R5, 0xffff, RZ 
      IMAD R8, R8, R25, RZ 
      LOP3.LUT R9, R7, R0, RZ, 0xc0, !PT 
      SHF.R.U32.HI R7, RZ, R6, R11 
      IMAD.SHL.U32 R8, R8, 0x2, RZ 
      LOP3.LUT R6, R9, 0xffff, RZ, 0xc0, !PT 
      IMAD.MOV.U32 R11, RZ, RZ, 0x20 
      ISETP.NE.AND P0, PT, R4, RZ, PT 
      LOP3.LUT R8, R8, UR4, RZ, 0xc0, !PT 
      IMAD R6, R6, R7, RZ 
      IMAD.IADD R8, R9, 0x1, R8 
      IMAD.WIDE.U32 R6, R6, R11, c[0x0][0x170] 
      LOP3.LUT R5, R8, 0xffff, RZ, 0xc0, !PT 
      LDG.E.128.CONSTANT R12, [R6.64] 
      LDG.E.128.CONSTANT R16, [R6.64+0x10] 
      IMAD.IADD R9, R25, 0x1, R5 
@!P0  BRA 0x7ff686d3f150 
      UMOV UR5, 0x0 
      ISETP.NE.AND P0, PT, R4, c[0x0][0x184], PT 
      ULDC.64 UR6, c[0x0][0x18] 
      UIADD3 UR5, UP0, UR5, UR6, URZ 
      UIADD3.X UR6, URZ, UR7, URZ, UP0, !UPT 
      MOV R34, UR5 
      MOV R35, UR6 
      IMAD.WIDE.U32 R34, R5, 0x20, R34 
      IMAD.MOV.U32 R41, RZ, RZ, R35 
      MOV R40, R34 
      IMAD.WIDE.U32 R24, R25, 0x20, R34 
      IMAD.MOV.U32 R45, RZ, RZ, R25 
      MOV R44, R24 
@P0   BRA 0x7ff686d3f250 
      IADD3 R35, P0, R2, R5, RZ 
      IADD3 R25, P1, R2, R9, RZ 
      IMAD.X R8, RZ, RZ, RZ, P0 
      LEA R34, P0, R35, c[0x0][0x160], 0x5 
      IMAD.X R6, RZ, RZ, RZ, P1 
      LEA R24, P1, R25, c[0x0][0x160], 0x5 
      LEA.HI.X R35, R35, c[0x0][0x164], R8, 0x5, P0 
      LEA.HI.X R25, R25, c[0x0][0x164], R6, 0x5, P1 
      BRA 0x7ff686d3f250 
      UMOV UR5, 0x0 
      IADD3 R9, P0, R2, R9, RZ 
      ULDC.64 UR6, c[0x0][0x18] 
      IADD3 R41, P1, R2, R5, RZ 
      UIADD3 UR5, UP0, UR5, UR6, URZ 
      IMAD.X R6, RZ, RZ, RZ, P0 
      LEA R44, P0, R9, c[0x0][0x160], 0x5 
      UIADD3.X UR6, URZ, UR7, URZ, UP0, !UPT 
      IMAD.X R8, RZ, RZ, RZ, P1 
      LEA R40, P2, R41, c[0x0][0x160], 0x5 
      IMAD.U32 R34, RZ, RZ, UR5 
      LEA.HI.X R45, R9, c[0x0][0x164], R6, 0x5, P0 
      IMAD.U32 R35, RZ, RZ, UR6 
      LEA.HI.X R41, R41, c[0x0][0x164], R8, 0x5, P2 
      IMAD.WIDE.U32 R34, R5, 0x20, R34 
      IMAD.WIDE.U32 R24, R25, 0x20, R34 
      LD.E.128 R8, [R40.64] 
      LD.E.128 R20, [R44.64] 
      LD.E.128 R28, [R40.64+0x10] 
      LD.E.128 R36, [R44.64+0x10] 
      IADD3 R4, R4, 0x1, RZ 
      IADD3 R33, P0, R8, -R20, RZ 
      IADD3.X R27, P1, R9, ~R21, RZ, P0, !PT 
      IADD3 R8, P0, R8, R20, RZ 
      IADD3.X R7, P2, R10, ~R22, RZ, P1, !PT 
      IADD3.X R9, P0, R9, R21, RZ, P0, !PT 
      IADD3 R43, P1, R8, -0x1, RZ 
      IADD3.X R6, P2, R11, ~R23, RZ, P2, !PT 
      IADD3.X R10, P0, R10, R22, RZ, P0, !PT 
      IADD3.X R42, P1, RZ, R9, RZ, P1, !PT 
      IADD3.X R5, P2, R28, ~R36, RZ, P2, !PT 
      IADD3.X R11, P0, R11, R23, RZ, P0, !PT 
      IADD3.X R45, P1, R10, 0x1a401, RZ, P1, !PT 
      IADD3.X R40, P2, R29, ~R37, RZ, P2, !PT 
      IADD3.X R20, P0, R28, R36, RZ, P0, !PT 
      IADD3.X R28, P1, R11, -0x53bda403, RZ, P1, !PT 
      IADD3.X R36, P3, R30, ~R38, RZ, P2, !PT 
      IADD3.X R21, P0, R29, R37, RZ, P0, !PT 
      IADD3.X R37, P2, R20, -0x9a1d806, RZ, P1, !PT 
      IADD3.X R32, P1, R31, ~R39, RZ, P3, !PT 
      IADD3.X R22, P0, R30, R38, RZ, P0, !PT 
      IADD3.X R26, P2, R21, -0x3339d809, RZ, P2, !PT 
      IADD3.X R23, R31, R39, RZ, P0, !PT 
      IADD3.X R41, P0, R22, -0x299d7d49, RZ, P2, !PT 
      IADD3.X R50, P0, R23, -0x73eda754, RZ, P0, !PT 
@!P1  IADD3 R33, P2, R33, 0x1, RZ 
      SEL R11, R28, R11, P0 
@!P1  IADD3.X R27, P2, R27, -0x1, RZ, P2, !PT 
      IMAD.WIDE.U32 R28, R13, R33, RZ 
      SEL R9, R42, R9, P0 
      SEL R8, R43, R8, P0 
      IMAD.WIDE.U32 R48, R14, R33, RZ 
@!P1  IADD3.X R7, P2, R7, -0x1a402, RZ, P2, !PT 
      SEL R10, R45, R10, P0 
      IMAD.WIDE.U32 R42, R15, R33, RZ 
@!P1  IADD3.X R6, P2, R6, 0x53bda402, RZ, P2, !PT 
      SEL R23, R50, R23, P0 
      IMAD.WIDE.U32 R28, P4, R12, R27, R28 
      ST.E.128 [R34.64], R8 
      MOV R50, RZ 
      IMAD.WIDE.U32 R46, R16, R33, RZ 
      MOV R51, R28 
      SEL R22, R41, R22, P0 
      IMAD.WIDE.U32 R48, P3, R13, R27, R48 
      SEL R21, R26, R21, P0 
      SEL R20, R37, R20, P0 
      IMAD.WIDE.U32 R30, R17, R33, RZ 
      IMAD.WIDE.U32.X R42, P5, R14, R27, R42, P4 
      ST.E.128 [R34.64+0x10], R20 
      IMAD.WIDE.U32 R38, R18, R33, RZ 
      IMAD.WIDE.U32.X R46, P4, R15, R27, R46, P3 
      IMAD.WIDE.U32 R44, R19, R33, RZ 
      IMAD.WIDE.U32.X R30, P3, R16, R27, R30, P5 
      MOV R20, RZ 
      IMAD.WIDE.U32.X R38, P4, R17, R27, R38, P4 
      IMAD.WIDE.U32 R48, P6, R12, R7, R48 
      IMAD.WIDE.U32 R42, P5, R13, R7, R42 
      IMAD.WIDE.U32.X R8, P3, R18, R27, R44, P3 
      IMAD.WIDE.U32.X R44, R19, R27, RZ, P4 
      IMAD.WIDE.U32.X R46, P6, R14, R7, R46, P6 
      IADD3.X R45, RZ, R45, RZ, P3, !PT 
      IMAD.WIDE.U32.X R30, P4, R15, R7, R30, P5 
      IMAD.WIDE.U32 R42, P3, R12, R6, R42 
      IMAD.WIDE.U32.X R38, P6, R16, R7, R38, P6 
      IMAD.WIDE.U32 R46, P5, R13, R6, R46 
      IMAD.WIDE.U32.X R8, P4, R17, R7, R8, P4 
      IMAD.WIDE.U32.X R30, P3, R14, R6, R30, P3 
      IMAD.WIDE.U32.X R38, P5, R15, R6, R38, P5 
      IMAD.WIDE.U32.X R44, P6, R18, R7, R44, P6 
      IMAD.WIDE.U32.X R10, R19, R7, RZ, P4 
      IMAD.WIDE.U32.X R8, P3, R16, R6, R8, P3 
      IADD3.X R11, RZ, R11, RZ, P6, !PT 
      IMAD.WIDE.U32.X R44, P5, R17, R6, R44, P5 
      IMAD.WIDE.U32.X R10, P3, R18, R6, R10, P3 
      IMAD.WIDE.U32.X R6, R19, R6, RZ, P5 
@!P1  IADD3.X R5, P5, R5, 0x9a1d805, RZ, P2, !PT 
      IADD3.X R7, RZ, R7, RZ, P3, !PT 
      IMAD.HI.U32 R27, P3, R12, R33, R50 
@!P1  IADD3.X R40, P5, R40, 0x3339d808, RZ, P5, !PT 
      IMAD.WIDE.U32 R46, P4, R12, R5, R46 
      IADD3.X R29, P3, R29, R48, RZ, P3, !PT 
@!P1  IADD3.X R36, P5, R36, 0x299d7d48, RZ, P5, !PT 
      IMAD.WIDE.U32 R50, P2, R13, R5, R30 
      IADD3.X R28, P3, R49, R42, RZ, P3, !PT 
@!P1  IADD3.X R32, R32, 0x73eda753, RZ, P5, !PT 
      IADD3.X R31, P3, R43, R46, RZ, P3, !PT 
      IMAD.WIDE.U32.X R42, P4, R14, R5, R38, P4 
      IMAD.WIDE.U32.X R48, P2, R15, R5, R8, P2 
      IMAD.WIDE.U32 R38, P6, R12, R40, R50 
      IMAD.WIDE.U32 R50, P5, R13, R40, R42 
      IADD3.X R30, P3, R47, R38, RZ, P3, !PT 
      IMAD.WIDE.U32.X R42, P2, R17, R5, R10, P2 
      IMAD.WIDE.U32.X R8, P1, R16, R5, R44, P4 
      IMAD.WIDE.U32.X R48, P6, R14, R40, R48, P6 
      IMAD.WIDE.U32.X R44, R19, R5, RZ, P2 
      IMAD.WIDE.U32 R10, P4, R12, R36, R50 
      IMAD.WIDE.U32.X R46, P1, R18, R5, R6, P1 
      IADD3.X R6, P3, R39, R10, RZ, P3, !PT 
      IMAD.WIDE.U32 R48, P2, R13, R36, R48 
      IADD3.X R45, RZ, R45, RZ, P1, !PT 
      IMAD.WIDE.U32.X R8, P5, R15, R40, R8, P5 
      IMAD.WIDE.U32.X R42, P6, R16, R40, R42, P6 
      IMAD.WIDE.U32 R38, P1, R12, R32, R48 
      IMAD.WIDE.U32.X R46, P5, R17, R40, R46, P5 
      IADD3.X R5, P3, R11, R38, RZ, P3, !PT 
      IMAD.WIDE.U32.X R8, P4, R14, R36, R8, P4 
      IMAD.WIDE.U32.X R42, P2, R15, R36, R42, P2 
      IMAD.WIDE.U32.X R44, P6, R18, R40, R44, P6 
      IMAD.WIDE.U32.X R10, R19, R40, RZ, P5 
      IMAD.WIDE.U32 R8, P5, R13, R32, R8 
      IADD3.X R11, RZ, R11, RZ, P6, !PT 
      IMAD.WIDE.U32.X R46, P4, R16, R36, R46, P4 
      IADD3.X R8, P3, R8, R39, RZ, P3, !PT 
      IMAD.WIDE.U32.X R42, P1, R14, R32, R42, P1 
      IMAD.WIDE.U32.X R44, P2, R17, R36, R44, P2 
      IADD3.X R7, P3, R9, R42, RZ, P3, !PT 
      IMAD.WIDE.U32.X R46, P5, R15, R32, R46, P5 
      SHF.L.U32.HI R13, R8, 0x1, R7 
      IMAD.WIDE.U32.X R14, P4, R18, R36, R10, P4 
      IADD3.X R10, P3, R46, R43, RZ, P3, !PT 
      IMAD.WIDE.U32.X R38, R19, R36, RZ, P2 
      SHF.L.U32.HI R43, R7, 0x1, R10 
      IMAD.WIDE.U32.X R44, P1, R16, R32, R44, P1 
      IADD3.X R39, RZ, R39, RZ, P4, !PT 
      IMAD.WIDE.U32.X R14, P5, R17, R32, R14, P5 
      IADD3.X R9, P3, R47, R44, RZ, P3, !PT 
      SHF.L.U32.HI R47, R5, 0x1, R8 
      IMAD.WIDE.U32.X R16, P1, R18, R32, R38, P1 
      IADD3.X R14, P3, R14, R45, RZ, P3, !PT 
      SHF.L.U32.HI R41, R10, 0x1, R9 
      IMAD.WIDE.U32.X R38, R19, R32, RZ, P5 
      IADD3.X R15, P3, R15, R16, RZ, P3, !PT 
      SHF.L.U32.HI R45, R9, 0x1, R14 
      IMAD.WIDE.U32 R18, R13, -0x7cfca71c, RZ 
      IADD3.X R11, P3, R38, R17, RZ, P3, !PT 
      SHF.L.U32.HI R49, R14, 0x1, R15 
      IMAD.WIDE.U32 R16, R43, -0x7cfca71c, RZ 
      SHF.L.U32.HI R51, R15, 0x1, R11 
      IADD3.X R42, RZ, RZ, R39, P3, P1 
      IMAD.WIDE.U32 R52, R45, -0x7cfca71c, RZ 
      SHF.L.U32.HI R26, R11, 0x1, R42 
      IMAD.WIDE.U32 R36, P0, R13, 0x509cde80, R16 
      IMAD.WIDE.U32 R18, P2, R47, 0x509cde80, R18 
      IMAD.WIDE.U32 R16, R41, -0x7cfca71c, RZ 
      MOV R21, R18 
      IMAD.WIDE.U32.X R52, P3, R41, 0x509cde80, R52, P0 
      IMAD.WIDE.U32 R22, R51, -0x7cfca71c, RZ 
      IMAD.WIDE.U32.X R16, P2, R43, 0x509cde80, R16, P2 
      IMAD.WIDE.U32 R38, R49, -0x7cfca71c, RZ 
      IMAD.WIDE.U32 R34, P0, R47, 0x2f92eb5c, R36 
      IMAD.WIDE.U32.X R22, P3, R49, 0x509cde80, R22, P3 
      IMAD.HI.U32 RZ, P1, R47, -0x7cfca71c, R20 
      IMAD.WIDE.U32.X R38, P2, R45, 0x509cde80, R38, P2 
      IADD3.X RZ, P1, R19, R34, RZ, P1, !PT 
      IMAD.WIDE.U32 R36, R26, -0x7cfca71c, RZ 
      IMAD.WIDE.U32 R16, P4, R13, 0x2f92eb5c, R16 
      IMAD.WIDE.U32.X R20, R26, 0x509cde80, RZ, P3 
      IMAD.WIDE.U32.X R18, P0, R43, 0x2f92eb5c, R52, P0 
      IMAD.WIDE.U32.X R36, P2, R51, 0x509cde80, R36, P2 
      IMAD.WIDE.U32.X R38, P3, R41, 0x2f92eb5c, R38, P4 
      IADD3.X R21, RZ, R21, RZ, P2, !PT 
      IMAD.WIDE.U32 R16, P6, R47, -0x26bef053, R16 
      IMAD.WIDE.U32 R18, P4, R13, -0x26bef053, R18 
      IADD3.X RZ, P1, R35, R16, RZ, P1, !PT 
      IMAD.WIDE.U32.X R22, P0, R45, 0x2f92eb5c, R22, P0 
      IMAD.WIDE.U32.X R36, P2, R49, 0x2f92eb5c, R36, P3 
      IMAD.WIDE.U32.X R38, P6, R43, -0x26bef053, R38, P6 
      IMAD.WIDE.U32.X R22, P4, R41, -0x26bef053, R22, P4 
      IMAD.WIDE.U32.X R34, R26, 0x2f92eb5c, RZ, P2 
      IMAD.WIDE.U32.X R20, P0, R51, 0x2f92eb5c, R20, P0 
      IMAD.WIDE.U32 R18, P3, R47, -0x3e07dc4c, R18 
      IADD3.X R35, RZ, R35, RZ, P0, !PT 
      IMAD.WIDE.U32 R38, P5, R13, -0x3e07dc4c, R38 
      IADD3.X RZ, P1, R17, R18, RZ, P1, !PT 
      IMAD.WIDE.U32.X R36, P6, R45, -0x26bef053, R36, P6 
      IMAD.WIDE.U32.X R20, P4, R49, -0x26bef053, R20, P4 
      IMAD.WIDE.U32.X R22, P3, R43, -0x3e07dc4c, R22, P3 
      IMAD.WIDE.U32.X R36, P5, R41, -0x3e07dc4c, R36, P5 
      IMAD.WIDE.U32.X R34, P6, R51, -0x26bef053, R34, P6 
      IMAD.WIDE.U32 R38, P2, R47, 0xe2d772d, R38 
      IMAD.WIDE.U32.X R16, R26, -0x26bef053, RZ, P4 
      IADD3.X RZ, P1, R19, R38, RZ, P1, !PT 
      IMAD.WIDE.U32 R22, P0, R13, 0xe2d772d, R22 
      IADD3.X R17, RZ, R17, RZ, P6, !PT 
      IMAD.WIDE.U32.X R20, P3, R45, -0x3e07dc4c, R20, P3 
      IMAD.WIDE.U32.X R34, P5, R49, -0x3e07dc4c, R34, P5 
      IMAD.WIDE.U32.X R36, P2, R43, 0xe2d772d, R36, P2 
      IMAD.WIDE.U32 R22, P4, R47, 0x7fb78ddf, R22 
      IMAD.WIDE.U32.X R20, P0, R41, 0xe2d772d, R20, P0 
      IADD3.X RZ, P1, R39, R22, RZ, P1, !PT 
      IMAD.WIDE.U32.X R18, R26, -0x3e07dc4c, RZ, P5 
      IMAD.WIDE.U32.X R16, P3, R51, -0x3e07dc4c, R16, P3 
      IMAD.WIDE.U32 R36, P6, R13, 0x7fb78ddf, R36 
      IADD3.X R19, RZ, R19, RZ, P3, !PT 
      IMAD.WIDE.U32.X R34, P2, R45, 0xe2d772d, R34, P2 
      IMAD.WIDE.U32.X R20, P4, R43, 0x7fb78ddf, R20, P4 
      IMAD.WIDE.U32.X R16, P3, R49, 0xe2d772d, R16, P0 
      IMAD.WIDE.U32 R36, P5, R47, -0x72abdac5, R36 
      IMAD.WIDE.U32.X R34, P6, R41, 0x7fb78ddf, R34, P6 
      IADD3.X R22, P1, R23, R36, RZ, P1, !PT 
      IMAD.WIDE.U32.X R18, P2, R51, 0xe2d772d, R18, P2 
      IMAD.WIDE.U32 R20, P0, R13, -0x72abdac5, R20 
      IMAD.WIDE.U32.X R38, R26, 0xe2d772d, RZ, P3 
      IADD3.X R37, P1, R20, R37, RZ, P1, !PT 
      IMAD.WIDE.U32.X R16, P4, R45, 0x7fb78ddf, R16, P4 
      IADD3.X R39, RZ, R39, RZ, P2, !PT 
      IMAD.WIDE.U32.X R34, P5, R43, -0x72abdac5, R34, P5 
      IMAD.WIDE.U32.X R18, P6, R49, 0x7fb78ddf, R18, P6 
      IADD3.X R32, P1, R21, R34, RZ, P1, !PT 
      IMAD.WIDE.U32.X R16, P0, R41, -0x72abdac5, R16, P0 
      IMAD.WIDE.U32.X R20, R26, 0x7fb78ddf, RZ, P6 
      IADD3.X R13, P2, R16, R35, RZ, P1, !PT 
      IMAD.WIDE.U32.X R38, P4, R51, 0x7fb78ddf, R38, P4 
      IMAD.WIDE.U32.X R18, P5, R45, -0x72abdac5, R18, P5 
      IADD3.X R21, RZ, R21, RZ, P4, !PT 
      IMAD.WIDE.U32.X R38, P1, R49, -0x72abdac5, R38, P0 
      IADD3.X R48, P2, R17, R18, RZ, P2, !PT 
      SHF.L.U32.HI R18, R32, 0x1, R13 
      IMAD.WIDE.U32.X R16, P0, R51, -0x72abdac5, R20, P5 
      IADD3.X R23, P2, R38, R19, RZ, P2, !PT 
      MOV R19, RZ 
      IMAD.WIDE.U32.X R20, R26, -0x72abdac5, RZ, P1 
      IADD3.X R38, P2, R39, R16, RZ, P2, !PT 
      SHF.L.U32.HI R16, R37, 0x1, R32 
      IMAD R34, R12, R33, RZ 
      IADD3.X R35, P2, R20, R17, RZ, P2, !PT 
      SHF.L.U32.HI R37, R22, 0x1, R37 
      IMAD.HI.U32 R53, P1, R16, -0x1, R18 
      MOV R17, RZ 
      SHF.L.U32.HI R12, R13, 0x1, R48 
      MOV R13, RZ 
      IMAD.HI.U32 R33, P3, R37, -0x1, R16 
      SHF.L.U32.HI R48, R48, 0x1, R23 
      MOV R49, RZ 
      IADD3 R52, -R16, R18, RZ 
      IMAD.WIDE.U32.X R50, P5, R18, -0x1, R12, P3 
      IADD3.X R26, RZ, RZ, R21, P2, P0 
      SHF.L.U32.HI R20, R23, 0x1, R38 
      IMAD.WIDE.U32.X R40, P3, R12, -0x1, R48, P1 
      SHF.L.U32.HI R22, R38, 0x1, R35 
      MOV R21, RZ 
      IMAD.WIDE.U32 R52, P1, R37, -0x1a402, R52 
      MOV R23, RZ 
      IADD3 R32, -R37, R16, RZ 
      IMAD.WIDE.U32 R50, P4, R16, -0x1a402, R50 
      IADD3 R17, P0, R34, -R37, RZ 
      SHF.L.U32.HI R26, R35, 0x1, R26 
      IMAD.WIDE.U32.X R34, P5, R48, -0x1, R20, P5 
      IADD3.X R13, P0, R27, ~R32, RZ, P0, !PT 
      MOV R27, RZ 
      IMAD.WIDE.U32.X R46, P3, R20, -0x1, R22, P3 
      IADD3 RZ, P2, RZ, R32, RZ 
      IMAD.WIDE.U32.X R40, P1, R18, -0x1a402, R40, P1 
      IADD3.X R32, P2, R33, R52, RZ, P2, !PT 
      IMAD.WIDE.U32.X R44, P5, R22, -0x1, R26, P5 
      IADD3.X R19, P0, R29, ~R32, RZ, P0, !PT 
      IMAD.WIDE.U32.X R38, R26, -0x1, RZ, P3 
      IMAD.WIDE.U32.X R34, P4, R12, -0x1a402, R34, P4 
      IADD3.X R39, RZ, R39, RZ, P5, !PT 
      IMAD.WIDE.U32 R40, P3, R16, 0x53bda402, R40 
      IMAD.WIDE.U32.X R46, P1, R48, -0x1a402, R46, P1 
      IMAD.WIDE.U32 R50, P6, R37, 0x53bda402, R50 
      IMAD.WIDE.U32.X R44, P4, R20, -0x1a402, R44, P4 
      IADD3.X R21, P2, R53, R50, RZ, P2, !PT 
      IMAD.WIDE.U32.X R46, P3, R12, 0x53bda402, R46, P3 
      IADD3.X R21, P0, R28, ~R21, RZ, P0, !PT 
      IMAD.WIDE.U32.X R38, P1, R22, -0x1a402, R38, P1 
      IMAD.WIDE.U32.X R34, P6, R18, 0x53bda402, R34, P6 
      IMAD.WIDE.U32.X R32, R26, -0x1a402, RZ, P4 
      IMAD.WIDE.U32 R40, P5, R37, 0x9a1d805, R40 
      IADD3.X R33, RZ, R33, RZ, P1, !PT 
      IMAD.WIDE.U32.X R38, P3, R20, 0x53bda402, R38, P3 
      IADD3.X R36, P2, R51, R40, RZ, P2, !PT 
      IMAD.WIDE.U32.X R44, P6, R48, 0x53bda402, R44, P6 
      IADD3.X R23, P0, R31, ~R36, RZ, P0, !PT 
      IMAD.WIDE.U32 R34, P1, R16, 0x9a1d805, R34 
      IMAD.WIDE.U32.X R28, P5, R18, 0x9a1d805, R46, P5 
      IMAD.WIDE.U32.X R46, R26, 0x53bda402, RZ, P3 
      IMAD.WIDE.U32.X R32, P6, R22, 0x53bda402, R32, P6 
      IMAD.WIDE.U32.X R44, P1, R12, 0x9a1d805, R44, P1 
      IADD3.X R47, RZ, R47, RZ, P6, !PT 
      IMAD.WIDE.U32 R28, P4, R16, 0x3339d808, R28 
      IMAD.WIDE.U32.X R38, P5, R48, 0x9a1d805, R38, P5 
      IMAD.WIDE.U32 R34, P3, R37, 0x3339d808, R34 
      IMAD.WIDE.U32.X R32, P1, R20, 0x9a1d805, R32, P1 
      IADD3.X R27, P2, R41, R34, RZ, P2, !PT 
      IMAD.WIDE.U32.X R38, P4, R12, 0x3339d808, R38, P4 
      IADD3.X R27, P0, R30, ~R27, RZ, P0, !PT 
      IMAD.WIDE.U32.X R46, P5, R22, 0x9a1d805, R46, P5 
      IMAD.WIDE.U32.X R44, P3, R18, 0x3339d808, R44, P3 
      IMAD.WIDE.U32 R28, P6, R37, 0x299d7d48, R28 
      IMAD.WIDE.U32.X R40, R26, 0x9a1d805, RZ, P1 
      IADD3.X R43, P2, R35, R28, RZ, P2, !PT 
      IMAD.WIDE.U32.X R30, P4, R20, 0x3339d808, R46, P4 
      IADD3.X R41, RZ, R41, RZ, P5, !PT 
      IADD3 R28, P5, R17, -0x1, RZ 
      IMAD.WIDE.U32 R44, P1, R16, 0x299d7d48, R44 
      IADD3.X R6, P0, R6, ~R43, RZ, P0, !PT 
      IMAD.WIDE.U32.X R32, P3, R48, 0x3339d808, R32, P3 
      IMAD.WIDE.U32.X R34, R26, 0x3339d808, RZ, P4 
      IMAD.WIDE.U32 R36, P4, R37, 0x73eda753, R44 
      IADD3.X R44, P5, RZ, R13, RZ, P5, !PT 
      IMAD.WIDE.U32.X R38, P6, R18, 0x299d7d48, R38, P6 
      IADD3.X R46, P5, R19, 0x1a401, RZ, P5, !PT 
      IADD3.X R50, P2, R29, R36, RZ, P2, !PT 
      IMAD.WIDE.U32.X R40, P3, R22, 0x3339d808, R40, P3 
      IADD3.X R36, P5, R21, -0x53bda403, RZ, P5, !PT 
      IADD3.X R50, P0, R5, ~R50, RZ, P0, !PT 
      IMAD.WIDE.U32.X R32, P1, R12, 0x299d7d48, R32, P1 
      IADD3.X R35, RZ, R35, RZ, P3, !PT 
      IMAD.WIDE.U32 R38, P3, R16, 0x73eda753, R38 
      IADD3.X R16, P5, R23, -0x9a1d806, RZ, P5, !PT 
      IMAD.WIDE.U32.X R30, P6, R48, 0x299d7d48, R30, P6 
      IADD3.X R37, P2, R38, R37, RZ, P2, !PT 
      IADD3.X R38, P5, R27, -0x3339d809, RZ, P5, !PT 
      IMAD.WIDE.U32.X R32, P4, R18, 0x73eda753, R32, P4 
      IADD3.X R37, P0, R8, ~R37, RZ, P0, !PT 
      IADD3.X R5, P5, R6, -0x299d7d49, RZ, P5, !PT 
      IMAD.WIDE.U32.X R40, P1, R20, 0x299d7d48, R40, P1 
      IADD3.X R8, P2, R39, R32, RZ, P2, !PT 
      IADD3.X R29, P5, R50, -0x73eda754, RZ, P5, !PT 
      IMAD.WIDE.U32.X R30, P3, R12, 0x73eda753, R30, P3 
      IADD3.X R8, P0, R7, ~R8, RZ, P0, !PT 
      IADD3.X RZ, P5, R37, -0x1, RZ, P5, !PT 
      IMAD.WIDE.U32.X R52, R26, 0x299d7d48, RZ, P1 
      IADD3.X R33, P2, R30, R33, RZ, P2, !PT 
      IADD3.X RZ, P5, R8, -0x1, RZ, P5, !PT 
      IMAD.WIDE.U32.X R34, P6, R22, 0x299d7d48, R34, P6 
      IADD3.X R33, P0, R10, ~R33, RZ, P0, !PT 
      IMAD.WIDE.U32.X R40, P4, R48, 0x73eda753, R40, P4 
      IADD3.X R53, RZ, R53, RZ, P6, !PT 
      IADD3.X RZ, P5, R33, -0x1, RZ, P5, !PT 
      IMAD.WIDE.U32.X R34, P3, R20, 0x73eda753, R34, P3 
      IADD3.X R30, P2, R31, R40, RZ, P2, !PT 
      IMAD.WIDE.U32.X R52, P4, R22, 0x73eda753, R52, P4 
      IADD3.X R41, P2, R34, R41, RZ, P2, !PT 
      IADD3.X R30, P0, R9, ~R30, RZ, P0, !PT 
      IMAD.WIDE.U32.X R8, R26, 0x73eda753, RZ, P3 
      IADD3.X R34, P2, R35, R52, RZ, P2, !PT 
      IADD3.X R41, P0, R14, ~R41, RZ, P0, !PT 
      IADD3.X RZ, P5, R30, -0x1, RZ, P5, !PT 
      IADD3.X R52, P2, R8, R53, RZ, P2, !PT 
      IADD3.X R34, P0, R15, ~R34, RZ, P0, !PT 
      IADD3.X RZ, P5, R41, -0x1, RZ, P5, !PT 
      IADD3.X R9, RZ, RZ, R9, P2, P4 
      IADD3.X R52, P0, R11, ~R52, RZ, P0, !PT 
      IADD3.X RZ, P5, R34, -0x1, RZ, P5, !PT 
      IADD3.X R9, R42, ~R9, RZ, P0, !PT 
      IADD3.X RZ, P5, R52, -0x1, RZ, P5, !PT 
      IADD3.X RZ, P5, R9, -0x1, RZ, P5, !PT 
      SEL R28, R28, R17, P5 
      SEL R44, R44, R13, P5 
      IADD3 R7, P0, R28, -0x1, RZ 
      SEL R46, R46, R19, P5 
      IADD3.X R9, P0, RZ, R44, RZ, P0, !PT 
      SEL R36, R36, R21, P5 
      IADD3.X R13, P0, R46, 0x1a401, RZ, P0, !PT 
      SEL R16, R16, R23, P5 
      IADD3.X R11, P0, R36, -0x53bda403, RZ, P0, !PT 
      SEL R38, R38, R27, P5 
      IADD3.X R17, P0, R16, -0x9a1d806, RZ, P0, !PT 
      SEL R5, R5, R6, P5 
      IADD3.X R19, P0, R38, -0x3339d809, RZ, P0, !PT 
      SEL R29, R29, R50, P5 
      IADD3.X R14, P0, R5, -0x299d7d49, RZ, P0, !PT 
      IADD3.X R6, P0, R29, -0x73eda754, RZ, P0, !PT 
      SEL R10, R13, R46, P0 
      SEL R11, R11, R36, P0 
      SEL R9, R9, R44, P0 
      SEL R8, R7, R28, P0 
      SEL R15, R6, R29, P0 
      SEL R14, R14, R5, P0 
      ST.E.128 [R24.64], R8 
      SEL R13, R19, R38, P0 
      SEL R12, R17, R16, P0 
      ISETP.GT.U32.AND P0, PT, R4, c[0x0][0x184], PT 
      ST.E.128 [R24.64+0x10], R12 
      BAR.SYNC 0x0 
@P0   CALL.REL.NOINC 0x7ff686d40a50 
      BRA 0x7ff686d3ee60 
      EXIT 
      BRA 0x7ff686d40a60
      NOP
      NOP
      NOP
      NOP
      NOP
      NOP
      NOP
      NOP
      NOP
