all:
	dmd -release -O -boundscheck=off odds.d
clean:
	rm -rf odds *.o	
