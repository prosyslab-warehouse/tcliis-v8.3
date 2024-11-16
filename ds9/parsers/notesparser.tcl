package provide DS9 1.0

######
# Begin autogenerated taccle (version 1.3) routines.
# Although taccle itself is protected by the GNU Public License (GPL)
# all user-supplied functions are protected by their respective
# author's license.  See http://mini.net/tcl/taccle for other details.
######

namespace eval notes {
    variable yylval {}
    variable table
    variable rules
    variable token {}
    variable yycnt 0
    variable yyerr 0
    variable save_state 0

    namespace export yylex
}

proc notes::YYABORT {} {
    return -code return 1
}

proc notes::YYACCEPT {} {
    return -code return 0
}

proc notes::YYERROR {} {
    variable yyerr
    set yyerr 1
}

proc notes::yyclearin {} {
    variable token
    variable yycnt
    set token {}
    incr yycnt -1
}

proc notes::yyerror {s} {
    puts stderr $s
}

proc notes::setupvalues {stack pointer numsyms} {
    upvar 1 1 y
    set y {}
    for {set i 1} {$i <= $numsyms} {incr i} {
        upvar 1 $i y
        set y [lindex $stack $pointer]
        incr pointer
    }
}

proc notes::unsetupvalues {numsyms} {
    for {set i 1} {$i <= $numsyms} {incr i} {
        upvar 1 $i y
        unset y
    }
}

array set notes::table {
  0:257 shift
  0:258 shift
  0:259 shift
  0:260 shift
  2:257 shift
  0:261 shift
  8:257,target 14
  9:0 accept
  11:0 reduce
  0:262 shift
  4:257 reduce
  0:263 shift
  0:264 shift
  3:257,target 8
  6:257 reduce
  0:265 goto
  8:257 shift
  15:257,target 16
  0:267 goto
  0:265,target 9
  6:0,target 9
  16:0,target 3
  10:257,target 2
  6:0 reduce
  0:264,target 8
  6:257,target 9
  10:266,target 15
  1:257,target 5
  12:0 reduce
  0:0,target 4
  10:0,target 1
  13:257,target 11
  0:263,target 7
  16:0 reduce
  10:257 reduce
  12:257 reduce
  14:257 reduce
  3:0 reduce
  1:0,target 5
  11:0,target 6
  0:262,target 6
  4:257,target 10
  10:266 goto
  1:257 reduce
  3:257 reduce
  11:257,target 6
  5:257 shift
  13:0 reduce
  9:0,target 0
  0:261,target 5
  7:257 shift
  12:0,target 7
  0:0 reduce
  7:257,target 13
  0:259,target 3
  0:260,target 4
  2:257,target 11
  4:0 reduce
  14:257,target 12
  3:0,target 8
  13:0,target 11
  10:0 reduce
  0:258,target 2
  14:0 reduce
  5:257,target 12
  4:0,target 10
  14:0,target 12
  11:257 reduce
  0:257,target 1
  1:0 reduce
  13:257 reduce
  0:267,target 10
  15:257 shift
  12:257,target 7
}

array set notes::rules {
  9,l 267
  11,l 267
  2,l 266
  6,l 267
  12,l 267
  3,l 265
  7,l 267
  0,l 268
  4,l 267
  8,l 267
  10,l 267
  1,l 265
  5,l 267
}

array set notes::rules {
  5,dc 1
  0,dc 1
  12,dc 2
  8,dc 1
  3,dc 3
  10,dc 1
  6,dc 2
  1,dc 1
  9,dc 1
  4,dc 0
  11,dc 2
  7,dc 2
  2,dc 0
}

array set notes::rules {
  2,e 1
  7,line 29
  10,line 33
  4,line 26
  1,line 22
  9,line 32
  12,line 35
  6,line 28
  3,line 23
  8,line 31
  11,line 34
  5,line 27
  2,line 22
}

array set notes::lr1_table {
  13,trans {}
  0 {{0 0 0} {1 0 0} {3 0 0} {4 {0 257} 0} {5 {0 257} 0} {6 {0 257} 0} {7 {0 257} 0} {8 {0 257} 0} {9 {0 257} 0} {10 {0 257} 0} {11 {0 257} 0} {12 {0 257} 0}}
  14,trans {}
  1 {{5 {0 257} 1}}
  15,trans {{257 16}}
  2 {{6 {0 257} 1}}
  16,trans {}
  3 {{8 {0 257} 1}}
  4 {{10 {0 257} 1}}
  0,trans {{257 1} {258 2} {259 3} {260 4} {261 5} {262 6} {263 7} {264 8} {265 9} {267 10}}
  1,trans {}
  5 {{7 {0 257} 1}}
  2,trans {{257 11}}
  6 {{9 {0 257} 1}}
  3,trans {}
  7 {{11 {0 257} 1}}
  4,trans {}
  8 {{12 {0 257} 1}}
  5,trans {{257 12}}
  9 {{0 0 1}}
  10 {{1 0 1} {3 0 1} {2 257 0}}
  6,trans {}
  11 {{6 {0 257} 2}}
  7,trans {{257 13}}
  12 {{7 {0 257} 2}}
  8,trans {{257 14}}
  13 {{11 {0 257} 2}}
  10,trans {{266 15}}
  9,trans {}
  14 {{12 {0 257} 2}}
  11,trans {}
  15 {{3 0 2}}
  16 {{3 0 3}}
  12,trans {}
}

array set notes::token_id_table {
  264,line 17
  265,title {}
  261,line 14
  257,t 0
  257,line 7
  262,t 0
  259,title CLEAR
  260,title CLOSE
  266,t 1
  264,title SAVE
  error error
  266,line 22
  268,title {}
  error,line 20
  258,t 0
  263,line 16
  error,title {}
  263,t 0
  259,line 12
  260,line 13
  258,title APPEND
  267,t 1
  263,title LOAD
  268,line 36
  267,title {}
  257 STRING_
  258 APPEND_
  259,t 0
  259 CLEAR_
  260 CLOSE_
  260,t 0
  261 INSERT_
  265,line 21
  262 OPEN_
  263 LOAD_
  257,title string
  264 SAVE_
  264,t 0
  265 command
  262,line 15
  266 @PSEUDO1
  267 notes
  268,t 1
  268 start'
  262,title OPEN
  0 {$}
  0,t 0
  error,t 0
  258,line 11
  266,title {}
  261,t 0
  267,line 25
  265,t 1
  261,title INSERT
}

proc notes::yyparse {} {
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
                    2 { global ds9; if {!$ds9(init)} {YYERROR} else {yyclearin; YYACCEPT} }
                    4 { DisplayNotes }
                    5 { NotesCmdAppend $1 }
                    6 { NotesCmdAppend $2 }
                    7 { NotesCmdInsert $2 }
                    8 { NotesCmdClear }
                    9 { DisplayNotes }
                    10 { EditTextDestroy notes }
                    11 { NotesCmdLoad $2 }
                    12 { NotesCmdSave $2 }
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

proc notes::yyerror {msg} {
     variable yycnt
     variable yy_current_buffer
     variable index_

     ParserError $msg $yycnt $yy_current_buffer $index_
}