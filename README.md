# Toy Language Quadratic Equation Solver

## Description

This is a toy language implementation using Bison, Lex, and GCC as tools for solving quadratic equations. The program takes quadratic equations in the form ax^2 + bx + c = 0 as input and provides the roots as output.

## Installation

To install and set up the environment for this program on Windows, follow these steps:

1. Install a C and C++ environment.
2. Install MSYS2 tool.
3. Use MSYS2 tool to install Bison and Yacc using the following commands:
pacman -S bison
pacman -S yacc
4. Set the path for Bison and Yacc.

## Usage

To use this program, follow these steps:

#### 1. Run the program in your terminal:
#### command:
##### Flex command to generate lexer
flex lexfileName.l

##### Bison command to generate parser
bison -dy yaccFileName.y

##### GCC command to compile lex.yy.c and y.tab.c and generate executable
gcc lex.yy.c y.tab.c 

##### Command to run the executable
a.exe

#### 2. Enter the quadratic equations in the form "a x^2 + b x + c"  as input of the quadratic equation when prompted.
#### 3. The program will output the roots of the quadratic equation, if any.

## Contributing

Contributions are welcome! If you want to contribute to this project, please follow these guidelines:
- Fork the repository
- Create a new branch
- Make your changes
- Submit a pull request

## License

QuadSolver is released under the MIT License, which means you're free to use, modify, and distribute the project's code for personal or commercial purposes.

## Contact

For any inquiries or feedback, feel free to reach out to:
- Hanshvee Patil
- Email: hanshpatil1982@gmail.com


