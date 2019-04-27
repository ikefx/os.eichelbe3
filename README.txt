This is the readme file for assignment 3


>	palin.c takes a string from shared memory @index, checks if it is a palindrome, then prints it to either
	a file called palin.out or notpalin.out 

>	master.c is the job handler.. generates a child for each line of the input file.  that child is exec'd to palin exe

>	ideally the strings are to be placed in shared memory and read from shared memory in the child

>	to prevent deadlocks semaphore should be used to direct which process to proceed

>	a input.txt is supplied to read strings from, it is the default file to read from
