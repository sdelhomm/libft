# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sdelhomm <sdelhomm@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/09 10:08:33 by sdelhomm          #+#    #+#              #
#    Updated: 2018/01/18 13:54:40 by sdelhomm         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRCS = ft_atoi.c \
ft_isalpha.c \
ft_isprint.c \
ft_memccpy.c \
ft_memcpy.c \
ft_memset.c \
ft_putendl.c \
ft_putnbr_fd.c \
ft_strcat.c \
ft_strcmp.c \
ft_strdup.c \
ft_striteri.c \
ft_strlen.c \
ft_strncat.c \
ft_strnequ.c \
ft_strrchr.c \
ft_strsub.c \
ft_toupper.c \
ft_bzero.c \
ft_isascii.c \
ft_itoa.c \
ft_memchr.c \
ft_memdel.c \
ft_putchar.c \
ft_putendl_fd.c \
ft_putstr.c \
ft_strchr.c \
ft_strcpy.c \
ft_strequ.c \
ft_strjoin.c \
ft_strmap.c \
ft_strncmp.c \
ft_strnew.c \
ft_strsplit.c \
ft_strtrim.c \
ft_isalnum.c \
ft_isdigit.c \
ft_memalloc.c \
ft_memcmp.c \
ft_memmove.c \
ft_putchar_fd.c \
ft_putnbr.c \
ft_putstr_fd.c \
ft_strclr.c \
ft_strdel.c \
ft_striter.c \
ft_strlcat.c \
ft_strmapi.c \
ft_strncpy.c \
ft_strnstr.c \
ft_strstr.c \
ft_tolower.c \
ft_swap.c \
ft_strjoin_free.c \
ft_strbuild.c \
ft_rev_int.c \
ft_abs.c \
get_next_line.c

SRCPATH = ./src/

OBJ = $(SRCS:.c=.o)

FLAGS = -Wall -Werror -Wextra

all: $(NAME)

$(NAME):
	@gcc -c $(FLAGS) $(addprefix $(SRCPATH),$(SRCS))
	@ar rc $(NAME) $(OBJ)
	@ranlib $(NAME)

clean:
	@/bin/rm -rf $(OBJ)

fclean: clean
	@/bin/rm -rf $(NAME)

re: fclean all

.PHONY: all clean fclean re
