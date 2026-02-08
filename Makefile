CC      := cc
CFLAGS  := -O3 -pipe -march=native -flto -Wall -Wextra
LDFLAGS := -flto -pthread

TARGET  := getlogs
SRC     := getlogs.c

all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) $(SRC) -o $(TARGET) $(LDFLAGS)

clean:
	rm -f $(TARGET)

.PHONY: all clean
