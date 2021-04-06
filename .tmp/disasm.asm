L0038:       equ  0038h
L050E:       equ  050Eh
L09E1:       equ  09E1h
L455A:       equ  455Ah
L4E64:       equ  4E64h
L5464:       equ  5464h
L6774:       equ  6774h
LF661:       equ  F661h


             org 006Ch


006C L006C:
006C C3 0E 05     JP   L050E  


006F C3           defb C3h    
0070 38           defb 38h    
0071 05           defb 05h    
0072 C3           defb C3h    
0073 D2           defb D2h    
0074 05           defb 05h    
0075 C3           defb C3h    
0076 1F           defb 1Fh    
0077 06           defb 06h    
0078 C3           defb C3h    
0079 94           defb 94h    
007A 05           defb 05h    
007B C3           defb C3h    
007C B4           defb B4h    
007D 05           defb 05h    
007E C3           defb C3h    
007F 02           defb 02h    
0080 06           defb 06h    
0081 C3           defb C3h    
0082 59           defb 59h    
0083 06           defb 06h    
0084 C3           defb C3h    
0085 E4           defb E4h    
0086 06           defb 06h    
0087 C3           defb C3h    
0088 F9           defb F9h    
0089 06           defb 06h    
008A C3           defb C3h    
008B 04           defb 04h    
008C 07           defb 07h    
008D C3           defb C3h    
008E 10           defb 10h    
008F 15           defb 15h    
0090 C3           defb C3h    
0091 BD           defb BDh    
0092 04           defb 04h    
0093 C3           defb C3h    
0094 02           defb 02h    
0095 11           defb 11h    
0096 C3           defb C3h    
0097 0E           defb 0Eh    
0098 11           defb 11h    
0099 C3           defb C3h    
009A C4           defb C4h    
009B 11           defb 11h    
009C C3           defb C3h    
009D 6A           defb 6Ah    
009E 0D           defb 0Dh    
009F C3           defb C3h    
00A0 CB           defb CBh    
00A1 10           defb 10h    
00A2 C3           defb C3h    
00A3 BC           defb BCh    
00A4 08           defb 08h    
00A5 C3           defb C3h    
00A6 5D           defb 5Dh    
00A7 08           defb 08h    
00A8 C3           defb C3h    
00A9 84           defb 84h    
00AA 08           defb 08h    
00AB C3           defb C3h    
00AC 9D           defb 9Dh    
00AD 08           defb 08h    
00AE C3           defb C3h    
00AF BF           defb BFh    
00B0 23           defb 23h    
00B1 C3           defb C3h    
00B2 D5           defb D5h    
00B3 23           defb 23h    
00B4 C3           defb C3h    
00B5 CC           defb CCh    
00B6 23           defb 23h    
00B7 C3           defb C3h    
00B8 6F           defb 6Fh    
00B9 04           defb 04h    
00BA C3           defb C3h    
00BB FB           defb FBh    
00BC 03           defb 03h    
00BD C3           defb C3h    
00BE F9           defb F9h    
00BF 10           defb 10h    
00C0 C3           defb C3h    
00C1 13           defb 13h    
00C2 11           defb 11h    
00C3 C3           defb C3h    
00C4 48           defb 48h    
00C5 08           defb 08h    
00C6 C3           defb C3h    
00C7 8E           defb 8Eh    
00C8 08           defb 08h    
00C9 C3           defb C3h    
00CA 26           defb 26h    
00CB 0B           defb 0Bh    
00CC C3           defb C3h    
00CD 15           defb 15h    
00CE 0B           defb 0Bh    
00CF C3           defb C3h    


             org 08D0h


08D0 L08D0:
08D0 CD E1 09     CALL L09E1  
08D3 3A DD F3     LD   A,(LF3DD) 
08D6 3D           DEC  A      
08D7 32 61 F6     LD   (LF661),A 
08DA F1           POP  AF     
08DB C1           POP  BC     
08DC D1           POP  DE     
08DD E1           POP  HL     
08DE C9           RET         


08DF CD           defb CDh    
08E0 9D           defb 9Dh    
08E1 08           defb 08h    
08E2 D0           defb D0h    
08E3 4F           defb 4Fh    
08E4 20           defb 20h    
08E5 0D           defb 0Dh    
08E6 21           defb 21h    
08E7 A7           defb A7h    
08E8 FC           defb FCh    
08E9 7E           defb 7Eh    
08EA A7           defb A7h    
08EB C2           defb C2h    
08EC 8F           defb 8Fh    
08ED 09           defb 09h    
08EE 79           defb 79h    
08EF FE           defb FEh    
08F0 20           defb 20h    
08F1 38           defb 38h    
08F2 21           defb 21h    
08F3 2A           defb 2Ah    
08F4 DC           defb DCh    
08F5 F3           defb F3h    
08F6 FE           defb FEh    
08F7 7F           defb 7Fh    
08F8 CA           defb CAh    
08F9 E3           defb E3h    
08FA 0A           defb 0Ah    
08FB CD           defb CDh    
08FC E6           defb E6h    
08FD 0B           defb 0Bh    
08FE CD           defb CDh    
08FF 44           defb 44h    
0900 0A           defb 0Ah    
0901 C0           defb C0h    
0902 AF           defb AFh    
0903 CD           defb CDh    
0904 2B           defb 2Bh    
0905 0C           defb 0Ch    
0906 26           defb 26h    
0907 01           defb 01h    
0908 CD           defb CDh    
0909 61           defb 61h    
090A 0A           defb 0Ah    
090B C0           defb C0h    
090C CD           defb CDh    
090D 69           defb 69h    
090E 0A           defb 0Ah    
090F 2E           defb 2Eh    
0910 01           defb 01h    
0911 C3           defb C3h    
0912 88           defb 88h    
0913 0A           defb 0Ah    
0914 21           defb 21h    
0915 2D           defb 2Dh    
0916 09           defb 09h    
0917 0E           defb 0Eh    
0918 0C           defb 0Ch    
0919 23           defb 23h    
091A 23           defb 23h    
091B A7           defb A7h    
091C 0D           defb 0Dh    
091D F8           defb F8h    
091E BE           defb BEh    
091F 23           defb 23h    
0920 20           defb 20h    
0921 F7           defb F7h    
0922 4E           defb 4Eh    
0923 23           defb 23h    
0924 46           defb 46h    
0925 2A           defb 2Ah    
0926 DC           defb DCh    
0927 F3           defb F3h    


0928 L0928:
0928 CD 2D 09     CALL L092D  
092B AF           XOR  A      
092C C9           RET         


092D L092D:
092D C5           PUSH BC     
092E C9           RET         


092F 07           defb 07h    
0930 13           defb 13h    
0931 11           defb 11h    
0932 08           defb 08h    
0933 4C           defb 4Ch    
0934 0A           defb 0Ah    
0935 09           defb 09h    
0936 71           defb 71h    
0937 0A           defb 0Ah    
0938 0A           defb 0Ah    
0939 08           defb 08h    
093A 09           defb 09h    
093B 0B           defb 0Bh    
093C 7F           defb 7Fh    
093D 0A           defb 0Ah    
093E 0C           defb 0Ch    
093F 7E           defb 7Eh    
0940 07           defb 07h    
0941 0D           defb 0Dh    
0942 81           defb 81h    
0943 0A           defb 0Ah    
0944 1B           defb 1Bh    
0945 89           defb 89h    
0946 09           defb 09h    
0947 1C           defb 1Ch    
0948 5B           defb 5Bh    
0949 0A           defb 0Ah    
094A 1D           defb 1Dh    
094B 4C           defb 4Ch    
094C 0A           defb 0Ah    
094D 1E           defb 1Eh    
094E 57           defb 57h    
094F 0A           defb 0Ah    
0950 1F           defb 1Fh    
0951 61           defb 61h    
0952 0A           defb 0Ah    
0953 6A           defb 6Ah    
0954 7E           defb 7Eh    
0955 07           defb 07h    
0956 45           defb 45h    
0957 7E           defb 7Eh    
0958 07           defb 07h    
0959 4B           defb 4Bh    
095A EE           defb EEh    
095B 0A           defb 0Ah    
095C 4A           defb 4Ah    
095D 05           defb 05h    
095E 0B           defb 0Bh    
095F 6C           defb 6Ch    
0960 EC           defb ECh    
0961 0A           defb 0Ah    
0962 4C           defb 4Ch    
0963 B4           defb B4h    
0964 0A           defb 0Ah    
0965 4D           defb 4Dh    
0966 85           defb 85h    
0967 0A           defb 0Ah    
0968 59           defb 59h    
0969 86           defb 86h    
096A 09           defb 09h    
096B 41           defb 41h    
096C 57           defb 57h    
096D 0A           defb 0Ah    
096E 42           defb 42h    
096F 61           defb 61h    
0970 0A           defb 0Ah    
0971 43           defb 43h    
0972 44           defb 44h    
0973 0A           defb 0Ah    
0974 44           defb 44h    
0975 55           defb 55h    
0976 0A           defb 0Ah    
0977 48           defb 48h    
0978 7F           defb 7Fh    
0979 0A           defb 0Ah    
097A 78           defb 78h    
097B 80           defb 80h    
097C 09           defb 09h    
097D 79           defb 79h    
097E 83           defb 83h    
097F 09           defb 09h    
0980 3E           defb 3Eh    
0981 01           defb 01h    
0982 01           defb 01h    
0983 3E           defb 3Eh    
0984 02           defb 02h    
0985 01           defb 01h    
0986 3E           defb 3Eh    
0987 04           defb 04h    
0988 01           defb 01h    
0989 3E           defb 3Eh    
098A FF           defb FFh    
098B 32           defb 32h    


             org 0D6Ch


0D6C L0D6C:
0D6C D5           defb D5h    
0D6D C5           defb C5h    
0D6E CD           defb CDh    
0D6F 9F           defb 9Fh    
0D70 0B           defb 0Bh    
0D71 30           defb 30h    
0D72 0F           defb 0Fh    
0D73 3A           defb 3Ah    
0D74 CD           defb CDh    
0D75 FB           defb FBh    
0D76 21           defb 21h    
0D77 EB           defb EBh    
0D78 FB           defb FBh    
0D79 AE           defb AEh    
0D7A 21           defb 21h    
0D7B DE           defb DEh    
0D7C F3           defb F3h    
0D7D A6           defb A6h    
0D7E 0F           defb 0Fh    
0D7F DC           defb DCh    
0D80 2B           defb 2Bh    
0D81 0B           defb 0Bh    
0D82 CD           defb CDh    
0D83 62           defb 62h    
0D84 0D           defb 0Dh    
0D85 C1           defb C1h    
0D86 D1           defb D1h    
0D87 E1           defb E1h    
0D88 C9           defb C9h    
0D89 E5           defb E5h    
0D8A D5           defb D5h    
0D8B C5           defb C5h    
0D8C F5           defb F5h    
0D8D 3E           defb 3Eh    
0D8E 0B           defb 0Bh    
0D8F 90           defb 90h    
0D90 87           defb 87h    
0D91 87           defb 87h    
0D92 87           defb 87h    
0D93 4F           defb 4Fh    
0D94 06           defb 06h    
0D95 08           defb 08h    
0D96 F1           defb F1h    
0D97 1F           defb 1Fh    
0D98 C5           defb C5h    
0D99 F5           defb F5h    
0D9A DC           defb DCh    
0D9B 21           defb 21h    
0D9C 10           defb 10h    
0D9D F1           defb F1h    
0D9E C1           defb C1h    
0D9F 0C           defb 0Ch    
0DA0 10           defb 10h    
0DA1 F5           defb F5h    
0DA2 C3           defb C3h    
0DA3 DB           defb DBh    
0DA4 08           defb 08h    
0DA5 30           defb 30h    
0DA6 31           defb 31h    
0DA7 32           defb 32h    
0DA8 33           defb 33h    
0DA9 34           defb 34h    
0DAA 35           defb 35h    
0DAB 36           defb 36h    
0DAC 37           defb 37h    
0DAD 38           defb 38h    
0DAE 39           defb 39h    
0DAF 2D           defb 2Dh    
0DB0 3D           defb 3Dh    
0DB1 5C           defb 5Ch    
0DB2 5B           defb 5Bh    
0DB3 5D           defb 5Dh    
0DB4 3B           defb 3Bh    
0DB5 27           defb 27h    
0DB6 60           defb 60h    
0DB7 2C           defb 2Ch    
0DB8 2E           defb 2Eh    
0DB9 2F           defb 2Fh    
0DBA FF           defb FFh    
0DBB 61           defb 61h    
0DBC 62           defb 62h    
0DBD 63           defb 63h    
0DBE 64           defb 64h    
0DBF 65           defb 65h    
0DC0 66           defb 66h    
0DC1 67           defb 67h    
0DC2 68           defb 68h    
0DC3 69           defb 69h    
0DC4 6A           defb 6Ah    
0DC5 6B           defb 6Bh    
0DC6 6C           defb 6Ch    
0DC7 6D           defb 6Dh    
0DC8 6E           defb 6Eh    
0DC9 6F           defb 6Fh    
0DCA 70           defb 70h    
0DCB 71           defb 71h    
0DCC 72           defb 72h    
0DCD 73           defb 73h    
0DCE 74           defb 74h    
0DCF 75           defb 75h    


             org 10D9h


10D9 L10D9:
10D9 CD           defb CDh    
10DA 6A           defb 6Ah    
10DB 0D           defb 0Dh    
10DC 28           defb 28h    
10DD FB           defb FBh    
10DE CD           defb CDh    
10DF 27           defb 27h    
10E0 0A           defb 0Ah    
10E1 21           defb 21h    
10E2 9B           defb 9Bh    
10E3 FC           defb FCh    
10E4 7E           defb 7Eh    
10E5 FE           defb FEh    
10E6 04           defb 04h    
10E7 20           defb 20h    
10E8 02           defb 02h    
10E9 36           defb 36h    
10EA 00           defb 00h    
10EB 2A           defb 2Ah    
10EC FA           defb FAh    
10ED F3           defb F3h    
10EE 4E           defb 4Eh    
10EF CD           defb CDh    
10F0 C2           defb C2h    
10F1 10           defb 10h    
10F2 22           defb 22h    
10F3 FA           defb FAh    
10F4 F3           defb F3h    
10F5 79           defb 79h    
10F6 C3           defb C3h    
10F7 DB           defb DBh    
10F8 08           defb 08h    
10F9 E5           defb E5h    
10FA 21           defb 21h    
10FB 00           defb 00h    
10FC 00           defb 00h    
10FD CD           defb CDh    
10FE FB           defb FBh    
10FF 03           defb 03h    
1100 E1           defb E1h    
1101 C9           defb C9h    
1102 F3           defb F3h    
1103 D3           defb D3h    
1104 A0           defb A0h    
1105 F5           defb F5h    
1106 7B           defb 7Bh    
1107 D3           defb D3h    
1108 A1           defb A1h    
1109 FB           defb FBh    
110A F1           defb F1h    
110B C9           defb C9h    
110C 3E           defb 3Eh    
110D 0E           defb 0Eh    
110E D3           defb D3h    
110F A0           defb A0h    
1110 DB           defb DBh    
1111 A2           defb A2h    
1112 C9           defb C9h    
1113 AF           defb AFh    
1114 1E           defb 1Eh    
1115 55           defb 55h    
1116 CD           defb CDh    
1117 02           defb 02h    
1118 11           defb 11h    
1119 5F           defb 5Fh    
111A 3C           defb 3Ch    
111B CD           defb CDh    
111C 02           defb 02h    
111D 11           defb 11h    
111E 1E           defb 1Eh    
111F BE           defb BEh    
1120 3E           defb 3Eh    
1121 07           defb 07h    
1122 CD           defb CDh    
1123 02           defb 02h    
1124 11           defb 11h    
1125 5F           defb 5Fh    
1126 3C           defb 3Ch    
1127 CD           defb CDh    
1128 02           defb 02h    
1129 11           defb 11h    
112A 01           defb 01h    
112B D0           defb D0h    
112C 07           defb 07h    
112D CD           defb CDh    
112E 33           defb 33h    
112F 11           defb 11h    
1130 C3           defb C3h    
1131 BD           defb BDh    
1132 04           defb 04h    
1133 0B           defb 0Bh    
1134 E3           defb E3h    
1135 E3           defb E3h    
1136 78           defb 78h    
1137 B1           defb B1h    
1138 20           defb 20h    
1139 F9           defb F9h    
113A C9           defb C9h    
113B 47           defb 47h    
113C CD           defb CDh    


             org 31F0h


31F0 L31F0:
31F0 CD           defb CDh    
31F1 21           defb 21h    
31F2 32           defb 32h    
31F3 44           defb 44h    
31F4 4D           defb 4Dh    
31F5 21           defb 21h    
31F6 00           defb 00h    
31F7 00           defb 00h    
31F8 3E           defb 3Eh    
31F9 11           defb 11h    
31FA B7           defb B7h    
31FB 18           defb 18h    
31FC 09           defb 09h    
31FD E5           defb E5h    
31FE 09           defb 09h    
31FF 30           defb 30h    
3200 04           defb 04h    
3201 33           defb 33h    
3202 33           defb 33h    
3203 37           defb 37h    
3204 30           defb 30h    
3205 E1           defb E1h    
3206 CB           defb CBh    
3207 13           defb 13h    
3208 CB           defb CBh    
3209 12           defb 12h    
320A ED           defb EDh    
320B 6A           defb 6Ah    
320C 3D           defb 3Dh    
320D 20           defb 20h    
320E EE           defb EEh    
320F EB           defb EBh    
3210 C1           defb C1h    
3211 D5           defb D5h    
3212 C3           defb C3h    
3213 B5           defb B5h    
3214 31           defb 31h    
3215 7C           defb 7Ch    
3216 AA           defb AAh    
3217 47           defb 47h    
3218 CD           defb CDh    
3219 1C           defb 1Ch    
321A 32           defb 32h    
321B EB           defb EBh    
321C 7C           defb 7Ch    
321D B7           defb B7h    
321E F2           defb F2h    
321F 99           defb 99h    
3220 2F           defb 2Fh    
3221 AF           defb AFh    
3222 4F           defb 4Fh    
3223 95           defb 95h    
3224 6F           defb 6Fh    
3225 79           defb 79h    
3226 9C           defb 9Ch    
3227 67           defb 67h    
3228 C3           defb C3h    
3229 99           defb 99h    
322A 2F           defb 2Fh    
322B 2A           defb 2Ah    
322C F8           defb F8h    
322D F7           defb F7h    
322E CD           defb CDh    
322F 21           defb 21h    
3230 32           defb 32h    
3231 7C           defb 7Ch    
3232 EE           defb EEh    
3233 80           defb 80h    
3234 B5           defb B5h    
3235 C0           defb C0h    
3236 AF           defb AFh    
3237 C3           defb C3h    
3238 CC           defb CCh    
3239 2F           defb 2Fh    
323A D5           defb D5h    
323B CD           defb CDh    
323C E6           defb E6h    
323D 31           defb 31h    
323E AF           defb AFh    
323F 82           defb 82h    
3240 1F           defb 1Fh    
3241 67           defb 67h    
3242 7B           defb 7Bh    
3243 1F           defb 1Fh    
3244 6F           defb 6Fh    
3245 CD           defb CDh    
3246 9C           defb 9Ch    
3247 2F           defb 2Fh    
3248 F1           defb F1h    
3249 18           defb 18h    
324A D2           defb D2h    
324B CD           defb CDh    
324C DF           defb DFh    
324D 2E           defb 2Eh    
324E CD           defb CDh    
324F 80           defb 80h    
3250 32           defb 32h    
3251 CD           defb CDh    
3252 42           defb 42h    
3253 30           defb 30h    


             org 44A8h


44A8 L44A8:
44A8 CD 6C 00     CALL L006C  
44AB 21 FC 45     LD   HL,45FCh 
44AE C3 5A 45     JP   L455A  


44B1 L44B1:
44B1 AF           XOR  A      
44B2 CD 64 4E     CALL L4E64  
44B5 AF           XOR  A      
44B6 CD CA 44     CALL L44CA  
44B9 06 78        LD   B,78h  
44BB L44BB:
44BB 76           HALT        
44BC 10 FD        DJNZ L44BB  
44BE C9           RET         


44BF CD           defb CDh    
44C0 7C           defb 7Ch    
44C1 4E           defb 4Eh    
44C2 AF           defb AFh    
44C3 CD           defb CDh    
44C4 64           defb 64h    
44C5 4E           defb 4Eh    
44C6 CD           defb CDh    
44C7 AA           defb AAh    
44C8 53           defb 53h    
44C9 C9           defb C9h    


44CA L44CA:
44CA FD E5        PUSH IY     
44CC FD 21 DB FF  LD   IY,FFDBh 
44D0 FD 39        ADD  IY,SP  


             org 4519h


4519 L4519:
4519 CD 74 67     CALL L6774  
451C C9           RET         


451D 06           defb 06h    
451E 05           defb 05h    
451F C5           defb C5h    
4520 CD           defb CDh    
4521 44           defb 44h    
4522 40           defb 40h    
4523 C1           defb C1h    
4524 30           defb 30h    
4525 08           defb 08h    
4526 10           defb 10h    
4527 F7           defb F7h    
4528 21           defb 21h    
4529 E1           defb E1h    
452A 46           defb 46h    
452B C3           defb C3h    
452C 5A           defb 5Ah    


             org 5892h


5892 L5892:
5892 58           LD   E,B    
5893 FD 7E 01     LD   A,(IY+1) 
5896 FE 01        CP   01h    
5898 CA 64 54     JP   Z,L5464 
589B D6 0A        SUB  0Ah    
589D 28 03        JR   Z,L58A2 
589F F2 A4 58     JP   P,L58A4 
58A2 L58A2:
58A2 3E 01        LD   A,01h  
58A4 L58A4:
58A4 FD 77 00     LD   (IY+0),A 


             org 7441h


7441 L7441:
7441 FF           RST  38h    
7442 FF           RST  38h    
7443 FF           RST  38h    
7444 FF           RST  38h    
7445 FF           RST  38h    
7446 FF           RST  38h    
7447 FF           RST  38h    
7448 FF           RST  38h    
7449 FF           RST  38h    
744A FF           RST  38h    
744B FF           RST  38h    
744C FF           RST  38h    
744D FF           RST  38h    
744E FF           RST  38h    
744F FF           RST  38h    
7450 FF           RST  38h    
7451 FF           RST  38h    
7452 FF           RST  38h    
7453 FF           RST  38h    
7454 FF           RST  38h    


             org 7FE4h


7FE4 L7FE4:
7FE4 32           defb 32h    
7FE5 00           defb 00h    
7FE6 60           defb 60h    
7FE7 F1           defb F1h    


7FE8 L7FE8:
7FE8 E1           POP  HL     
7FE9 C9           RET         


7FEA FF           defb FFh    
7FEB FF           defb FFh    
7FEC FF           defb FFh    
7FED FF           defb FFh    
7FEE FF           defb FFh    
7FEF FF           defb FFh    
7FF0 FF           defb FFh    
7FF1 FF           defb FFh    
7FF2 FF           defb FFh    
7FF3 FF           defb FFh    
7FF4 FF           defb FFh    
7FF5 FF           defb FFh    
7FF6 FF           defb FFh    
7FF7 FF           defb FFh    
7FF8 FF           defb FFh    
7FF9 FF           defb FFh    
7FFA FF           defb FFh    
7FFB FF           defb FFh    
7FFC FF           defb FFh    


             org F38Fh


F38F LF38F:
F38F CD 98 F3     CALL LF398  
F392 08           EX   AF,AF' 
F393 F1           POP  AF     
F394 D3 A8        OUT  (00A8h),A 
F396 08           EX   AF,AF' 
F397 C9           RET         


F398 LF398:
F398 DD E9        JP   (IX)   


F39A 5A           defb 5Ah    
F39B 47           defb 47h    
F39C 5A           defb 5Ah    
F39D 47           defb 47h    
F39E 5A           defb 5Ah    
F39F 47           defb 47h    
F3A0 5A           defb 5Ah    
F3A1 47           defb 47h    
F3A2 5A           defb 5Ah    
F3A3 47           defb 47h    
F3A4 5A           defb 5Ah    
F3A5 47           defb 47h    
F3A6 5A           defb 5Ah    
F3A7 47           defb 47h    
F3A8 5A           defb 5Ah    
F3A9 47           defb 47h    
F3AA 5A           defb 5Ah    
F3AB 47           defb 47h    
F3AC 5A           defb 5Ah    
F3AD 47           defb 47h    
F3AE 25           defb 25h    
F3AF 1D           defb 1Dh    
F3B0 25           defb 25h    
F3B1 18           defb 18h    
F3B2 0E           defb 0Eh    
F3B3 00           defb 00h    
F3B4 00           defb 00h    
F3B5 00           defb 00h    
F3B6 00           defb 00h    
F3B7 00           defb 00h    
F3B8 08           defb 08h    
F3B9 00           defb 00h    
F3BA 00           defb 00h    
F3BB 00           defb 00h    
F3BC 00           defb 00h    
F3BD 00           defb 00h    
F3BE 18           defb 18h    
F3BF 00           defb 00h    
F3C0 20           defb 20h    
F3C1 00           defb 00h    
F3C2 00           defb 00h    
F3C3 00           defb 00h    
F3C4 1B           defb 1Bh    
F3C5 00           defb 00h    
F3C6 38           defb 38h    
F3C7 00           defb 00h    
F3C8 18           defb 18h    
F3C9 00           defb 00h    
F3CA 20           defb 20h    
F3CB 00           defb 00h    
F3CC 00           defb 00h    
F3CD 00           defb 00h    
F3CE 1B           defb 1Bh    
F3CF 00           defb 00h    
F3D0 38           defb 38h    
F3D1 00           defb 00h    
F3D2 08           defb 08h    
F3D3 00           defb 00h    
F3D4 00           defb 00h    
F3D5 00           defb 00h    
F3D6 00           defb 00h    
F3D7 00           defb 00h    
F3D8 1B           defb 1Bh    
F3D9 00           defb 00h    
F3DA 38           defb 38h    
F3DB 01           defb 01h    
F3DC 05           defb 05h    


F3DD LF3DD:
F3DD 01           defb 01h    
F3DE 00           defb 00h    
F3DF 00           defb 00h    
F3E0 F0           defb F0h    
F3E1 00           defb 00h    
F3E2 00           defb 00h    
F3E3 01           defb 01h    
F3E4 00           defb 00h    
F3E5 00           defb 00h    
F3E6 F4           defb F4h    
F3E7 9F           defb 9Fh    
F3E8 F1           defb F1h    
F3E9 0F           defb 0Fh    
F3EA 04           defb 04h    
F3EB 04           defb 04h    
F3EC C3           defb C3h    
F3ED 00           defb 00h    
F3EE 00           defb 00h    
F3EF C3           defb C3h    
F3F0 00           defb 00h    
F3F1 00           defb 00h    
F3F2 0F           defb 0Fh    