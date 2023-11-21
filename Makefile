# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ssandova <ssandova@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/30 19:16:06 by ssandova          #+#    #+#              #
#    Updated: 2023/11/21 18:13:05 by ssandova         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
CFLAGS = -Wall -Werror -Wextra
CC = gcc
CLEAN = rm -Rf
SRC =	ft_printf.c	ft_numbers.c \
		ft_basics.c	ft_hexadecimals.c \
			
OBJS := $(SRC:.c=.o)

all: 		$(NAME)

$(NAME): $(OBJS)
		ar rcs $(NAME) $(OBJS)

$(OBJS): %.o: %.c
		$(CC) -c $(CFLAGS) $^ -o $@

clean:
	$(CLEAN) ./*.o

fclean: clean
	$(CLEAN) ./*.a

re: fclean all

.PHONY: all clean fclean re 