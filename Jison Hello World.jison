%lex
name .
%%
{name} return yytext;
%%
console.log('hello, world');
/lex
