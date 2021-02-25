all:
	dmd -release -O -boundscheck=off odds.d
c:
	gcc -O3 -lm -lgmp odds.c -o odds
clean:
	rm -rf odds *.o	
