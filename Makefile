CC= /usr/local/bin/arm-apple-darwin-gcc
CFLAGS= -Wall -g -fno-common
LD= $(CC)
LDFLAGS=
AR=/usr/local/bin/arm-apple-darwin-ar

OBJECTS := $(patsubst %.c,%.o,$(wildcard *.c))

all: mxml.a

%.o: %.c
	$(CC) -c $(CFLAGS) $< -o $@
	
mxml.a: $(OBJECTS)
	$(AR) cr $@ $^

clean:
	rm -f *.o *.a *.dylib
