##
## Makefile for  in /home/brice/tech2/asm_minilibc
## 
## Made by Brice
## Login   <brice.vandriessche@epitech.eu>
## 
## Started on  Wed Mar 22 16:50:14 2017 Brice
## Last update Thu Mar 23 15:01:16 2017 Brice
##

NAME	=	libasm.so

SRCS	=	memcpy.S	\
		strcmp.S	\
		strlen.S	\
		strncmp.S

ASMFLAGS	=	-f elf64

LDFLAGS		=	-shared

ASM		=	nasm

LD		=	gcc

RM		=	rm -f

OBJS		=	$(SRCS:.S=.o)

%.o: %.S
	$(ASM) -o $@ $< $(ASMFLAGS)

all: $(NAME)

$(NAME):	$(OBJS)
		$(LD) $(LDFLAGS) -o $(NAME) $(OBJS)

clean:
		$(RM) $(OBJS)

fclean:		clean
		$(RM) $(NAME)

re :	fclean all

.PHONY: all clean fclean re
