package provide DS9 1.0

######
# Begin autogenerated taccle (version 1.3) routines.
# Although taccle itself is protected by the GNU Public License (GPL)
# all user-supplied functions are protected by their respective
# author's license.  See http://mini.net/tcl/taccle for other details.
######

namespace eval prism {
    variable yylval {}
    variable table
    variable rules
    variable token {}
    variable yycnt 0
    variable yyerr 0
    variable save_state 0

    namespace export yylex
}

proc prism::YYABORT {} {
    return -code return 1
}

proc prism::YYACCEPT {} {
    return -code return 0
}

proc prism::YYERROR {} {
    variable yyerr
    set yyerr 1
}

proc prism::yyclearin {} {
    variable token
    variable yycnt
    set token {}
    incr yycnt -1
}

proc prism::yyerror {s} {
    puts stderr $s
}

proc prism::setupvalues {stack pointer numsyms} {
    upvar 1 1 y
    set y {}
    for {set i 1} {$i <= $numsyms} {incr i} {
        upvar 1 $i y
        set y [lindex $stack $pointer]
        incr pointer
    }
}

proc prism::unsetupvalues {numsyms} {
    for {set i 1} {$i <= $numsyms} {incr i} {
        upvar 1 $i y
        unset y
    }
}

array set prism::table {
  40:285,target 36
  39:285,target 42
  7:264,target 20
  47:264 reduce
  38:y,target 40
  58:Y,target 35
  37:X reduce
  43:Y,target 37
  40:264,target 36
  39:264,target 42
  37:Y reduce
  37:Z reduce
  35:Y,target 41
  9:300 goto
  17:264 shift
  58:X shift
  35:288,target 41
  58:Y shift
  70:0 reduce
  58:Z shift
  56:264 reduce
  6:262 shift
  28:264,target 52
  0:275,target 12
  74:264,target 32
  38:285 reduce
  2:0 reduce
  6:264 shift
  9:296 goto
  63:285,target 68
  38:286 reduce
  72:0,target 31
  38:287 reduce
  26:264 reduce
  65:262 reduce
  64:0,target 5
  38:288 reduce
  9:299 goto
  17:z,target 39
  65:263 reduce
  56:0,target 16
  11:261,target 48
  65:264 reduce
  37:Z,target 38
  34:X reduce
  9:300,target 43
  17:264,target 40
  63:264,target 40
  41:0,target 18
  34:Y reduce
  40:262,target 36
  39:262,target 42
  34:Z reduce
  33:0,target 24
  35:262 reduce
  0:294,target 20
  35:286,target 41
  66:0 reduce
  35:264 reduce
  10:0,target 15
  52:264,target 9
  74:264 reduce
  0:273,target 10
  69:286,target 71
  17:300 goto
  17:x,target 37
  21:0 reduce
  44:264 reduce
  41:264,target 18
  11:258,target 45
  37:X,target 38
  36:288,target 43
  0:292,target 19
  58:y,target 38
  6:295,target 32
  37:x reduce
  30:264,target 25
  29:264,target 60
  17:297 goto
  43:y,target 37
  37:y reduce
  53:264 reduce
  37:z reduce
  35:y,target 41
  17:299 goto
  63:Y,target 35
  58:x shift
  0:271,target 8
  8:262,target 33
  58:y shift
  6:295 goto
  58:z shift
  35:285 reduce
  3:264 reduce
  40:Y,target 36
  39:Y,target 42
  35:286 reduce
  18:264,target 22
  35:287 reduce
  23:264 reduce
  35:288 reduce
  62:264 reduce
  36:286,target 43
  60:0 reduce
  3:0,target 12
  69:X shift
  53:264,target 33
  37:z,target 38
  34:x reduce
  17:299,target 58
  69:Y shift
  63:299,target 69
  34:y reduce
  9:264,target 40
  69:Z shift
  68:0,target 29
  34:z reduce
  32:264 reduce
  14:282 shift
  61:0,target 27
  14:283 shift
  53:0,target 33
  0:268,target 5
  14:284 shift
  71:264 reduce
  34:Z,target 39
  61:291,target 67
  30:0,target 25
  37:288,target 38
  11:257 shift
  41:264 reduce
  11:258 shift
  11:259 shift
  11:260 shift
  56:0 reduce
  43:287,target 37
  31:264,target 26
  11:261 shift
  37:x,target 38
  17:297,target 57
  14:298 goto
  50:264 reduce
  49:264 reduce
  0:266,target 3
  20:264,target 4
  65:264,target 1
  34:X,target 39
  42:262,target 61
  0:264 shift
  63:y,target 38
  37:286,target 38
  32:0 reduce
  0:265 shift
  9:Y,target 35
  0:266 shift
  14:284,target 55
  20:264 reduce
  0:267 shift
  54:264,target 34
  53:0 reduce
  40:y,target 36
  39:y,target 42
  0:268 shift
  63:X shift
  58:264 shift
  43:285,target 37
  0:270 shift
  0:269 shift
  63:Y shift
  0:271 shift
  8:262 shift
  74:0 reduce
  63:Z shift
  0:272 shift
  0:273 shift
  36:Y,target 43
  0:274 shift
  43:264,target 37
  28:264 reduce
  0:275 shift
  69:x shift
  67:262 shift
  0:264,target 1
  0:276 shift
  69:y shift
  67:263 shift
  65:262,target 1
  38:288,target 40
  0:277 shift
  9:299,target 42
  17:X shift
  69:z shift
  0:278 shift
  17:Y shift
  0:280 shift
  0:279 shift
  7:0,target 20
  17:Z shift
  38:X reduce
  0:281 shift
  0:0,target 6
  69:Z,target 36
  38:Y reduce
  37:262 reduce
  34:z,target 39
  32:264,target 14
  14:282,target 53
  38:Z reduce
  11:289 shift
  11:290 shift
  65:0,target 1
  37:264 reduce
  11:301 goto
  73:288,target 74
  57:0,target 17
  71:0 reduce
  38:Z,target 40
  11:289,target 49
  11:290,target 50
  21:264,target 19
  66:264,target 2
  3:0 reduce
  43:262,target 37
  18:0,target 22
  0:292 goto
  46:264 reduce
  38:286,target 40
  0:294 goto
  58:300 goto
  35:X reduce
  10:264,target 15
  20:293 goto
  55:264,target 35
  35:Y reduce
  5:261,target 26
  69:X,target 34
  35:Z reduce
  34:x,target 39
  5:257 shift
  16:264 reduce
  5:258 shift
  61:263,target 66
  5:259 shift
  5:260 shift
  9:y,target 38
  55:264 reduce
  38:X,target 40
  0:281,target 18
  5:261 shift
  44:264,target 46
  1:264,target 8
  0:0 reduce
  67:291 goto
  66:262,target 2
  63:x shift
  58:299 goto
  40:288,target 36
  39:288,target 42
  37:285 reduce
  9:X shift
  63:y shift
  37:286 reduce
  9:Y shift
  63:z shift
  37:287 reduce
  9:Z shift
  14:298,target 56
  25:264 reduce
  37:288 reduce
  36:y,target 43
  33:264,target 24
  5:258,target 23
  17:x shift
  34:262 reduce
  17:y shift
  64:0 reduce
  17:z shift
  38:x reduce
  34:287,target 39
  34:264 reduce
  22:264,target 53
  69:z,target 39
  38:y reduce
  0:278,target 15
  17:Y,target 35
  38:z reduce
  40:286,target 36
  39:286,target 42
  38:z,target 40
  43:262 reduce
  18:0 reduce
  70:0,target 28
  58:Z,target 36
  56:264,target 16
  62:0,target 10
  43:264 reduce
  54:0,target 34
  43:Z,target 37
  35:Z,target 41
  61:0 reduce
  31:0,target 26
  45:264,target 47
  35:x reduce
  5:289 shift
  5:290 shift
  13:264 shift
  35:y reduce
  34:285,target 39
  2:264,target 13
  15:0,target 21
  69:x,target 37
  67:262,target 65
  35:z reduce
  0:276,target 13
  5:302 goto
  52:264 reduce
  69:300,target 43
  38:x,target 40
  34:285 reduce
  34:264,target 39
  2:264 reduce
  15:0 reduce
  34:286 reduce
  58:X,target 34
  34:287 reduce
  22:264 reduce
  61:262 shift
  34:288 reduce
  9:x shift
  61:263 shift
  43:X,target 37
  9:y shift
  61:264 reduce
  58:300,target 43
  35:X,target 41
  9:z shift
  20:293,target 59
  73:288 shift
  57:0 reduce
  35:287,target 41
  23:264,target 54
  68:264,target 29
  43:285 reduce
  43:286 reduce
  43:287 reduce
  31:264 reduce
  0:274,target 11
  43:288 reduce
  12:264,target 23
  70:264 reduce
  69:264 shift
  69:287,target 72
  57:264,target 17
  12:0 reduce
  34:262,target 39
  17:y,target 38
  11:259,target 46
  11:260,target 47
  40:262 reduce
  39:262 reduce
  37:Y,target 38
  33:0 reduce
  43:X reduce
  43:Y reduce
  40:264 reduce
  39:264 reduce
  54:0 reduce
  46:264,target 48
  43:Z reduce
  58:z,target 39
  35:285,target 41
  3:264,target 12
  43:z,target 37
  1:0,target 8
  35:z,target 41
  5:302,target 29
  10:264 reduce
  74:0,target 32
  63:Z,target 36
  0:272,target 9
  66:0,target 2
  35:264,target 41
  7:0 reduce
  48:264 reduce
  40:Z,target 36
  39:Z,target 42
  61:291 goto
  30:0 reduce
  11:257,target 44
  40:X reduce
  39:X reduce
  40:Y reduce
  39:Y reduce
  36:287,target 43
  18:264 reduce
  19:0,target 0
  20:0,target 3
  24:264,target 55
  70:264,target 28
  69:264,target 40
  40:Z reduce
  39:Z reduce
  12:0,target 23
  69:286 shift
  69:287 shift
  58:x,target 37
  57:264 reduce
  72:0 reduce
  69:300 goto
  43:x,target 37
  40:285 reduce
  39:285 reduce
  35:x,target 41
  5:289,target 27
  5:290,target 28
  7:264 reduce
  13:264,target 52
  63:X,target 34
  58:264,target 40
  40:286 reduce
  39:286 reduce
  0:270,target 7
  0:269,target 6
  40:287 reduce
  39:287 reduce
  35:262,target 41
  27:264 reduce
  66:262 reduce
  40:288 reduce
  39:288 reduce
  66:263 reduce
  40:X,target 36
  39:X,target 42
  66:264 reduce
  36:X reduce
  47:264,target 49
  36:Y reduce
  69:299 goto
  36:Z reduce
  36:285,target 43
  36:262 reduce
  4:264,target 21
  43:288,target 37
  36:264 reduce
  68:0 reduce
  37:y,target 38
  43:x reduce
  43:y reduce
  36:264,target 43
  43:z reduce
  1:0 reduce
  0:267,target 4
  34:Y,target 39
  45:264 reduce
  63:z,target 39
  37:287,target 38
  9:Z,target 36
  25:264,target 56
  71:264,target 30
  40:z,target 36
  39:z,target 42
  43:286,target 37
  15:264 reduce
  71:0,target 30
  65:0 reduce
  40:x reduce
  39:x reduce
  60:264,target 11
  59:264,target 64
  55:0,target 35
  54:264 reduce
  40:y reduce
  39:y reduce
  69:299,target 73
  40:z reduce
  39:z reduce
  36:Z,target 43
  36:262,target 43
  36:285 reduce
  32:0,target 14
  0:265,target 2
  4:264 shift
  65:263,target 1
  36:286 reduce
  36:287 reduce
  16:0,target 7
  19:0 accept
  20:0 reduce
  24:264 reduce
  48:264,target 50
  36:288 reduce
  67:291,target 70
  63:x,target 37
  58:299,target 63
  37:285,target 38
  9:X,target 34
  63:264 shift
  41:0 reduce
  14:283,target 54
  40:x,target 36
  39:x,target 42
  62:0 reduce
  37:264,target 38
  36:x reduce
  11:301,target 51
  36:y reduce
  33:264 reduce
  36:z reduce
  36:X,target 43
  72:264 reduce
  38:287,target 40
  26:264,target 57
  16:0 reduce
  72:264,target 31
  42:262 shift
  69:Y,target 35
  34:y,target 39
  15:264,target 21
  61:264,target 27
  9:z,target 39
  38:Y,target 40
  37:262,target 38
  12:264 reduce
  63:285 shift
  66:263,target 2
  51:264 shift
  63:300 goto
  50:264,target 45
  49:264,target 44
  38:285,target 40
  1:264 reduce
  2:0,target 13
  6:264,target 31
  9:296,target 41
  36:z,target 43
  21:264 reduce
  5:259,target 24
  5:260,target 25
  60:0,target 11
  60:264 reduce
  59:264 shift
  55:0 reduce
  52:0,target 9
  38:264,target 40
  61:262,target 65
  34:288,target 39
  9:x,target 37
  63:299 goto
  0:280,target 17
  0:279,target 16
  9:264 shift
  17:Z,target 36
  17:300,target 43
  21:0,target 19
  63:300,target 43
  30:264 reduce
  29:264 shift
  40:287,target 36
  39:287,target 42
  27:264,target 51
  10:0 reduce
  68:264 reduce
  6:262,target 30
  36:x,target 43
  31:0 reduce
  38:262 reduce
  5:257,target 22
  16:264,target 7
  62:264,target 10
  52:0 reduce
  38:264 reduce
  38:262,target 40
  34:286,target 39
  69:y,target 38
  67:263,target 66
  0:277,target 14
  17:X,target 34
  51:264,target 62
}

array set prism::rules {
  9,l 294
  11,l 294
  32,l 297
  53,l 302
  6,l 294
  28,l 296
  50,l 301
  49,l 301
  3,l 292
  25,l 295
  46,l 301
  0,l 303
  22,l 294
  43,l 300
  18,l 294
  40,l 300
  39,l 300
  15,l 294
  36,l 299
  57,l 302
  12,l 294
  33,l 298
  54,l 302
  7,l 294
  29,l 297
  30,l 297
  51,l 302
  4,l 293
  26,l 295
  47,l 301
  1,l 291
  23,l 294
  44,l 301
  19,l 294
  20,l 294
  41,l 300
  16,l 294
  37,l 299
  13,l 294
  34,l 298
  55,l 302
  8,l 294
  10,l 294
  31,l 297
  52,l 302
  5,l 292
  27,l 296
  48,l 301
  2,l 291
  24,l 294
  45,l 301
  21,l 294
  42,l 300
  17,l 294
  38,l 300
  14,l 294
  35,l 298
  56,l 302
}

array set prism::rules {
  12,dc 1
  26,dc 1
  3,dc 1
  41,dc 1
  55,dc 1
  18,dc 2
  33,dc 1
  9,dc 2
  47,dc 1
  11,dc 3
  25,dc 1
  2,dc 1
  40,dc 1
  39,dc 1
  54,dc 1
  17,dc 2
  32,dc 5
  8,dc 1
  46,dc 1
  10,dc 3
  24,dc 2
  1,dc 1
  38,dc 1
  53,dc 1
  16,dc 2
  31,dc 4
  7,dc 1
  45,dc 1
  23,dc 1
  0,dc 1
  37,dc 1
  52,dc 1
  15,dc 1
  29,dc 3
  30,dc 4
  6,dc 0
  44,dc 1
  22,dc 1
  36,dc 1
  51,dc 1
  14,dc 2
  28,dc 4
  5,dc 3
  43,dc 1
  57,dc 1
  21,dc 1
  35,dc 1
  50,dc 1
  49,dc 1
  13,dc 1
  27,dc 2
  4,dc 0
  42,dc 1
  56,dc 1
  19,dc 2
  20,dc 1
  34,dc 1
  48,dc 1
}

array set prism::rules {
  41,line 113
  7,line 65
  37,line 107
  4,line 60
  34,line 102
  1,line 56
  31,line 98
  27,line 92
  24,line 85
  21,line 82
  17,line 77
  14,line 74
  11,line 71
  56,line 132
  53,line 129
  50,line 124
  49,line 123
  46,line 120
  43,line 115
  9,line 68
  40,line 112
  39,line 111
  6,line 64
  36,line 106
  3,line 60
  33,line 101
  4,e 1
  29,line 96
  30,line 97
  26,line 89
  23,line 84
  19,line 80
  20,line 81
  16,line 76
  13,line 73
  10,line 69
  55,line 131
  52,line 128
  48,line 122
  45,line 119
  42,line 114
  8,line 66
  38,line 110
  5,line 61
  35,line 103
  2,line 57
  32,line 98
  28,line 93
  25,line 88
  22,line 83
  18,line 78
  15,line 75
  12,line 72
  57,line 133
  54,line 130
  51,line 127
  47,line 121
  44,line 118
}

array set prism::lr1_table {
  35 {{41 262 1}}
  66,trans {}
  36 {{43 262 1}}
  85,trans {}
  37 {{38 262 1}}
  38 {{40 262 1}}
  39 {{42 262 1}}
  40 {{36 262 1}}
  41 {{18 {0 264} 2}}
  42 {{27 {0 264} 1} {28 {0 264} 1}}
  43 {{37 262 1}}
  44 {{46 264 1}}
  45 {{47 264 1}}
  46 {{48 264 1}}
  47 {{49 264 1}}
  48 {{50 264 1}}
  49 {{44 264 1}}
  50 {{45 264 1}}
  27,trans {}
  51 {{10 {0 264} 2}}
  46,trans {}
  52 {{9 {0 264} 2}}
  65,trans {{X 71} {Y 72} {Z 73} {x 74} {y 75} {z 76} {264 77} {299 78} {300 79}}
  53 {{33 {0 264} 1}}
  84,trans {}
  54 {{34 {0 264} 1}}
  55 {{35 {0 264} 1}}
  56 {{16 {0 264} 2}}
  57 {{39 {264 X Y Z x y z} 1}}
  58 {{41 {264 X Y Z x y z} 1}}
  59 {{43 {264 X Y Z x y z} 1}}
  60 {{38 {264 X Y Z x y z} 1}}
  61 {{40 {264 X Y Z x y z} 1}}
  62 {{42 {264 X Y Z x y z} 1}}
  63 {{36 {264 X Y Z x y z} 1}}
  64 {{17 {0 264} 2}}
  65 {{29 {0 264} 1} {30 {0 264} 1} {31 {0 264} 1} {32 {0 264} 1} {36 {264 285 X Y Z x y z} 0} {37 {264 285 X Y Z x y z} 0} {38 {264 285 X Y Z x y z} 0} {39 {264 285 X Y Z x y z} 0} {40 {264 285 X Y Z x y z} 0} {41 {264 285 X Y Z x y z} 0} {42 {264 285 X Y Z x y z} 0} {43 {264 285 X Y Z x y z} 0}}
  66 {{37 {264 X Y Z x y z} 1}}
  26,trans {}
  67 {{5 0 2}}
  45,trans {}
  68 {{11 {0 264} 3}}
  64,trans {}
  69 {{27 {0 264} 2} {28 {0 264} 2} {1 {262 263} 0} {2 {262 263} 0}}
  70 {{10 {0 264} 3}}
  83,trans {{262 94} {263 95} {291 96}}
  71 {{39 {264 285 X Y Z x y z} 1}}
  72 {{41 {264 285 X Y Z x y z} 1}}
  73 {{43 {264 285 X Y Z x y z} 1}}
  74 {{38 {264 285 X Y Z x y z} 1}}
  75 {{40 {264 285 X Y Z x y z} 1}}
  76 {{42 {264 285 X Y Z x y z} 1}}
  77 {{36 {264 285 X Y Z x y z} 1}}
  78 {{29 {0 264} 2} {30 {0 264} 2} {31 {0 264} 2} {32 {0 264} 2} {36 {264 286 287 X Y Z x y z} 0} {37 {264 286 287 X Y Z x y z} 0} {38 {264 286 287 X Y Z x y z} 0} {39 {264 286 287 X Y Z x y z} 0} {40 {264 286 287 X Y Z x y z} 0} {41 {264 286 287 X Y Z x y z} 0} {42 {264 286 287 X Y Z x y z} 0} {43 {264 286 287 X Y Z x y z} 0}}
  79 {{37 {264 285 X Y Z x y z} 1}}
  80 {{5 0 3}}
  81 {{1 {262 263} 1}}
  82 {{2 {262 263} 1}}
  25,trans {}
  83 {{28 {0 264} 3} {1 {0 264} 0} {2 {0 264} 0}}
  44,trans {}
  84 {{39 {264 286 287 X Y Z x y z} 1}}
  63,trans {}
  85 {{41 {264 286 287 X Y Z x y z} 1}}
  86 {{43 {264 286 287 X Y Z x y z} 1}}
  82,trans {}
  87 {{38 {264 286 287 X Y Z x y z} 1}}
  0 {{0 0 0} {3 0 0} {5 0 0} {6 {0 264} 0} {7 {0 264} 0} {8 {0 264} 0} {9 {0 264} 0} {10 {0 264} 0} {11 {0 264} 0} {12 {0 264} 0} {13 {0 264} 0} {14 {0 264} 0} {15 {0 264} 0} {16 {0 264} 0} {17 {0 264} 0} {18 {0 264} 0} {19 {0 264} 0} {20 {0 264} 0} {21 {0 264} 0} {22 {0 264} 0} {23 {0 264} 0} {24 {0 264} 0}}
  88 {{40 {264 286 287 X Y Z x y z} 1}}
  1 {{8 {0 264} 1}}
  89 {{42 {264 286 287 X Y Z x y z} 1}}
  90 {{36 {264 286 287 X Y Z x y z} 1}}
  2 {{13 {0 264} 1}}
  91 {{29 {0 264} 3}}
  3 {{12 {0 264} 1}}
  92 {{30 {0 264} 3} {31 {0 264} 3} {32 {0 264} 3} {36 288 0} {37 288 0} {38 288 0} {39 288 0} {40 288 0} {41 288 0} {42 288 0} {43 288 0}}
  4 {{19 {0 264} 1}}
  93 {{37 {264 286 287 X Y Z x y z} 1}}
  5 {{11 {0 264} 1} {51 264 0} {52 264 0} {53 264 0} {54 264 0} {55 264 0} {56 264 0} {57 264 0}}
  94 {{1 {0 264} 1}}
  6 {{14 {0 264} 1} {25 {0 264} 0} {26 {0 264} 0}}
  95 {{2 {0 264} 1}}
  7 {{20 {0 264} 1}}
  96 {{28 {0 264} 4}}
  8 {{24 {0 264} 1}}
  97 {{39 288 1}}
  9 {{18 {0 264} 1} {27 {0 264} 0} {28 {0 264} 0} {36 262 0} {37 262 0} {38 262 0} {39 262 0} {40 262 0} {41 262 0} {42 262 0} {43 262 0}}
  98 {{41 288 1}}
  24,trans {}
  99 {{43 288 1}}
  43,trans {}
  62,trans {}
  81,trans {}
  99,trans {}
  23,trans {}
  42,trans {{262 69}}
  61,trans {}
  79,trans {}
  80,trans {}
  98,trans {}
  9,trans {{X 34} {Y 35} {Z 36} {x 37} {y 38} {z 39} {264 40} {296 41} {299 42} {300 43}}
  22,trans {}
  41,trans {}
  59,trans {}
  60,trans {}
  78,trans {{X 84} {Y 85} {Z 86} {x 87} {y 88} {z 89} {264 90} {285 91} {299 92} {300 93}}
  97,trans {}
  8,trans {{262 33}}
  100 {{38 288 1}}
  101 {{40 288 1}}
  102 {{42 288 1}}
  103 {{36 288 1}}
  104 {{30 {0 264} 4}}
  105 {{31 {0 264} 4}}
  106 {{32 {0 264} 4}}
  21,trans {}
  107 {{37 288 1}}
  39,trans {}
  40,trans {}
  108 {{32 {0 264} 5}}
  58,trans {}
  77,trans {}
  96,trans {}
  7,trans {}
  19,trans {}
  20,trans {{293 67}}
  38,trans {}
  57,trans {}
  76,trans {}
  95,trans {}
  6,trans {{262 30} {264 31} {295 32}}
  108,trans {}
  18,trans {}
  37,trans {}
  56,trans {}
  75,trans {}
  94,trans {}
  5,trans {{257 22} {258 23} {259 24} {260 25} {261 26} {289 27} {290 28} {302 29}}
  107,trans {}
  17,trans {{X 57} {Y 58} {Z 59} {x 60} {y 61} {z 62} {264 63} {297 64} {299 65} {300 66}}
  36,trans {}
  55,trans {}
  74,trans {}
  93,trans {}
  4,trans {{264 21}}
  106,trans {{288 108}}
  16,trans {}
  35,trans {}
  54,trans {}
  73,trans {}
  92,trans {{X 97} {Y 98} {Z 99} {x 100} {y 101} {z 102} {264 103} {286 104} {287 105} {299 106} {300 107}}
  3,trans {}
  105,trans {}
  15,trans {}
  34,trans {}
  53,trans {}
  72,trans {}
  2,trans {}
  91,trans {}
  104,trans {}
  14,trans {{282 53} {283 54} {284 55} {298 56}}
  33,trans {}
  52,trans {}
  71,trans {}
  1,trans {}
  89,trans {}
  90,trans {}
  103,trans {}
  13,trans {{264 52}}
  32,trans {}
  51,trans {{264 70}}
  69,trans {{262 81} {263 82} {291 83}}
  70,trans {}
  0,trans {{264 1} {265 2} {266 3} {267 4} {268 5} {269 6} {270 7} {271 8} {272 9} {273 10} {274 11} {275 12} {276 13} {277 14} {278 15} {279 16} {280 17} {281 18} {292 19} {294 20}}
  88,trans {}
  102,trans {}
  12,trans {}
  31,trans {}
  49,trans {}
  50,trans {}
  68,trans {}
  87,trans {}
  101,trans {}
  10 {{15 {0 264} 1}}
  11 {{10 {0 264} 1} {44 264 0} {45 264 0} {46 264 0} {47 264 0} {48 264 0} {49 264 0} {50 264 0}}
  12 {{23 {0 264} 1}}
  13 {{9 {0 264} 1}}
  14 {{16 {0 264} 1} {33 {0 264} 0} {34 {0 264} 0} {35 {0 264} 0}}
  15 {{21 {0 264} 1}}
  11,trans {{257 44} {258 45} {259 46} {260 47} {261 48} {289 49} {290 50} {301 51}}
  16 {{7 {0 264} 1}}
  29,trans {{264 68}}
  30,trans {}
  17 {{17 {0 264} 1} {29 {0 264} 0} {30 {0 264} 0} {31 {0 264} 0} {32 {0 264} 0} {36 {264 X Y Z x y z} 0} {37 {264 X Y Z x y z} 0} {38 {264 X Y Z x y z} 0} {39 {264 X Y Z x y z} 0} {40 {264 X Y Z x y z} 0} {41 {264 X Y Z x y z} 0} {42 {264 X Y Z x y z} 0} {43 {264 X Y Z x y z} 0}}
  48,trans {}
  18 {{22 {0 264} 1}}
  67,trans {{264 80}}
  20 {{3 0 1} {5 0 1} {4 264 0}}
  19 {{0 0 1}}
  86,trans {}
  21 {{19 {0 264} 2}}
  22 {{53 264 1}}
  100,trans {}
  23 {{54 264 1}}
  24 {{55 264 1}}
  25 {{56 264 1}}
  26 {{57 264 1}}
  27 {{51 264 1}}
  28 {{52 264 1}}
  30 {{25 {0 264} 1}}
  29 {{11 {0 264} 2}}
  31 {{26 {0 264} 1}}
  32 {{14 {0 264} 2}}
  10,trans {}
  33 {{24 {0 264} 2}}
  28,trans {}
  34 {{39 262 1}}
  47,trans {}
}

array set prism::token_id_table {
  286 XYEX_
  286,t 0
  302,line 126
  287 XYEY_
  292,line 59
  288 XYEXEY_
  265,title CLEAR
  289 VOT_
  290 XML_
  300 colsxyz
  301 reader
  284,title OVERPLOT
  291 numeric
  302 writer
  292 command
  303 start'
  288,line 45
  293 @PSEUDO1
  294 prism
  295 ext
  296 histogram
  262,t 0
  297 plot
  285,line 42
  298 mode
  299 cols
  283,t 0
  282,line 38
  264,title string
  283,title NEWGRAPH
  278,line 33
  error,line 54
  258,t 0
  275,line 30
  279,t 0
  280,t 0
  Z,line 114
  272,line 27
  263,title float
  282,title NEWPLOT
  268,line 23
  276,t 0
  Y,t 0
  265,line 20
  297,t 1
  262,line 13
  262,title integer
  0 {$}
  0,t 0
  281,title PREV
  error,t 0
  299,title {}
  258,line 8
  273,t 0
  294,t 1
  z,line 113
  261,title TSV
  279,title OPEN
  280,title PLOT
  269,t 0
  270,t 0
  298,title {}
  301,t 1
  291,t 1
  y,t 0
  266,t 0
  260,title CSV
  259,title STARBASE
  297,line 95
  278,title NEXT
  297,title {}
  287,t 0
  294,line 63
  301,line 117
  error,title {}
  291,line 55
  X X
  Y Y
  Z Z
  263,t 0
  258,title SB
  287,line 44
  277,title MODE
  284,t 0
  296,title {}
  284,line 40
  281,line 36
  260,t 0
  259,t 0
  281,t 0
  257,title RDB
  277,line 32
  276,title LOAD
  295,title {}
  274,line 29
  Y,line 112
  271,line 26
  277,t 0
  x x
  y y
  Z,t 0
  z z
  267,line 22
  298,t 1
  275,title LAST
  294,title {}
  264,line 16
  261,line 11
  274,t 0
  295,t 1
  257,line 7
  274,title IMPORT
  303,title {}
  293,title {}
  271,t 0
  error error
  302,t 1
  y,line 111
  292,t 1
  z,t 0
  273,title IMAGE
  302,title {}
  292,title {}
  267,t 0
  Z,title {}
  299,line 105
  288,t 0
  296,line 91
  272,title HISTOGRAM
  303,line 134
  301,title {}
  291,title {}
  293,line 60
  264,t 0
  Y,title {}
  285,t 0
  289,line 47
  290,line 48
  300,line 109
  286,line 43
  271,title GOTO
  261,t 0
  283,line 39
  289,title VOT
  290,title XML
  300,title {}
  282,t 0
  279,line 34
  280,line 35
  X,title {}
  z,title {}
  276,line 31
  257,t 0
  269,title EXT
  270,title FIRST
  273,line 28
  288,title XYEXEY
  278,t 0
  299,t 1
  X,line 110
  269,line 24
  270,line 25
  y,title {}
  266,line 21
  268,title EXPORT
  275,t 0
  263,line 14
  287,title XYEY
  X,t 0
  296,t 1
  260,line 10
  259,line 9
  x,title {}
  272,t 0
  267,title CURRENT
  303,t 1
  257 RDB_
  286,title XYEX
  293,t 1
  258 SB_
  260 CSV_
  259 STARBASE_
  261 TSV_
  262 INT_
  263 REAL_
  264 STRING_
  x,line 109
  265 CLEAR_
  266 CLOSE_
  267 CURRENT_
  268,t 0
  268 EXPORT_
  269 EXT_
  270 FIRST_
  271 GOTO_
  272 HISTOGRAM_
  289,t 0
  290,t 0
  300,t 1
  266,title CLOSE
  273 IMAGE_
  274 IMPORT_
  285,title XY
  275 LAST_
  276 LOAD_
  298,line 100
  277 MODE_
  x,t 0
  278 NEXT_
  279 OPEN_
  280 PLOT_
  281 PREV_
  282 NEWPLOT_
  295,line 87
  265,t 0
  283 NEWGRAPH_
  284 OVERPLOT_
  285 XY_
}

proc prism::yyparse {} {
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
                    1 { set _ $1 }
                    2 { set _ $1 }
                    4 { global ds9; if {!$ds9(init)} {YYERROR} else {yyclearin; YYACCEPT} }
                    6 { PrismDialogLoad prism }
                    7 { PrismDialogLoad prism }
                    8 { PrismCmdLoad $1 }
                    9 { ProcessCmdCVAROpt PrismLoad $2 }
                    10 { PrismCmdImport $3 $2 }
                    11 { TBLCmdSave $3 $2 }
                    12 { ProcessCmdCVAR0 PrismDestroy }
                    13 { ProcessCmdCVAR0 PrismClear }
                    15 { ProcessCmdCVAR0 PrismImage }
                    19 { PrismCmdRef $2 }
                    20 { ProcessCmdCVAR0 PrismTableFirst }
                    21 { ProcessCmdCVAR0 PrismTableNext }
                    22 { ProcessCmdCVAR0 PrismTablePrev }
                    23 { ProcessCmdCVAR0 PrismTableLast }
                    24 { ProcessCmdCVAR goto $2 PrismTableGoto }
                    25 { PrismCmdExt $1 }
                    26 { PrismCmdExtName $1 }
                    27 { ProcessCmdCVAR3 col $1 bar,num $2 bar,minmax 0 PrismHistogramGenerate }
                    28 { ProcessCmdCVAR5 col $1 bar,num $2 bar,min $3 bar,max $4 bar,minmax 1 PrismHistogramGenerate }
                    29 { ProcessCmdCVAR4 xx $1 yy $2 xerr {} yerr {} PrismPlotGenerate }
                    30 { ProcessCmdCVAR4 xx $1 yy $2 xerr $3 yerr {} PrismPlotGenerate }
                    31 { ProcessCmdCVAR4 xx $1 yy $2 xerr {} yerr $3 PrismPlotGenerate }
                    32 { ProcessCmdCVAR4 xx $1 yy $2 xerr $3 yerr $4 PrismPlotGenerate }
                    33 { ProcessCmdCVAR mode newplot }
                    34 { ProcessCmdCVAR mode newgraph }
                    35 { ProcessCmdCVAR mode newdataset }
                    36 { set _ $1 }
                    37 { set _ $1 }
                    38 { set _ $1 }
                    39 { set _ $1 }
                    40 { set _ $1 }
                    41 { set _ $1 }
                    42 { set _ $1 }
                    43 { set _ $1 }
                    44 { set _ VOTRead }
                    45 { set _ VOTRead }
                    46 { set _ starbase_read }
                    47 { set _ starbase_read }
                    48 { set _ starbase_read }
                    49 { set _ TSVRead }
                    50 { set _ TSVRead }
                    51 { set _ VOTWrite }
                    52 { set _ VOTWrite }
                    53 { set _ starbase_write }
                    54 { set _ starbase_write }
                    55 { set _ starbase_write }
                    56 { set _ TSVWrite }
                    57 { set _ TSVWrite }
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

proc prism::yyerror {msg} {
     variable yycnt
     variable yy_current_buffer
     variable index_

     ParserError $msg $yycnt $yy_current_buffer $index_
}
