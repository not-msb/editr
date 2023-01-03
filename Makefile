clean:
	rm editr.o editr

build:
	nasm -f elf64 editr.asm
	ld editr.o -o editr

run:
	./editr
