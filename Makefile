# Compiler to use
CC = gcc

# Compiler flags
CFLAGS = -Wall -Wextra -g

# Target executables
TARGETS = sjf_scheduler rr_scheduler

# Default target
all: $(TARGETS)

# Rule for SJF scheduler
sjf_scheduler: SJF_inital.c
	$(CC) $(CFLAGS) -o $@ $<

# Rule for RR scheduler
rr_scheduler: RR_inital.c
	$(CC) $(CFLAGS) -o $@ $<

# Clean rule
clean:
	rm -f $(TARGETS) *.o

# Phony targets
.PHONY: all clean