%{
#include<stdio.h>
#include<math.h>  

int yylex();
void yyerror(const char*s);
%}

%union{
    double value;
}

%token <value> NUM
%token '+'
%token '^'
%token EOL

%%
input: NUM 'x' '^' NUM '+' NUM 'x' '+' NUM EOL{
    double a = $1;
    double b = $6;
    double c = $9;

    double disc = (b*b)-(4*a*c);
    if(disc>0){
        double root1 = (-b + sqrt(disc))/(2*a);
        double root2 = (-b - sqrt(disc))/(2*a);
        printf("Root1 : %.2f\n",root1);
        printf("Root2 : %.2f\n",root2);
    }

    else if(disc==0)
    {
        double root = (-b)/(2*a);
        printf("Root : %.2f\n",root);
    }
    else{
        printf("Root are complex\n");
    }
}
%%
void yyerror(const char*s){
    printf("Error\n");
}

int main()
{
    printf("Enter Quadratic Equation: \nDemo: a x^2 + b x + c \n");
    yyparse();
    return 0;
}


