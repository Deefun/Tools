
CC := $(shell ./compiler.sh)

C_FILES := $(wildcard *.c)
HEADERS := $(wildcard *.h)

CPPFLAGS += -I.
CFLAGS += -std=gnu99
LDFLAGS += -lm -lpthread

OBJS := $(patsubst %.c,%.c.o,$(C_FILES))

all: $(TARGET)
.PHONY: all clean target-name

target-name:
	@echo "$(TARGET)"

$(TARGET): $(OBJS)
	$(CC) $(LDFLAGS) $(OBJS) -o $@

%.c.o: %.c $(HEADERS)
	$(CC) $(CPPFLAGS) $(CFLAGS) -c $< -o $@

clean:
	-rm -rf $(TARGET) $(OBJS)

