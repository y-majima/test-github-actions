
test: main.o module.o
	gcc main.c -o test

main.o: main.c
	gcc -c main.c

module.o: ../a-private-repo-test/module.c
	gcc -c ../a-private-repo-test/module.c

clean:
	rm -f *.o test *.c~
