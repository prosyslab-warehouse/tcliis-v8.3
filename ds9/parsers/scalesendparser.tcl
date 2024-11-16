package provide DS9 1.0

######
# Begin autogenerated taccle (version 1.3) routines.
# Although taccle itself is protected by the GNU Public License (GPL)
# all user-supplied functions are protected by their respective
# author's license.  See http://mini.net/tcl/taccle for other details.
######

namespace eval scalesend {
    variable yylval {}
    variable table
    variable rules
    variable token {}
    variable yycnt 0
    variable yyerr 0
    variable save_state 0

    namespace export yylex
}

proc scalesend::YYABORT {} {
    return -code return 1
}

proc scalesend::YYACCEPT {} {
    return -code return 0
}

proc scalesend::YYERROR {} {
    variable yyerr
    set yyerr 1
}

proc scalesend::yyclearin {} {
    variable token
    variable yycnt
    set token {}
    incr yycnt -1
}

proc scalesend::yyerror {s} {
    puts stderr $s
}

proc scalesend::setupvalues {stack pointer numsyms} {
    upvar 1 1 y
    set y {}
    for {set i 1} {$i <= $numsyms} {incr i} {
        upvar 1 $i y
        set y [lindex $stack $pointer]
        incr pointer
    }
}

proc scalesend::unsetupvalues {numsyms} {
    for {set i 1} {$i <= $numsyms} {incr i} {
        upvar 1 $i y
        unset y
    }
}

array set scalesend::table {
  6:0 reduce
  3:0,target 2
  0:257 shift
  7:0 reduce
  0:264,target 7
  8:0 accept
  5:0,target 7
  0:260 shift
  0:259 shift
  10:0 reduce
  9:0 reduce
  0:261 shift
  7:0,target 8
  0:262 shift
  4:258 shift
  3:259 shift
  0:0,target 1
  0:263 shift
  10:0,target 9
  9:0,target 3
  0:261,target 4
  0:264 shift
  2:0,target 5
  0:265 goto
  4:258,target 10
  3:259,target 9
  0:263,target 6
  4:0,target 10
  0:265,target 8
  0:0 reduce
  6:0,target 6
  1:0 reduce
  0:257,target 1
  2:0 reduce
  8:0,target 0
  3:0 reduce
  0:260,target 3
  0:259,target 2
  4:0 reduce
  1:0,target 4
  5:0 reduce
  0:262,target 5
}

array set scalesend::rules {
  9,l 265
  2,l 265
  6,l 265
  3,l 265
  7,l 265
  0,l 266
  4,l 265
  8,l 265
  10,l 265
  1,l 265
  5,l 265
}

array set scalesend::rules {
  5,dc 1
  0,dc 1
  8,dc 1
  3,dc 2
  10,dc 1
  6,dc 1
  1,dc 0
  9,dc 2
  4,dc 1
  7,dc 1
  2,dc 1
}

array set scalesend::rules {
  7,line 27
  10,line 31
  4,line 23
  1,line 20
  9,line 30
  6,line 26
  3,line 22
  8,line 28
  5,line 25
  2,line 21
}

array set scalesend::lr1_table {
  0 {{0 0 0} {1 0 0} {2 0 0} {3 0 0} {4 0 0} {5 0 0} {6 0 0} {7 0 0} {8 0 0} {9 0 0} {10 0 0}}
  1 {{4 0 1}}
  2 {{5 0 1}}
  3 {{2 0 1} {3 0 1}}
  4 {{9 0 1} {10 0 1}}
  0,trans {{257 1} {259 2} {260 3} {261 4} {262 5} {263 6} {264 7} {265 8}}
  5 {{7 0 1}}
  1,trans {}
  6 {{6 0 1}}
  2,trans {}
  3,trans {{259 9}}
  7 {{8 0 1}}
  4,trans {{258 10}}
  8 {{0 0 1}}
  5,trans {}
  10 {{9 0 2}}
  9 {{3 0 2}}
  6,trans {}
  7,trans {}
  8,trans {}
  10,trans {}
  9,trans {}
}

array set scalesend::token_id_table {
  0,t 0
  0 {$}
  264,line 15
  262,title MODE
  263,title SCALELIMITS
  266,line 32
  error,t 0
  error error
  264,title SCOPE
  265,title {}
  258,line 9
  266,title {}
  261,line 12
  error,line 18
  257 DATASEC_
  257,t 0
  263,line 14
  258 EXP_
  258,t 0
  error,title {}
  260,t 0
  260 LOCK_
  259 LIMITS_
  259,t 0
  265,line 19
  261,t 0
  261 LOG_
  262,t 0
  262 MODE_
  257,line 8
  263,t 0
  263 SCALELIMITS_
  264,t 0
  264 SCOPE_
  260,line 11
  257,title DATASEC
  259,line 10
  265,t 1
  265 scalesend
  258,title EXP
  266,t 1
  266 start'
  262,line 13
  260,title LOCK
  259,title LIMITS
  261,title LOG
}

proc scalesend::yyparse {} {
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
                    1 { ProcessSendCmdGet scale type }
                    2 { ProcessSendCmdYesNo scale lock }
                    3 { ProcessSendCmdYesNo scale lock,limits }
                    4 { ProcessSendCmdGet scale datasec }
                    5 { ProcessSendCmdCurrent "get clip" }
                    6 { ProcessSendCmdCurrent "get clip" }
                    7 { ProcessSendCmdGet scale mode }
                    8 { ProcessSendCmdGet scale scope }
                    9 { ProcessSendCmdGet scale log }
                    10 { ProcessSendCmdGet scale log }
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

proc scalesend::yyerror {msg} {
     variable yycnt
     variable yy_current_buffer
     variable index_

     ParserError $msg $yycnt $yy_current_buffer $index_
}
