CC=g++
DEPS = core.hpp
OBJ = main.o core.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

hello_world: main.o core.o
	$(CC) -o hello_world main.o core.o
