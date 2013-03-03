  TARGET = test
      CC = gcc
  CFLAGS = -Wall -O0 -ansi -g
 PRE_BIN = /usr/bin
 SOURCES = $(wildcard *.c)
    OBJS = $(patsubst %.c, %.o, $(SOURCES))
INCLUDES =
    LIBS =

#%.o : %.c
#	$(CC) -c $(INCLUDES) $< -o $@

all: $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $^ $(LIBS)

clean:
	rm -f $(OBJS)
	rm -f $(TARGET)

install: $(TARGET)
	cp $(TARGET) $(PRE_BIN)

uninstall:
	rm -f $(PRE_BIN)/$(TARGET)

rebuild: clean all

