bad :
	g++ -c main.cpp
	g++ -o main /usr/local/Cellar/c-ares/1.16.*/lib/libcares.a main.o

good :
	g++ -c main.cpp
	g++ -o main -lresolv /usr/local/Cellar/c-ares/1.16.*/lib/libcares.a main.o
