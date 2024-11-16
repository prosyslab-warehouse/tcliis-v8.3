package provide DS9 1.0

######
# Begin autogenerated taccle (version 1.3) routines.
# Although taccle itself is protected by the GNU Public License (GPL)
# all user-supplied functions are protected by their respective
# author's license.  See http://mini.net/tcl/taccle for other details.
######

namespace eval plotsend {
    variable yylval {}
    variable table
    variable rules
    variable token {}
    variable yycnt 0
    variable yyerr 0
    variable save_state 0

    namespace export yylex
}

proc plotsend::YYABORT {} {
    return -code return 1
}

proc plotsend::YYACCEPT {} {
    return -code return 0
}

proc plotsend::YYERROR {} {
    variable yyerr
    set yyerr 1
}

proc plotsend::yyclearin {} {
    variable token
    variable yycnt
    set token {}
    incr yycnt -1
}

proc plotsend::yyerror {s} {
    puts stderr $s
}

proc plotsend::setupvalues {stack pointer numsyms} {
    upvar 1 1 y
    set y {}
    for {set i 1} {$i <= $numsyms} {incr i} {
        upvar 1 $i y
        set y [lindex $stack $pointer]
        incr pointer
    }
}

proc plotsend::unsetupvalues {numsyms} {
    for {set i 1} {$i <= $numsyms} {incr i} {
        upvar 1 $i y
        unset y
    }
}

array set plotsend::table {
  39:285,target 83
  38:275 reduce
  27:0 reduce
  1:305 shift
  21:303 shift
  33:261,target 63
  38:277 reduce
  31:273,target 66
  13:301,target 55
  48:0 reduce
  0:296,target 22
  38:279 reduce
  1:280,target 30
  70:0 reduce
  69:0 reduce
  30:302 reduce
  95:0,target 12
  41:287,target 92
  32:306,target 65
  6:0,target 7
  21:312 goto
  91:0 reduce
  87:0,target 70
  38:285 reduce
  6:278,target 48
  80:0,target 56
  79:0,target 58
  38:286 reduce
  1:316 goto
  9:307 shift
  15:307,target 27
  72:0,target 26
  38:287 reduce
  31:302,target 66
  30:306 reduce
  1:317 goto
  64:0,target 10
  30:297 reduce
  56:0,target 76
  35:257 shift
  30:298 reduce
  24:0 reduce
  48:0,target 9
  35:258 shift
  35:260 shift
  35:259 shift
  33:258,target 63
  6:271 shift
  45:0 reduce
  39:262,target 83
  35:261 shift
  0:304,target 25
  0:294,target 20
  9:315 goto
  25:0,target 16
  17:0,target 8
  66:0 reduce
  33:298,target 63
  9:268,target 50
  10:0,target 33
  87:0 reduce
  41:285,target 90
  6:278 shift
  20:271,target 63
  42:268,target 93
  15:295,target 21
  21:0 reduce
  35:273 shift
  32:273,target 65
  26:282 shift
  14:291,target 56
  15:274,target 10
  63:0 reduce
  33:306,target 63
  84:0 reduce
  32:302,target 65
  0:271,target 8
  14:319,target 57
  19:268,target 59
  17:0 reduce
  41:262,target 86
  26:322,target 74
  38:0 reduce
  32:257 reduce
  26:308 shift
  36:286,target 82
  32:258 reduce
  26:309 shift
  35:302 shift
  32:260 reduce
  32:259 reduce
  92:0,target 72
  60:0 reduce
  59:0 reduce
  32:261 reduce
  0:300,target 24
  0:290,target 18
  3:0,target 14
  84:0,target 62
  76:0,target 53
  81:0 reduce
  68:0,target 35
  35:306 shift
  61:0,target 46
  55:292,target 95
  35:297 shift
  2:X shift
  53:0,target 34
  35:298 shift
  0:268,target 5
  2:Y shift
  45:0,target 44
  35:261,target 80
  37:0,target 84
  33:273,target 63
  14:0 reduce
  26:320 goto
  29:0,target 2
  26:321 goto
  41:262 shift
  26:322 goto
  22:0,target 27
  26:320,target 72
  14:0,target 75
  32:273 reduce
  14:291 shift
  15:270,target 7
  56:0 reduce
  77:0 reduce
  33:302,target 63
  30:260,target 64
  30:259,target 64
  0:257 shift
  4:313,target 46
  21:268,target 65
  75:260,target 67
  75:259,target 67
  9:0 reduce
  35:258,target 77
  11:0 reduce
  41:275 shift
  26:X,target 36
  0:263 shift
  0:264 shift
  10:268,target 53
  41:277 shift
  37:286,target 84
  0:265 shift
  19:314,target 62
  35:298,target 83
  2:Y,target 37
  41:279 shift
  1:289,target 32
  53:0 reduce
  0:268 shift
  0:269 shift
  0:270 shift
  32:302 reduce
  0:271 shift
  14:319 goto
  19:268 shift
  74:0 reduce
  0:272 shift
  41:285 shift
  30:257,target 64
  20:271 shift
  75:257,target 67
  41:286 shift
  0:274 shift
  95:0 reduce
  41:287 shift
  32:306 reduce
  6:0 reduce
  32:297 reduce
  0:264,target 3
  0:276 shift
  19:274 shift
  32:298 reduce
  30:297,target 64
  75:297,target 67
  28:0 accept
  0:279 shift
  2:x shift
  7:0,target 32
  88:0,target 74
  0:281 shift
  0:0,target 1
  2:y shift
  20:278 shift
  81:0,target 54
  37:262 reduce
  35:306,target 85
  0:282 shift
  73:0,target 78
  50:0 reduce
  49:0 reduce
  0:283 shift
  65:0,target 38
  36:279,target 82
  0:284 shift
  57:0,target 25
  31:260,target 66
  31:259,target 66
  71:0 reduce
  50:0,target 51
  49:0,target 50
  0:283,target 15
  34:0,target 17
  0:288 shift
  92:0 reduce
  26:0,target 77
  0:290 shift
  0:300 shift
  2:321,target 41
  3:0 reduce
  18:0,target 28
  11:0,target 13
  38:286,target 81
  0:293 shift
  1:316,target 34
  9:307,target 51
  0:304 shift
  0:294 shift
  25:0 reduce
  37:275 reduce
  0:305 shift
  0:295 shift
  19:303 shift
  0:296 shift
  46:0 reduce
  37:277 reduce
  0:307 shift
  42:307,target 94
  26:x,target 38
  37:279 reduce
  36:277,target 82
  0:310 goto
  0:299 shift
  67:0 reduce
  31:257,target 66
  0:311 goto
  0:281,target 13
  2:y,target 39
  20:278,target 64
  35:273,target 81
  26:282,target 69
  88:0 reduce
  0:0 reduce
  37:285 reduce
  31:297,target 66
  2:318,target 40
  37:286 reduce
  19:314 goto
  37:287 reduce
  21:312,target 68
  22:0 reduce
  43:0 reduce
  37:279,target 84
  0:310,target 28
  0:299,target 23
  35:302,target 84
  32:260,target 65
  32:259,target 65
  64:0 reduce
  36:275,target 82
  85:0 reduce
  12:268,target 54
  15:311,target 58
  93:0,target 40
  39:286,target 83
  31:305,target 75
  85:0,target 60
  77:0,target 55
  0:257,target 1
  18:0 reduce
  70:0,target 85
  69:0,target 80
  62:0,target 5
  54:0,target 15
  40:0 reduce
  39:0 reduce
  46:0,target 4
  37:277,target 84
  0:307,target 27
  38:0,target 81
  32:257,target 65
  26:308,target 70
  61:0 reduce
  55:292 shift
  23:0,target 29
  82:0 reduce
  32:297,target 65
  0:276,target 11
  19:274,target 60
  38:279,target 81
  36:0 reduce
  33:260,target 63
  33:259,target 63
  31:257 reduce
  37:275,target 84
  31:258 reduce
  0:305,target 26
  0:295,target 21
  19:303,target 61
  57:0 reduce
  31:260 reduce
  31:259 reduce
  31:261 reduce
  78:0 reduce
  41:286,target 91
  0:274,target 10
  39:262 reduce
  38:277,target 81
  33:257,target 63
  4:268,target 43
  31:273 reduce
  13:301 shift
  54:0 reduce
  0:293,target 19
  33:297,target 63
  8:0,target 21
  9:267,target 49
  21:274,target 66
  90:0,target 69
  89:0,target 68
  82:0,target 59
  74:0,target 79
  0:272,target 9
  66:0,target 39
  7:0 reduce
  58:0,target 3
  51:0,target 52
  39:279,target 83
  10:268 shift
  43:0,target 43
  39:275 reduce
  29:0 reduce
  39:277 reduce
  38:275,target 81
  27:0,target 31
  1:305,target 33
  21:303,target 67
  36:287,target 82
  4:266,target 42
  19:0,target 45
  20:0,target 20
  51:0 reduce
  39:279 reduce
  72:0 reduce
  31:302 reduce
  39:285 reduce
  93:0 reduce
  39:286 reduce
  31:305 shift
  0:269,target 6
  0:270,target 7
  39:287 reduce
  31:306 reduce
  9:315,target 52
  31:297 reduce
  2:318 goto
  39:277,target 83
  31:298 reduce
  26:0 reduce
  2:321 goto
  26:321,target 73
  75:257 reduce
  75:258 reduce
  47:0 reduce
  36:285,target 82
  36:262 reduce
  75:260 reduce
  75:259 reduce
  75:261 reduce
  0:288,target 17
  68:0 reduce
  30:261,target 64
  75:261,target 67
  90:0 reduce
  89:0 reduce
  41:279,target 89
  35:260,target 79
  35:259,target 78
  6:271,target 47
  26:Y,target 37
  39:275,target 83
  23:0 reduce
  37:287,target 84
  36:275 reduce
  94:0,target 41
  75:273 reduce
  44:0 reduce
  5:0,target 30
  86:0,target 71
  36:277 reduce
  15:268,target 5
  78:0,target 57
  71:0,target 86
  65:0 reduce
  36:279 reduce
  63:0,target 19
  30:258,target 64
  86:0 reduce
  75:258,target 67
  47:0,target 18
  36:262,target 82
  15:268 shift
  40:0,target 24
  39:0,target 83
  15:270 shift
  41:277,target 88
  36:285 reduce
  0:265,target 4
  36:286 reduce
  35:257,target 76
  30:298,target 64
  24:0,target 22
  75:298,target 67
  36:287 reduce
  4:266 shift
  16:0,target 23
  19:0 reduce
  20:0 reduce
  15:274 shift
  37:285,target 84
  33:257 reduce
  4:268 shift
  35:297,target 82
  33:258 reduce
  2:X,target 36
  33:260 reduce
  33:259 reduce
  33:261 reduce
  62:0 reduce
  31:261,target 66
  75:302 reduce
  0:284,target 16
  4:274 shift
  83:0 reduce
  75:306 reduce
  75:297 reduce
  41:275,target 87
  0:263,target 2
  75:298 reduce
  38:287,target 81
  30:306,target 64
  1:317,target 35
  16:0 reduce
  75:306,target 67
  26:X shift
  26:Y shift
  37:0 reduce
  33:273 reduce
  26:y,target 39
  58:0 reduce
  42:268 shift
  31:258,target 66
  15:295 shift
  37:262,target 84
  0:282,target 14
  80:0 reduce
  79:0 reduce
  15:307 shift
  4:307,target 45
  31:298,target 66
  15:299 shift
  12:268 shift
  15:311 goto
  9:0,target 49
  13:0 reduce
  91:0,target 73
  38:285,target 81
  83:0,target 61
  4:307 shift
  34:0 reduce
  67:0,target 37
  0:311,target 29
  60:0,target 48
  59:0,target 47
  32:261,target 65
  30:257 reduce
  52:0,target 6
  30:273,target 64
  30:258 reduce
  75:273,target 67
  44:0,target 42
  33:302 reduce
  30:260 reduce
  30:259 reduce
  4:313 goto
  21:268 shift
  36:0,target 82
  30:261 reduce
  76:0 reduce
  28:0,target 0
  0:279,target 12
  2:x,target 38
  21:0,target 36
  33:306 reduce
  13:0,target 11
  39:287,target 83
  33:297 reduce
  31:306,target 66
  8:0 reduce
  9:267 shift
  21:274 shift
  33:298 reduce
  9:268 shift
  10:0 reduce
  30:302,target 64
  1:280 shift
  75:302,target 67
  4:274,target 44
  38:262 reduce
  1:282 shift
  52:0 reduce
  32:258,target 65
  30:273 reduce
  26:309,target 71
  42:307 shift
  38:262,target 81
  26:x shift
  1:282,target 31
  26:y shift
  73:0 reduce
  32:298,target 65
  1:289 shift
  94:0 reduce
  5:0 reduce
  15:299,target 23
}

array set plotsend::rules {
  9,l 310
  11,l 310
  32,l 311
  53,l 316
  74,l 318
  6,l 310
  28,l 310
  50,l 315
  49,l 315
  71,l 318
  3,l 310
  25,l 310
  46,l 314
  67,l 317
  0,l 323
  22,l 310
  43,l 313
  64,l 317
  85,l 322
  18,l 310
  40,l 313
  39,l 312
  61,l 316
  82,l 321
  15,l 310
  36,l 312
  57,l 316
  78,l 320
  12,l 310
  33,l 311
  54,l 316
  75,l 319
  7,l 310
  29,l 311
  30,l 311
  51,l 315
  72,l 318
  4,l 310
  26,l 310
  47,l 314
  68,l 318
  1,l 310
  23,l 310
  44,l 313
  65,l 317
  86,l 322
  19,l 310
  20,l 310
  41,l 313
  62,l 316
  83,l 321
  16,l 310
  37,l 312
  58,l 316
  80,l 320
  79,l 320
  13,l 310
  34,l 311
  55,l 316
  76,l 319
  8,l 310
  10,l 310
  31,l 311
  52,l 315
  73,l 318
  5,l 310
  27,l 310
  48,l 314
  70,l 318
  69,l 318
  2,l 310
  24,l 310
  45,l 314
  66,l 317
  21,l 310
  42,l 313
  63,l 317
  84,l 321
  17,l 310
  38,l 312
  60,l 316
  59,l 316
  81,l 321
  14,l 310
  35,l 311
  56,l 316
  77,l 320
}

array set plotsend::rules {
  63,dc 1
  12,dc 3
  77,dc 0
  26,dc 2
  3,dc 2
  41,dc 2
  55,dc 2
  70,dc 2
  69,dc 2
  18,dc 2
  84,dc 1
  33,dc 1
  9,dc 2
  47,dc 1
  62,dc 2
  11,dc 1
  76,dc 1
  25,dc 2
  2,dc 1
  40,dc 2
  39,dc 1
  54,dc 2
  68,dc 2
  17,dc 2
  83,dc 1
  32,dc 1
  8,dc 1
  46,dc 1
  61,dc 2
  10,dc 2
  75,dc 0
  24,dc 2
  1,dc 0
  38,dc 1
  53,dc 2
  67,dc 2
  16,dc 1
  82,dc 1
  31,dc 1
  7,dc 1
  45,dc 0
  60,dc 2
  59,dc 2
  74,dc 2
  23,dc 1
  0,dc 1
  37,dc 1
  52,dc 1
  66,dc 1
  15,dc 2
  81,dc 1
  29,dc 1
  30,dc 1
  6,dc 2
  44,dc 1
  58,dc 2
  73,dc 2
  22,dc 1
  36,dc 0
  51,dc 1
  65,dc 1
  14,dc 1
  80,dc 1
  79,dc 1
  28,dc 1
  5,dc 2
  43,dc 1
  57,dc 2
  72,dc 2
  21,dc 1
  86,dc 1
  35,dc 2
  50,dc 1
  49,dc 0
  64,dc 1
  13,dc 1
  78,dc 1
  27,dc 1
  4,dc 2
  42,dc 1
  56,dc 2
  71,dc 2
  19,dc 2
  20,dc 1
  85,dc 1
  34,dc 2
  48,dc 1
}

array set plotsend::rules {
  41,line 125
  7,line 75
  37,line 119
  4,line 70
  34,line 114
  1,line 67
  31,line 111
  86,line 191
  27,line 105
  83,line 186
  24,line 100
  80,line 181
  79,line 180
  21,line 97
  76,line 174
  17,line 90
  73,line 169
  14,line 85
  70,line 166
  69,line 165
  11,line 82
  66,line 160
  63,line 157
  60,line 152
  59,line 151
  56,line 147
  53,line 144
  50,line 138
  49,line 137
  46,line 132
  43,line 127
  9,line 80
  40,line 124
  39,line 121
  6,line 72
  36,line 118
  3,line 69
  33,line 113
  29,line 109
  30,line 110
  85,line 190
  26,line 104
  82,line 185
  23,line 99
  78,line 179
  19,line 94
  20,line 96
  75,line 173
  16,line 87
  72,line 168
  13,line 84
  68,line 164
  10,line 81
  65,line 159
  62,line 154
  58,line 150
  55,line 146
  52,line 140
  48,line 134
  45,line 131
  42,line 126
  8,line 78
  38,line 120
  5,line 71
  35,line 115
  2,line 68
  32,line 112
  28,line 106
  84,line 187
  25,line 101
  81,line 184
  22,line 98
  77,line 177
  18,line 92
  74,line 170
  15,line 86
  71,line 167
  12,line 83
  67,line 161
  64,line 158
  61,line 153
  57,line 149
  54,line 145
  51,line 139
  47,line 133
  44,line 128
}

array set plotsend::lr1_table {
  35 {{53 0 1} {54 0 1} {55 0 1} {56 0 1} {57 0 1} {58 0 1} {59 0 1} {60 0 1} {61 0 1} {62 0 1}}
  66,trans {}
  36 {{82 {262 275 277 279 285 286 287} 1}}
  85,trans {}
  37 {{84 {262 275 277 279 285 286 287} 1}}
  38 {{81 {262 275 277 279 285 286 287} 1}}
  40 {{24 0 2}}
  39 {{83 {262 275 277 279 285 286 287} 1}}
  41 {{68 0 1} {69 0 1} {70 0 1} {71 0 1} {72 0 1} {73 0 1} {74 0 1}}
  42 {{40 0 1} {41 0 1}}
  43 {{43 0 1}}
  44 {{42 0 1}}
  45 {{44 0 1}}
  46 {{4 0 2}}
  47 {{18 0 2}}
  48 {{9 0 2}}
  49 {{50 0 1}}
  50 {{51 0 1}}
  27,trans {}
  51 {{52 0 1}}
  46,trans {}
  52 {{6 0 2}}
  65,trans {}
  53 {{34 0 2}}
  84,trans {}
  54 {{15 0 2}}
  55 {{12 0 2}}
  56 {{76 0 1}}
  57 {{25 0 2}}
  58 {{3 0 2}}
  59 {{47 0 1}}
  60 {{48 0 1}}
  61 {{46 0 1}}
  62 {{5 0 2}}
  63 {{19 0 2}}
  64 {{10 0 2}}
  65 {{38 0 1}}
  66 {{39 0 1}}
  26,trans {{X 69} {Y 70} {x 71} {y 72} {282 73} {308 74} {309 75} {320 76} {321 77} {322 78}}
  67 {{37 0 1}}
  45,trans {}
  68 {{35 0 2}}
  64,trans {}
  69 {{82 0 1}}
  70 {{84 0 1}}
  83,trans {}
  71 {{81 0 1}}
  72 {{83 0 1}}
  73 {{80 0 1}}
  74 {{85 0 1}}
  75 {{86 0 1}}
  76 {{26 0 2}}
  77 {{78 0 1}}
  78 {{79 0 1}}
  79 {{67 {257 258 259 260 261 273 297 298 302 306} 2}}
  80 {{53 0 2}}
  81 {{55 0 2}}
  82 {{57 0 2}}
  25,trans {}
  83 {{58 0 2}}
  84 {{56 0 2}}
  44,trans {}
  85 {{54 0 2}}
  63,trans {}
  86 {{59 0 2}}
  82,trans {}
  87 {{61 0 2}}
  0 {{0 0 0} {1 0 0} {2 0 0} {3 0 0} {4 0 0} {5 0 0} {6 0 0} {7 0 0} {8 0 0} {9 0 0} {10 0 0} {11 0 0} {12 0 0} {13 0 0} {14 0 0} {15 0 0} {16 0 0} {17 0 0} {18 0 0} {19 0 0} {20 0 0} {21 0 0} {22 0 0} {23 0 0} {24 0 0} {25 0 0} {26 0 0} {27 0 0} {28 0 0} {29 0 0} {30 0 0} {31 0 0} {32 0 0} {33 0 0} {34 0 0} {35 0 0}}
  88 {{62 0 2}}
  1 {{17 0 1} {53 0 0} {54 0 0} {55 0 0} {56 0 0} {57 0 0} {58 0 0} {59 0 0} {60 0 0} {61 0 0} {62 0 0} {63 {257 258 259 260 261 273 297 298 302 306} 0} {64 {257 258 259 260 261 273 297 298 302 306} 0} {65 {257 258 259 260 261 273 297 298 302 306} 0} {66 {257 258 259 260 261 273 297 298 302 306} 0} {67 {257 258 259 260 261 273 297 298 302 306} 0}}
  89 {{60 0 2}}
  90 {{71 0 2}}
  2 {{24 0 1} {68 0 0} {69 0 0} {70 0 0} {71 0 0} {72 0 0} {73 0 0} {74 0 0} {81 {262 275 277 279 285 286 287} 0} {82 {262 275 277 279 285 286 287} 0} {83 {262 275 277 279 285 286 287} 0} {84 {262 275 277 279 285 286 287} 0}}
  91 {{70 0 2}}
  3 {{14 0 1}}
  92 {{74 0 2}}
  4 {{4 0 1} {40 0 0} {41 0 0} {42 0 0} {43 0 0} {44 0 0}}
  93 {{68 0 2}}
  5 {{30 0 1}}
  94 {{69 0 2}}
  6 {{7 0 1} {9 0 1} {18 0 1}}
  95 {{73 0 2}}
  7 {{32 0 1}}
  96 {{72 0 2}}
  8 {{21 0 1}}
  97 {{40 0 2}}
  9 {{6 0 1} {49 0 0} {50 0 0} {51 0 0} {52 0 0}}
  98 {{41 0 2}}
  24,trans {}
  99 {{12 0 3}}
  43,trans {}
  62,trans {}
  81,trans {}
  99,trans {}
  23,trans {}
  42,trans {{268 97} {307 98}}
  61,trans {}
  79,trans {}
  80,trans {}
  98,trans {}
  9,trans {{267 49} {268 50} {307 51} {315 52}}
  22,trans {}
  41,trans {{262 90} {275 91} {277 92} {279 93} {285 94} {286 95} {287 96}}
  59,trans {}
  60,trans {}
  78,trans {}
  97,trans {}
  8,trans {}
  21,trans {{268 65} {274 66} {303 67} {312 68}}
  39,trans {}
  40,trans {}
  58,trans {}
  77,trans {}
  96,trans {}
  7,trans {}
  19,trans {{268 59} {274 60} {303 61} {314 62}}
  20,trans {{271 63} {278 64}}
  38,trans {}
  57,trans {}
  76,trans {}
  95,trans {}
  6,trans {{271 47} {278 48}}
  18,trans {}
  37,trans {}
  56,trans {}
  75,trans {}
  94,trans {}
  5,trans {}
  17,trans {}
  36,trans {}
  55,trans {{292 99}}
  74,trans {}
  93,trans {}
  4,trans {{266 42} {268 43} {274 44} {307 45} {313 46}}
  16,trans {}
  35,trans {{257 80} {258 81} {259 82} {260 83} {261 84} {273 85} {297 86} {298 87} {302 88} {306 89}}
  54,trans {}
  73,trans {}
  92,trans {}
  3,trans {}
  15,trans {{268 5} {270 7} {274 10} {295 21} {299 23} {307 27} {311 58}}
  34,trans {}
  53,trans {}
  72,trans {}
  2,trans {{X 36} {Y 37} {x 38} {y 39} {318 40} {321 41}}
  91,trans {}
  14,trans {{291 56} {319 57}}
  33,trans {}
  52,trans {}
  71,trans {}
  1,trans {{280 30} {282 31} {289 32} {305 33} {316 34} {317 35}}
  89,trans {}
  90,trans {}
  13,trans {{301 55}}
  32,trans {}
  51,trans {}
  69,trans {}
  70,trans {}
  0,trans {{257 1} {263 2} {264 3} {265 4} {268 5} {269 6} {270 7} {271 8} {272 9} {274 10} {276 11} {279 12} {281 13} {282 14} {283 15} {284 16} {288 17} {290 18} {293 19} {294 20} {295 21} {296 22} {299 23} {300 24} {304 25} {305 26} {307 27} {310 28} {311 29}}
  88,trans {}
  12,trans {{268 54}}
  31,trans {{305 79}}
  49,trans {}
  50,trans {}
  68,trans {}
  87,trans {}
  10 {{33 0 1} {34 0 1}}
  11 {{13 0 1}}
  12 {{15 0 1}}
  13 {{11 0 1} {12 0 1}}
  14 {{25 0 1} {75 0 0} {76 0 0}}
  15 {{3 0 1} {29 0 0} {30 0 0} {31 0 0} {32 0 0} {33 0 0} {34 0 0} {35 0 0}}
  11,trans {}
  16 {{23 0 1}}
  29,trans {}
  30,trans {}
  17 {{8 0 1}}
  48,trans {}
  18 {{28 0 1}}
  67,trans {}
  20 {{10 0 1} {19 0 1} {20 0 1}}
  19 {{5 0 1} {45 0 0} {46 0 0} {47 0 0} {48 0 0}}
  86,trans {}
  21 {{35 0 1} {36 0 0} {37 0 0} {38 0 0} {39 0 0}}
  22 {{27 0 1}}
  23 {{29 0 1}}
  24 {{22 0 1}}
  25 {{16 0 1}}
  26 {{26 0 1} {77 0 0} {78 0 0} {79 0 0} {80 0 0} {81 0 0} {82 0 0} {83 0 0} {84 0 0} {85 0 0} {86 0 0}}
  27 {{31 0 1}}
  28 {{0 0 1}}
  30 {{64 {257 258 259 260 261 273 297 298 302 306} 1}}
  29 {{2 0 1}}
  31 {{66 {257 258 259 260 261 273 297 298 302 306} 1} {67 {257 258 259 260 261 273 297 298 302 306} 1}}
  32 {{65 {257 258 259 260 261 273 297 298 302 306} 1}}
  10,trans {{268 53}}
  33 {{63 {257 258 259 260 261 273 297 298 302 306} 1}}
  28,trans {}
  34 {{17 0 2}}
  47,trans {}
}

array set plotsend::token_id_table {
  286 MAX_
  286,t 0
  287 MIN_
  292,line 45
  302,line 55
  288 MODE_
  317,t 1
  265,title BAR
  289 NUMBERS_
  290 NAME_
  300 STATISTICS_
  284,title LIST
  291 POSITION_
  301 STRIP_
  313,title {}
  292 SCALE_
  302 STYLE_
  288,line 41
  293 SCATTER_
  303 SYMBOL_
  294 SELECT_
  304 THEME_
  305 TITLE_
  295 SHAPE_
  306 WEIGHT_
  296 SHOW_
  307 WIDTH_
  262,t 0
  297 SIZE_
  308 XAXIS_
  285,line 38
  298 SLANT_
  310 plotsend
  309 YAXIS_
  299 SMOOTH_
  311 line
  283,t 0
  312 lineshape
  313 bar
  314,t 1
  314 scatter
  282,line 35
  315 errorr
  316 fontt
  264,title BACKGROUND
  317 fontType
  283,title LINE
  318 axis
  312,title {}
  320 title
  319 legend
  278,line 31
  321 xy
  error,line 65
  322 xyaxis
  258,t 0
  323 start'
  275,line 28
  279,t 0
  280,t 0
  311,t 1
  272,line 25
  263,title AXIS
  282,title LEGEND
  311,title {}
  268,line 21
  276,t 0
  Y,t 0
  265,line 18
  307,t 0
  297,t 0
  262,line 15
  0,t 0
  0 {$}
  262,title AUTO
  281,title LAYOUT
  310,title {}
  error,t 0
  309,title YAXIS
  299,title SMOOTH
  258,line 8
  273,t 0
  294,t 0
  304,t 0
  321,line 183
  317,line 156
  261,title FONTWEIGHT
  279,title GRID
  280,title LABELS
  308,title XAXIS
  269,t 0
  270,t 0
  298,title SLANT
  314,line 130
  291,t 0
  301,t 0
  322,t 1
  y,t 0
  311,line 108
  307,line 60
  266,t 0
  260,title FONTSTYLE
  259,title FONTSLANT
  297,line 50
  278,title GRAPH
  307,title WIDTH
  297,title SIZE
  287,t 0
  294,line 47
  304,line 57
  318,t 1
  X X
  error,title {}
  291,line 44
  301,line 54
  Y Y
  263,t 0
  258,title FONTSIZE
  287,line 40
  277,title FORMAT
  284,t 0
  306,title WEIGHT
  296,title SHOW
  315,t 1
  284,line 37
  281,line 34
  260,t 0
  259,t 0
  281,t 0
  257,title FONT
  277,line 30
  276,title FOREGROUND
  312,t 1
  305,title TITLE
  295,title SHAPE
  274,line 27
  Y,line 186
  271,line 24
  x x
  277,t 0
  y y
  308,t 0
  267,line 20
  298,t 0
  275,title FLIP
  294,title SELECT
  304,title THEME
  323,title {}
  264,line 17
  261,line 11
  274,t 0
  305,t 0
  295,t 0
  257,line 7
  274,title FILL
  323,line 192
  293,title SCATTER
  303,title SYMBOL
  322,title {}
  320,line 176
  319,line 172
  error error
  271,t 0
  y,line 185
  292,t 0
  302,t 0
  316,line 142
  323,t 1
  273,title FAMILY
  313,line 123
  292,title SCALE
  302,title STYLE
  321,title {}
  267,t 0
  310,line 66
  309,line 62
  299,line 52
  288,t 0
  320,t 1
  319,t 1
  306,line 59
  296,line 49
  272,title ERROR
  291,title POSITION
  293,line 46
  301,title STRIP
  303,line 56
  320,title {}
  319,title {}
  264,t 0
  Y,title {}
  285,t 0
  289,line 42
  290,line 43
  300,line 53
  316,t 1
  286,line 39
  271,title DATASET
  261,t 0
  283,line 36
  289,title NUMBERS
  290,title NAME
  300,title STATISTICS
  318,title {}
  282,t 0
  X,title {}
  279,line 32
  280,line 33
  313,t 1
  276,line 29
  257,t 0
  269,title CURRENT
  270,title DASH
  273,line 26
  288,title MODE
  317,title {}
  278,t 0
  X,line 184
  310,t 1
  309,t 0
  299,t 0
  269,line 22
  270,line 23
  y,title {}
  266,line 19
  268,title COLOR
  275,t 0
  263,line 16
  287,title MIN
  X,t 0
  316,title {}
  306,t 0
  296,t 0
  260,line 10
  259,line 9
  x,title {}
  322,line 189
  272,t 0
  267,title CAP
  257 FONT_
  286,title MAX
  293,t 0
  303,t 0
  315,title {}
  258 FONTSIZE_
  318,line 163
  260 FONTSTYLE_
  259 FONTSLANT_
  261 FONTWEIGHT_
  262 AUTO_
  263 AXIS_
  x,line 183
  264 BACKGROUND_
  315,line 136
  265 BAR_
  266 BORDER_
  267 CAP_
  268,t 0
  268 COLOR_
  269 CURRENT_
  270 DASH_
  312,line 117
  271 DATASET_
  272 ERROR_
  289,t 0
  290,t 0
  300,t 0
  266,title BORDER
  273 FAMILY_
  274 FILL_
  285,title LOG
  321,t 1
  314,title {}
  275 FLIP_
  308,line 61
  276 FOREGROUND_
  298,line 51
  x,t 0
  277 FORMAT_
  278 GRAPH_
  279 GRID_
  280 LABELS_
  281 LAYOUT_
  305,line 58
  282 LEGEND_
  295,line 48
  265,t 0
  283 LINE_
  284 LIST_
  285 LOG_
}

proc plotsend::yyparse {} {
    variable yylval
    variable table
    variable rules
    variable token
    variable yycnt
    variable lr1_table
    variable token_id_table
    variable yyerr
    variable save_state

    set yycnt 0
    set state_stack {0}
    set value_stack {{}}
    set token ""
    set accepted 0
    set yyerr 0
    set save_state 0

    while {$accepted == 0} {
        set state [lindex $state_stack end]
        if {$token == ""} {
            set yylval ""
            set token [yylex]
            set buflval $yylval
	    if {$token>0} {
	        incr yycnt
            }
        }
        if {![info exists table($state:$token)] || $yyerr} {
	    if {!$yyerr} {
	        set save_state $state
	    }
            # pop off states until error token accepted
            while {[llength $state_stack] > 0 && \
                       ![info exists table($state:error)]} {
                set state_stack [lrange $state_stack 0 end-1]
                set value_stack [lrange $value_stack 0 \
                                       [expr {[llength $state_stack] - 1}]]
                set state [lindex $state_stack end]
            }
            if {[llength $state_stack] == 0} {
 
	        set rr { }
                if {[info exists lr1_table($save_state,trans)] && [llength $lr1_table($save_state,trans)] >= 1} {
                    foreach trans $lr1_table($save_state,trans) {
                        foreach {tok_id nextstate} $trans {
			    set ss $token_id_table($tok_id,title)
			    if {$ss != {}} {
			        append rr "$ss, "
                            }
                        }
                    }
                }
		set rr [string trimleft $rr { }]
		set rr [string trimright $rr {, }]
                yyerror "parse error, expecting: $rr"


                return 1
            }
            lappend state_stack [set state $table($state:error,target)]
            lappend value_stack {}
            # consume tokens until it finds an acceptable one
            while {![info exists table($state:$token)]} {
                if {$token == 0} {
                    yyerror "end of file while recovering from error"
                    return 1
                }
                set yylval {}
                set token [yylex]
                set buflval $yylval
            }
            continue
        }
        switch -- $table($state:$token) {
            shift {
                lappend state_stack $table($state:$token,target)
                lappend value_stack $buflval
                set token ""
            }
            reduce {
                set rule $table($state:$token,target)
                set ll $rules($rule,l)
                if {[info exists rules($rule,e)]} {
                    set dc $rules($rule,e)
                } else {
                    set dc $rules($rule,dc)
                }
                set stackpointer [expr {[llength $state_stack]-$dc}]
                setupvalues $value_stack $stackpointer $dc
                set _ $1
                set yylval [lindex $value_stack end]
                switch -- $rule {
                    1 { ProcessSendCmdGet iap plots }
                    7 { PlotSendCmdRef }
                    8 { ProcessSendCmdCVARGet mode }
                    9 { ProcessSendCmdCVARGet graph,current }
                    10 { ProcessSendCmdCVARGet graph,current }
                    11 { ProcessSendCmdCVARGet canvas,layout }
                    12 { ProcessSendCmdCVARGet canvas,layout,strip,scale }
                    13 { ProcessSendCmdCVARGet canvas,foreground }
                    14 { ProcessSendCmdCVARGet canvas,background }
                    15 { ProcessSendCmdCVARGet canvas,grid,color }
                    16 { ProcessSendCmdCVARGetYesNo canvas,theme }
                    18 { ProcessSendCmdCVARGet graph,ds,current }
                    19 { ProcessSendCmdCVARGet graph,ds,current }
                    20 { ProcessSendCmdCVARGet graph,ds,current }
                    21 { ProcessSendCmdCVARGet graph,ds,current }
                    22 { ProcessSendCmdCVAR PlotStatsGenerate }
                    23 { ProcessSendCmdCVAR PlotListGenerate }
                    27 { ProcessSendCmdCVARGetYesNo graph,ds,show }
                    28 { ProcessSendCmdCVARGet graph,ds,name }
                    29 { ProcessSendCmdCVARGet graph,ds,line,smooth }
                    30 { ProcessSendCmdCVARGet graph,ds,line,color }
                    31 { ProcessSendCmdCVARGet graph,ds,line,width }
                    32 { ProcessSendCmdCVARGetYesNo graph,ds,line,dash }
                    33 { ProcessSendCmdCVARGetYesNo graph,ds,line,fill }
                    34 { ProcessSendCmdCVARGet graph,ds,line,fill,color }
                    36 { ProcessSendCmdCVARGet graph,ds,line,shape,symbol }
                    37 { ProcessSendCmdCVARGet graph,ds,line,shape,symbol }
                    38 { ProcessSendCmdCVARGet graph,ds,line,shape,color }
                    39 { ProcessSendCmdCVARGetYesNo graph,ds,line,shape,fill }
                    40 { ProcessSendCmdCVARGet graph,ds,bar,border,color }
                    41 { ProcessSendCmdCVARGet graph,ds,bar,border,width }
                    42 { ProcessSendCmdCVARGetYesNo graph,ds,bar,fill }
                    43 { ProcessSendCmdCVARGet graph,ds,bar,color }
                    44 { ProcessSendCmdCVARGet graph,ds,bar,width }
                    45 { ProcessSendCmdCVARGet graph,ds,scatter,symbol }
                    46 { ProcessSendCmdCVARGet graph,ds,scatter,symbol }
                    47 { ProcessSendCmdCVARGet graph,ds,scatter,color }
                    48 { ProcessSendCmdCVARGetYesNo graph,ds,scatter,fill }
                    49 { ProcessSendCmdCVARGetYesNo graph,ds,error }
                    50 { ProcessSendCmdCVARGetYesNo graph,ds,error,cap }
                    51 { ProcessSendCmdCVARGet graph,ds,error,color }
                    52 { ProcessSendCmdCVARGet graph,ds,error,width }
                    53 { ProcessSendCmdCVARGet "$1,family" }
                    54 { ProcessSendCmdCVARGet "$1,family" }
                    55 { ProcessSendCmdCVARGet "$1,size" }
                    56 { ProcessSendCmdCVARGet "$1,weight" }
                    57 { ProcessSendCmdCVARGet "$1,slant" }
                    58 { ProcessSendCmdCVARGet "$1,weight" }
                    59 { ProcessSendCmdCVARGet "$1,size" }
                    60 { ProcessSendCmdCVARGet "$1,weight" }
                    61 { ProcessSendCmdCVARGet "$1,slant" }
                    62 { ProcessSendCmdCVARGet "$1,weight" }
                    63 { set _ canvas,title }
                    64 { set _ canvas,axis,title }
                    65 { set _ canvas,axis,font }
                    66 { set _ canvas,legend,font }
                    67 { set _ canvas,legend,title }
                    68 { ProcessSendCmdCVARGetYesNo "graph,axis,$1,grid" }
                    69 { ProcessSendCmdCVARGetYesNo "graph,axis,$1,log" }
                    70 { ProcessSendCmdCVARGetYesNo "graph,axis,$1,flip" }
                    71 { ProcessSendCmdCVARGetYesNo "graph,axis,$1,auto" }
                    72 { ProcessSendCmdCVARGet "graph,axis,$1,min" }
                    73 { ProcessSendCmdCVARGet "graph,axis,$1,max" }
                    74 { ProcessSendCmdCVARGet "graph,axis,$1,format" }
                    75 { ProcessSendCmdCVARGetYesNo graph,legend }
                    76 { ProcessSendCmdCVARGet graph,legend,position }
                    77 { ProcessSendCmdCVARGet graph,title }
                    78 { ProcessSendCmdCVARGet "graph,axis,$1,title" }
                    79 { ProcessSendCmdCVARGet "graph,axis,$1,title" }
                    80 { ProcessSendCmdCVARGet graph,legend,title }
                    81 { set _ x }
                    82 { set _ x }
                    83 { set _ y }
                    84 { set _ y }
                    85 { set _ x }
                    86 { set _ y }
                }
                unsetupvalues $dc
                # pop off tokens from the stack if normal rule
                if {![info exists rules($rule,e)]} {
                    incr stackpointer -1
                    set state_stack [lrange $state_stack 0 $stackpointer]
                    set value_stack [lrange $value_stack 0 $stackpointer]
                }
                # now do the goto transition
                lappend state_stack $table([lindex $state_stack end]:$ll,target)
                lappend value_stack $_
            }
            accept {
                set accepted 1
            }
            goto -
            default {
                puts stderr "Internal parser error: illegal command $table($state:$token)"
                return 2
            }
        }
    }
    return 0
}

######
# end autogenerated taccle functions
######

proc plotsend::yyerror {msg} {
     variable yycnt
     variable yy_current_buffer
     variable index_

     ParserError $msg $yycnt $yy_current_buffer $index_
}
