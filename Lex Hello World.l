%{ 
    //*********************************************************
    // Flex program to print Hello World when 'hi' is typed 
    // ********************************************************
    //Global definitions
%} 
  
%% 
    // Rules 
"hi" {
    printf("Hello World"); // Print Hello World every time hi is entered
    }
. {} //do nothing for anything else
%% 
 // Subroutines  
int yywrap(){} 

int main(){
    yylex(); 
    return 0; 
}
