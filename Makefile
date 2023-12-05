all: cstack cppstack
	clang -L. cstack.o -o cstack
	clang++ -L. cppstack.o -o cppstack

cstack: cstack_driver.c
	clang -c cstack_driver.c -o cstack.o

cppstack: cppstack_driver.cpp
	clang++ -c cppstack_driver.cpp -o cppstack.o
    
clean:
	rm *.o
	rm answer