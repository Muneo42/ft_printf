# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jopaning <jopaning@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/09/02 15:52:05 by jopaning          #+#    #+#              #
#    Updated: 2020/09/03 14:40:49 by jopaning         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SRC_FILES = ft_printf.c \
		others/ft_put_ct.c \
		others/ft_verif_conv.c \
		others/ft_args.c \
		others/ft_precision.c \
		others/ft_utils.c \
		conversions/ft_conv_c.c \
		conversions/ft_conv_d.c \
		conversions/ft_conv_p.c \
		conversions/ft_conv_s.c \
		conversions/ft_conv_u.c \
		conversions/ft_conv_x.c \
		libft/ft_atoi.c \
		libft/ft_putstr_fd.c \
		libft/ft_strdup.c \
		libft/ft_strndup.c \
		libft/ft_toupper.c \
		libft/ft_isdigit.c \
		libft/ft_strcmp.c \
		libft/ft_strjoin.c \
		libft/ft_strnew.c \
		libft/ft_putchar_fd.c \
		libft/ft_strdel.c \
		libft/ft_strlen.c \
		libft/ft_tolower.c \
		libft/ft_itoa_base.c \

OBJ_FILES = $(SRC_FILES:.c=.o)

all: $(NAME)

$(NAME) : $(OBJ_FILES)
	ar rc $(NAME) $?

%.o: %.c
	gcc -Wall -Wextra -Werror -I ft_printf.h -o $@ -c $<

clean:
	rm -f $(OBJ_FILES)

fclean: clean
	rm -f $(NAME)

re: fclean all
