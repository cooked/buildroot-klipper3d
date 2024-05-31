# Helper Makefile to pre-compile compile-on-time C source code 

CFLAGS = -Wall -g -O2 -shared -fPIC -flto -fwhole-program -fno-use-linker-plugin

SSE_FLAGS = -mfpmath=sse -msse2

SRCS = $(wildcard $(DIR)/*.c)

OBJS = $(SRCS:.c=.o)

$(DIR)/c_helper.so: $(SRCS)
	$(CC) $(CFLAGS) -I$(DIR) -o $@ $^
