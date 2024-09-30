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

# Directories
SRC_DIR = src/
OBJ_DIR = obj/

# Source files
SRC =	$(SRC_DIR)ft_printf.c	$(SRC_DIR)ft_numbers.c \
		$(SRC_DIR)ft_basics.c	$(SRC_DIR)ft_hexadecimals.c

# Object files (flattening the directory structure)
OBJS = $(patsubst $(SRC_DIR)%.c,$(OBJ_DIR)%.o,$(SRC))

# All target
all: $(NAME)

# Rule to create the library from object files
$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

# Pattern rule for compiling object files
$(OBJ_DIR)%.o: $(SRC_DIR)%.c | $(OBJ_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

# Ensure the object directory exists
$(OBJ_DIR):
	@mkdir -p $(OBJ_DIR)

# Clean object files
clean:
	@echo "🧹 Cleaning object files..."
	$(CLEAN) $(OBJ_DIR)

# Clean everything including the library
fclean: clean
	@echo "🗑️ Removing archive $(NAME)..."
	$(CLEAN) $(NAME)

# Rebuild everything
re: fclean all

.PHONY: all clean fclean re
