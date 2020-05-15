version ?= 1.16.1

bad :
	g++ -c main.cpp
	g++ -o main /usr/local/Cellar/c-ares/${version}/lib/libcares.a main.o

good :
	g++ -c main.cpp
	g++ -o main -lresolv /usr/local/Cellar/c-ares/${version}/lib/libcares.a main.o
