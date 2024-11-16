package provide DS9 1.0

######
# Begin autogenerated taccle (version 1.3) routines.
# Although taccle itself is protected by the GNU Public License (GPL)
# all user-supplied functions are protected by their respective
# author's license.  See http://mini.net/tcl/taccle for other details.
######

namespace eval vlss {
    variable yylval {}
    variable table
    variable rules
    variable token {}
    variable yycnt 0
    variable yyerr 0
    variable save_state 0

    namespace export yylex
}

proc vlss::YYABORT {} {
    return -code return 1
}

proc vlss::YYACCEPT {} {
    return -code return 0
}

proc vlss::YYERROR {} {
    variable yyerr
    set yyerr 1
}

proc vlss::yyclearin {} {
    variable token
    variable yycnt
    set token {}
    incr yycnt -1
}

proc vlss::yyerror {s} {
    puts stderr $s
}

proc vlss::setupvalues {stack pointer numsyms} {
    upvar 1 1 y
    set y {}
    for {set i 1} {$i <= $numsyms} {incr i} {
        upvar 1 $i y
        set y [lindex $stack $pointer]
        incr pointer
    }
}

proc vlss::unsetupvalues {numsyms} {
    for {set i 1} {$i <= $numsyms} {incr i} {
        upvar 1 $i y
        unset y
    }
}

array set vlss::table {
  3:288,target 20
  29:283 reduce
  30:283 reduce
  27:0 reduce
  38:276 shift
  48:0 reduce
  3:267,target 18
  51:283,target 13
  7:283,target 1
  38:283 reduce
  11:282,target 20
  38:285 goto
  40:283,target 11
  39:283,target 12
  6:266 shift
  7:262,target 31
  10:277,target 19
  6:268 shift
  24:0 reduce
  48:0,target 17
  47:283 reduce
  41:0,target 35
  45:0 reduce
  2:282,target 11
  25:0,target 33
  28:283,target 3
  17:281 shift
  10:0,target 19
  17:282 shift
  0:273,target 7
  7:259,target 28
  7:260,target 29
  17:290 goto
  21:0 reduce
  38:276,target 42
  26:283 reduce
  42:0 reduce
  35:276 shift
  2:280,target 16
  34:279,target 40
  41:283,target 35
  35:283 reduce
  0:271,target 5
  6:294 goto
  11:277,target 20
  17:281,target 10
  35:285 goto
  39:278,target 49
  7:257,target 26
  3:267 shift
  38:0 reduce
  30:283,target 4
  29:283,target 6
  3:270 shift
  0:290,target 13
  8:281,target 10
  18:283,target 15
  0:268,target 3
  45:0,target 37
  37:0,target 10
  14:0 accept
  39:276,target 47
  29:0,target 6
  30:0,target 4
  22:0,target 29
  35:0 reduce
  14:0,target 0
  4:263,target 21
  23:283 reduce
  13:282,target 11
  3:288 goto
  42:283,target 9
  32:283 reduce
  11:0 reduce
  31:283,target 7
  0:264 shift
  37:286,target 45
  32:0 reduce
  0:265 shift
  0:268 shift
  0:269 shift
  11:276 reduce
  41:283 reduce
  0:271 shift
  11:277 reduce
  19:283,target 14
  20:283,target 32
  0:272 shift
  11:278 reduce
  33:290,target 39
  0:273 shift
  0:274 shift
  11:281 reduce
  11:282 reduce
  0:264,target 1
  50:283 reduce
  49:283 reduce
  0:280 shift
  7:0,target 1
  28:0 reduce
  0:281 shift
  0:0,target 24
  0:282 shift
  50:0 reduce
  49:0 reduce
  0:283 shift
  43:283,target 34
  19:283 reduce
  20:283 reduce
  50:0,target 30
  49:0,target 18
  0:283,target 12
  42:0,target 9
  34:0,target 10
  0:290 goto
  8:281 shift
  26:0,target 2
  0:291 goto
  8:282 shift
  18:0,target 15
  32:283,target 31
  11:0,target 20
  0:293 goto
  25:0 reduce
  28:283 reduce
  2:290,target 17
  46:0 reduce
  8:290 goto
  21:283,target 28
  37:279 shift
  0:281,target 10
  37:283 reduce
  0:0 reduce
  37:286 goto
  22:0 reduce
  46:283 reduce
  43:0 reduce
  37:279,target 40
  1:283,target 26
  16:280 shift
  10:281,target 19
  18:0 reduce
  5:283 reduce
  40:0 reduce
  39:0 reduce
  22:283,target 29
  25:283 reduce
  46:0,target 36
  38:0,target 8
  31:0,target 7
  7:284,target 32
  23:0,target 39
  34:279 shift
  15:0,target 21
  34:283 reduce
  33:281,target 10
  10:278,target 19
  15:0 reduce
  34:286 goto
  45:283,target 37
  13:290,target 35
  43:283 reduce
  34:283,target 10
  13:281 shift
  0:274,target 8
  11:281,target 20
  13:282 shift
  7:261,target 30
  10:276,target 19
  12:0 reduce
  2:280 shift
  16:280,target 37
  2:281 shift
  23:283,target 39
  2:282 shift
  13:290 goto
  2:281,target 10
  0:293,target 15
  22:283 reduce
  35:285,target 43
  12:283,target 27
  1:0,target 26
  2:290 goto
  0:272,target 6
  11:278,target 20
  7:0 reduce
  17:282,target 11
  51:0,target 13
  31:283 reduce
  7:258,target 27
  46:283,target 36
  43:0,target 34
  39:276 shift
  35:0,target 8
  29:0 reduce
  30:0 reduce
  39:277 shift
  27:0,target 5
  39:278 shift
  7:257 shift
  19:0,target 14
  20:0,target 32
  51:0 reduce
  7:258 shift
  12:0,target 27
  0:291,target 14
  7:259 shift
  7:260 shift
  8:282,target 11
  35:283,target 8
  6:294,target 25
  7:261 shift
  10:276 reduce
  40:283 reduce
  39:283 reduce
  7:262 shift
  10:277 reduce
  10:278 reduce
  0:269,target 4
  10:281 reduce
  11:276,target 20
  39:287 goto
  10:282 reduce
  15:292,target 36
  24:283,target 38
  39:277,target 48
  39:289 goto
  26:0 reduce
  48:283 reduce
  47:0 reduce
  18:283 reduce
  1:0 reduce
  47:283,target 16
  4:283,target 22
  7:283 reduce
  7:284 goto
  23:0 reduce
  27:283 reduce
  44:0 reduce
  5:0,target 25
  36:283,target 44
  13:281,target 10
  47:0,target 16
  36:283 shift
  40:0,target 11
  39:0,target 12
  4:263 shift
  25:283,target 33
  32:0,target 31
  0:265,target 2
  6:268,target 24
  24:0,target 38
  19:0 reduce
  20:0 reduce
  41:0 reduce
  45:283 reduce
  9:280,target 34
  35:276,target 42
  15:283 reduce
  48:283,target 17
  5:283,target 25
  6:266,target 23
  4:283 shift
  37:283,target 10
  37:0 reduce
  15:292 goto
  24:283 reduce
  0:282,target 11
  26:283,target 2
  33:281 shift
  39:289,target 51
  33:282 shift
  38:285,target 46
  15:283,target 22
  34:0 reduce
  33:290 goto
  44:0,target 23
  42:283 reduce
  50:283,target 30
  49:283,target 18
  0:280,target 9
  28:0,target 3
  17:290,target 38
  21:0,target 28
  39:287,target 50
  10:282,target 19
  12:283 reduce
  10:0 reduce
  51:283 reduce
  38:283,target 8
  31:0 reduce
  1:283 reduce
  8:290,target 33
  3:270,target 19
  21:283 reduce
  27:283,target 5
  34:286,target 41
  9:280 shift
  33:282,target 11
  5:0 reduce
}

array set vlss::rules {
  9,l 285
  11,l 286
  32,l 293
  6,l 284
  28,l 293
  3,l 284
  25,l 293
  0,l 295
  22,l 292
  18,l 289
  39,l 294
  15,l 288
  36,l 293
  12,l 287
  33,l 293
  7,l 284
  29,l 293
  30,l 293
  4,l 284
  26,l 293
  1,l 284
  23,l 291
  19,l 290
  20,l 290
  16,l 289
  37,l 293
  13,l 287
  34,l 293
  8,l 285
  10,l 286
  31,l 293
  5,l 284
  27,l 293
  2,l 284
  24,l 293
  21,l 291
  17,l 289
  38,l 294
  14,l 288
  35,l 293
}

array set vlss::rules {
  12,dc 0
  26,dc 1
  3,dc 1
  18,dc 1
  33,dc 2
  9,dc 1
  11,dc 1
  25,dc 1
  2,dc 1
  39,dc 1
  17,dc 1
  32,dc 2
  8,dc 0
  10,dc 0
  24,dc 0
  1,dc 0
  38,dc 1
  16,dc 1
  31,dc 2
  7,dc 1
  23,dc 3
  0,dc 1
  37,dc 4
  15,dc 1
  29,dc 2
  30,dc 4
  6,dc 1
  22,dc 0
  36,dc 4
  14,dc 1
  28,dc 2
  5,dc 1
  21,dc 1
  35,dc 3
  13,dc 1
  27,dc 1
  4,dc 1
  19,dc 1
  20,dc 1
  34,dc 3
}

array set vlss::rules {
  7,line 88
  37,line 139
  4,line 85
  34,line 135
  1,line 82
  31,line 131
  27,line 126
  24,line 123
  21,line 119
  17,line 112
  22,e 1
  14,line 107
  11,line 100
  9,line 96
  39,line 143
  6,line 87
  36,line 138
  3,line 84
  33,line 134
  29,line 128
  30,line 130
  26,line 125
  23,line 120
  19,line 115
  20,line 116
  16,line 111
  13,line 104
  10,line 99
  8,line 95
  38,line 142
  5,line 86
  35,line 137
  2,line 83
  32,line 132
  28,line 127
  25,line 124
  22,line 119
  18,line 113
  15,line 108
  12,line 103
}

array set vlss::lr1_table {
  35 {{19 {0 276} 1}}
  14,trans {}
  36 {{20 {0 276} 1}}
  33,trans {{281 41} {282 42} {290 43}}
  37 {{34 {0 283} 2} {8 {0 283} 0} {9 {0 283} 0}}
  52,trans {}
  38 {{23 0 2}}
  40 {{36 {0 283} 3} {8 {0 283} 0} {9 {0 283} 0}}
  39 {{37 {0 283} 3} {10 {0 283} 0} {11 {0 283} 0}}
  41 {{19 {0 276 277 278} 1}}
  18,trans {}
  1,trans {}
  37,trans {{276 46} {285 47}}
  42 {{20 {0 276 277 278} 1}}
  43 {{30 {0 283} 3} {12 {0 283} 0} {13 {0 283} 0} {16 {0 283} 0} {17 {0 283} 0} {18 {0 283} 0}}
  44 {{11 {0 283} 1}}
  45 {{35 {0 283} 3}}
  23,trans {}
  5,trans {}
  42,trans {}
  46 {{9 {0 283} 1}}
  47 {{34 {0 283} 3}}
  48 {{23 0 3}}
  50 {{36 {0 283} 4}}
  49 {{37 {0 283} 4}}
  27,trans {}
  9,trans {{280 34}}
  46,trans {}
  51 {{16 {0 283} 1}}
  52 {{17 {0 283} 1}}
  53 {{18 {0 283} 1}}
  13,trans {{281 35} {282 36} {290 37}}
  54 {{30 {0 283} 4}}
  32,trans {}
  51,trans {}
  55 {{13 {0 283} 1}}
  17,trans {{281 35} {282 36} {290 40}}
  0,trans {{264 1} {265 2} {268 3} {269 4} {271 5} {272 6} {273 7} {274 8} {280 9} {281 10} {282 11} {283 12} {290 13} {291 14} {293 15}}
  36,trans {}
  55,trans {}
  22,trans {}
  4,trans {{263 21} {283 22}}
  41,trans {}
  26,trans {}
  8,trans {{281 10} {282 11} {290 33}}
  45,trans {}
  12,trans {}
  31,trans {}
  50,trans {}
  49,trans {}
  16,trans {{280 39}}
  35,trans {}
  54,trans {}
  21,trans {}
  3,trans {{267 18} {270 19} {288 20}}
  40,trans {{276 46} {285 50}}
  39,trans {{279 44} {286 49}}
  10 {{19 {281 282} 1}}
  11 {{20 {281 282} 1}}
  25,trans {}
  12 {{27 {0 283} 1}}
  7,trans {{257 26} {258 27} {259 28} {260 29} {261 30} {262 31} {284 32}}
  44,trans {}
  13 {{34 {0 283} 1} {19 {0 276} 0} {20 {0 276} 0}}
  14 {{0 0 1}}
  15 {{21 0 1} {23 0 1} {22 283 0}}
  11,trans {}
  30,trans {}
  29,trans {}
  16 {{37 {0 283} 2}}
  48,trans {}
  0 {{0 0 0} {21 0 0} {23 0 0} {24 {0 283} 0} {25 {0 283} 0} {26 {0 283} 0} {27 {0 283} 0} {28 {0 283} 0} {29 {0 283} 0} {30 {0 283} 0} {31 {0 283} 0} {32 {0 283} 0} {33 {0 283} 0} {34 {0 283} 0} {35 {0 283} 0} {36 {0 283} 0} {37 {0 283} 0} {19 {281 282} 0} {20 {281 282} 0}}
  17 {{36 {0 283} 2} {19 {0 276} 0} {20 {0 276} 0}}
  1 {{26 {0 283} 1}}
  18 {{15 {0 283} 1}}
  15,trans {{292 38}}
  2 {{36 {0 283} 1} {37 {0 283} 1} {19 {281 282} 0} {20 {281 282} 0}}
  19 {{14 {0 283} 1}}
  20 {{32 {0 283} 2}}
  34,trans {{279 44} {286 45}}
  3 {{32 {0 283} 1} {14 {0 283} 0} {15 {0 283} 0}}
  21 {{28 {0 283} 2}}
  53,trans {}
  4 {{28 {0 283} 1} {29 {0 283} 1}}
  22 {{29 {0 283} 2}}
  5 {{25 {0 283} 1}}
  23 {{39 {0 283} 1}}
  20,trans {}
  19,trans {}
  6 {{33 {0 283} 1} {38 {0 283} 0} {39 {0 283} 0}}
  2,trans {{280 16} {281 10} {282 11} {290 17}}
  24 {{38 {0 283} 1}}
  38,trans {{283 48}}
  7 {{31 {0 283} 1} {1 {0 283} 0} {2 {0 283} 0} {3 {0 283} 0} {4 {0 283} 0} {5 {0 283} 0} {6 {0 283} 0} {7 {0 283} 0}}
  25 {{33 {0 283} 2}}
  8 {{30 {0 283} 1} {19 {281 282} 0} {20 {281 282} 0}}
  26 {{2 {0 283} 1}}
  9 {{35 {0 283} 1}}
  27 {{5 {0 283} 1}}
  24,trans {}
  6,trans {{266 23} {268 24} {294 25}}
  28 {{3 {0 283} 1}}
  43,trans {{276 51} {277 52} {278 53} {287 54} {289 55}}
  29 {{6 {0 283} 1}}
  30 {{4 {0 283} 1}}
  31 {{7 {0 283} 1}}
  32 {{31 {0 283} 2}}
  10,trans {}
  28,trans {}
  33 {{30 {0 283} 2} {19 {0 276 277 278} 0} {20 {0 276 277 278} 0}}
  47,trans {}
  34 {{35 {0 283} 2} {10 {0 283} 0} {11 {0 283} 0}}
}

array set vlss::token_id_table {
  286,t 1
  286 sex
  280,title SEXSTR
  279,title SEXAGESIMAL
  264,line 15
  292,line 119
  287 sizeOpt
  270,t 0
  269,t 0
  288 frame
  290 numeric
  289 rformat
  276,line 28
  265,title COORD
  291,t 1
  291 command
  284,title {}
  292 @PSEUDO1
  274,t 0
  261,line 11
  293 vlss
  288,line 106
  257,t 0
  294 update
  270,title NEW
  269,title NAME
  295,t 1
  295 start'
  288,title {}
  273,line 24
  278,t 0
  257,line 7
  262,t 0
  285,line 94
  274,title SIZE
  293,title {}
  283,t 0
  270,line 21
  269,line 20
  259,title ON
  260,title OFF
  266,t 0
  278,title ARCSEC
  282,line 37
  287,t 1
  error error
  271,t 0
  264,title CLOSE
  266,line 17
  294,line 141
  283,title string
  292,t 1
  278,line 30
  error,line 80
  275,t 0
  268,title FRAME
  287,title {}
  258,t 0
  263,line 14
  291,line 118
  error,title {}
  280,t 0
  279,t 0
  275,line 26
  273,title SAVE
  292,title {}
  263,t 0
  259,line 9
  260,line 10
  287,line 102
  258,title NO
  284,t 1
  277,title ARCMIN
  272,line 23
  267,t 0
  263,title CLEAR
  288,t 1
  284,line 81
  282,title float
  272,t 0
  268,line 19
  267,title CURRENT
  293,t 1
  286,title {}
  257 YES_
  281,line 36
  276,t 0
  258 NO_
  259,t 0
  259 ON_
  260 OFF_
  260,t 0
  272,title UPDATE
  261 TRUE_
  265,line 16
  293,line 122
  291,title {}
  262 FALSE_
  281,t 0
  263 CLEAR_
  277,line 29
  257,title YES
  264 CLOSE_
  264,t 0
  276,title DEGREES
  265 COORD_
  295,title {}
  262,line 12
  266 CROSSHAIR_
  290,line 114
  289,line 110
  285,t 1
  267 CURRENT_
  0,t 0
  0 {$}
  262,title FALSE
  268 FRAME_
  268,t 0
  281,title integer
  274,line 25
  270 NEW_
  269 NAME_
  error,t 0
  271 OPEN_
  290,t 1
  289,t 1
  272 UPDATE_
  258,line 8
  286,line 98
  273,t 0
  273 SAVE_
  266,title CROSSHAIR
  285,title {}
  274 SIZE_
  275 SURVEY_
  271,line 22
  294,t 1
  276 DEGREES_
  277,t 0
  277 ARCMIN_
  271,title OPEN
  290,title {}
  289,title {}
  283,line 39
  278 ARCSEC_
  261,t 0
  280 SEXSTR_
  279 SEXAGESIMAL_
  281 INT_
  267,line 18
  295,line 144
  282,t 0
  282 REAL_
  275,title SURVEY
  294,title {}
  283 STRING_
  265,t 0
  284 yesno
  280,line 34
  279,line 32
  285 deg
  261,title TRUE
}

proc vlss::yyparse {} {
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
                    1 { set _ 1 }
                    2 { set _ 1 }
                    3 { set _ 1 }
                    4 { set _ 1 }
                    5 { set _ 0 }
                    6 { set _ 0 }
                    7 { set _ 0 }
                    8 { set _ degrees }
                    9 { set _ degrees }
                    10 { set _ sexagesimal }
                    11 { set _ sexagesimal }
                    12 { set _ degrees }
                    13 { set _ $1 }
                    14 { set _ new }
                    15 { set _ current }
                    16 { set _ degrees }
                    17 { set _ arcmin }
                    18 { set _ arcsec }
                    19 { set _ $1 }
                    20 { set _ $1 }
                    22 { global ds9; if {!$ds9(init)} {YYERROR} else {yyclearin; YYACCEPT} }
                    24 { IMGSVRApply dvlss 1 }
                    26 { ARDestroy dvlss }
                    27 { ProcessCmdSet dvlss name $1 "IMGSVRApply dvlss 1" }
                    28 { ProcessCmdSet dvlss name {} }
                    29 { ProcessCmdSet dvlss name $2 "IMGSVRApply dvlss 1" }
                    30 { ProcessCmdSet4 dvlss width $2 height $3 rformat $4 rformat,msg $4 }
                    31 { ProcessCmdSet dvlss save $2 }
                    32 { ProcessCmdSet dvlss mode $2 }
                    34 { ProcessCmdSet4 dvlss x $1 y $2 skyformat $3 skyformat,msg $3 "IMGSVRApply dvlss 1" }
                    35 { ProcessCmdSet4 dvlss x $1 y $2 skyformat $3 skyformat,msg $3 "IMGSVRApply dvlss 1" }
                    36 { ProcessCmdSet4 dvlss x $2 y $3 skyformat $4 skyformat,msg $4 "IMGSVRApply dvlss 1" }
                    37 { ProcessCmdSet4 dvlss x $2 y $3 skyformat $4 skyformat,msg $4 "IMGSVRApply dvlss 1" }
                    38 { IMGSVRUpdate dvlss; IMGSVRApply dvlss 1 }
                    39 { IMGSVRCrosshair dvlss; IMGSVRApply dvlss 1 }
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

proc vlss::yyerror {msg} {
     variable yycnt
     variable yy_current_buffer
     variable index_
     
     ParserError $msg $yycnt $yy_current_buffer $index_
}
