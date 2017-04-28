#compile_opts = -g
compile_opts = -O3 -Wall -std=c++11


all: nano_bwt

nano_bwt: nano_bwt.o
	gcc -lm -lstdc++ nano_bwt.o -o nano_bwt $(compile_opts)

nano_bwt.o: nano_bwt.cpp
	gcc -c nano_bwt.cpp $(compile_opts)

clean:
	rm nano_bwt.o nano_bwt
