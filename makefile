# Neil Eichelberger
# cs4760 Assignment 03 makefile
# 3-15-2019
#

CC = cc -lpthread -pthread
RM = rm
CFLAGS = -Wall -ansi -lm -std=gnu99
LIBS = -lrt -lpthread
.SUFFIXES:
.SUFFIXES: .c .o .h

all: master palin

# explicit
master: master.o
	$(CC) $(CFLAGS) -o master master.o $(LIBS)
palin: palin.o
	$(CC) $(CFLAGS) -o palin palin.o $(LIBS)
# implicit

master.o: master.c
	$(CC) -c $(CFLAGS) master.c
palin.o: palin.c 
	$(CC) -c $(CFLAGS) palin.c

# clean up
clean:
	$(RM) -f $(OBJ) master.o master palin.o palin 
