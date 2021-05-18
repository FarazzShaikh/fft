CC=gcc
EXE=fft.out
FLAGS=-O3 -lm

$(EXE): main.c fft.h
	# @echo "$(CC) $< -o $@"
	$(CC) $< $(FLAGS) -o $@

clean: 
	rm *.out