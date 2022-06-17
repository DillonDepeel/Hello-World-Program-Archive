grammar Hello;
helloFile: 'START' WS ( helloStatement WS ) * 'END' ;
helloStatement: 'hello' WS ID ;
ID: [a-z]+ ;
WS: [ \t\n\r]+ ;
