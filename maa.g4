/* Grammar file for the MAA language. */
grammar maa;

assignment_closure: assignment_closure ';'
    | assignment_closure EOF
    | assignment_closure ';' assignment_closure
    | assignment_closure ';' assignment_closure EOF
    | VAR '=' '{' selector_closure '}' {System.out.println("Entered variable: " + $VAR.text);}
    | VAR '=' '{' '}' {System.out.println("Entered empty variable: " + $VAR.text);}
    ;

selector_closure : selector_closure ';'
		 | selector_closure ';' selector_closure
		 | SEL '{' selector_closure '}' {System.out.println("Entered selector: " + $SEL.text);}
		 | SEL '{' '}' {System.out.println("Entered empty selector: " + $SEL.text);}
		 ;

VAR : [a-zA-Z0-9_]+ ;
SEL   : '"' [a-zA-Z0-9\-\._\t ]* '"' ;
NL  : [\r\n]+ -> skip ;
WS  : [ \t]+ -> channel(HIDDEN) ;
