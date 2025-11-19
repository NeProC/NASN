all:
	nasm -f elf64 $(source).asm
	ld -o $(source) $(source).o
	rm *.o
	./$(source)
#	echo $?
#	rm *.o
