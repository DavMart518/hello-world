/* 	David Martinez
	  z1857166
	  CSCI 340-0002
    9/4/2020
	
	I certify that this is my own work and where appropriate an extension 
	of the starter code provided for the assignment.
*/

# Compiler variables
CCFLAGS = -Wall -std=c++11

# Rule to link object code files to create .exe file
introduction: introduction.o
        g++ $(CCFLAGS) -o introduction introduction.o

# Rules to compile source code files to object code
introduction.o: introduction.cc 
        g++ $(CCFLAGS) -c introduction.cc
        
# Pseudo-target to remove object code and .exe files
clean:
        -rm *.o introduction.o
