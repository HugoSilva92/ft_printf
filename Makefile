# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: huolivei <huolivei <marvin@42.fr>>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/04 12:16:46 by huolivei          #+#    #+#              #
#    Updated: 2022/12/04 13:00:03 by huolivei         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf
SRCS = ft_printf.c ft_printf_formats.c ft_printfhex.c ft_printf_ptrunin.c
OBJS = $(SRCS:.c=.o)

CC = cc
CFLAGS = -Wall -Wextra -Werror
ARFLAGS = -rcs
RM = rm -rf

all: $(NAME)

$(NAME): $(OBJS)
	ar $(ARFLAGS) $(NAME).a $(OBJS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	$(RM) $(OBJS) $(OBJS_BONUS)

fclean: clean
	$(RM) $(NAME).a $(NAME).so

re: fclean all

.PHONY: all, clean, fclean, re
