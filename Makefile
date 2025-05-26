CC = gcc
CFLAGS = -Wall -pthread
INCLUDES = -I./lib

all: server client

server: src/server.c
	$(CC) $(CFLAGS) $(INCLUDES) src/server.c -o server

client: src/client.c
	$(CC) $(CFLAGS) $(INCLUDES) src/client.c -o client

clean:
	rm -f server client 