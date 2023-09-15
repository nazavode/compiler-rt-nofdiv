CC ?= clang

CFLAGS = -target riscv32-unknown-elf
CFLAGS += -march=rv32imafd
CFLAGS += -mno-fdiv

%.S: %.c
	$(CC) $(CFLAGS) -c -S $< -o $@

all: divsf3.o divdf3.o divsf3.S divdf3.S

clean:
	rm -f *.S *.o
