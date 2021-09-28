# CSE30 Makefile
# 
# EXE - objects we want to build
# OBJS - ojects we want to compile (from c)
# 
# We provide a phony target clean to rm all the .o files
# 
# Run make to run with warnings
# Run make no_warnings to run without warnings
# Run make clean to clean objects

EXE = checksum
OBJS = checksum.o
.PHONY: clean

$(EXE): $(OBJS)
	gcc -Wall -Wextra -o $@ $(OBJS)

no_warnings: $(OBJS)
	gcc -o $(EXE) $(OBJS)

checksum.o: checksum.c
	gcc -std=c11 -Wall -Wextra -O0 -g -c -o $(OBJS) checksum.c

clean:
	rm -f $(EXE) $(OBJS)
