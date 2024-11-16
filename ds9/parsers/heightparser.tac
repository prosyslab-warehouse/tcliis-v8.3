%{
%}
#include def.tin

#include int.tin
#include string.tin

%start command

%%

command : height 
 | height {global ds9; if {!$ds9(init)} {YYERROR} else {yyclearin; YYACCEPT}} STRING_
 ;

height : INT_ {ProcessCmdSet canvas height $1 UpdateView}
 ;

%%

proc height::yyerror {msg} {
     variable yycnt
     variable yy_current_buffer
     variable index_

     ParserError $msg $yycnt $yy_current_buffer $index_
}
