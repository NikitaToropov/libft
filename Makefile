# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cmissy <cmissy@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/09/20 12:47:41 by cmissy            #+#    #+#              #
#    Updated: 2020/09/20 13:28:03 by cmissy           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

# dirs
DIR_S = srcs
DIR_O = objs

INCLUDES = ./includes


# files
C_FILES = ft_memset.c \
	ft_bzero.c \
	ft_memcpy.c \
	ft_memccpy.c \
	ft_memmove.c \
	ft_memchr.c \
	ft_memcmp.c \
	ft_strlen.c \
	ft_strdup.c \
	ft_strcpy.c \
	ft_strncpy.c \
	ft_strcat.c \
	ft_strncat.c \
	ft_strlcat.c \
	ft_strchr.c \
	ft_strrchr.c \
	ft_strstr.c \
	ft_strnstr.c \
	ft_strcmp.c \
	ft_strncmp.c \
	ft_atoi.c \
	ft_isalpha.c \
	ft_isdigit.c \
	ft_isalnum.c \
	ft_isascii.c \
	ft_isprint.c \
	ft_toupper.c \
	ft_tolower.c \
	ft_memalloc.c \
	ft_memdel.c \
	ft_strnew.c \
	ft_strdel.c \
	ft_strclr.c \
	ft_striter.c \
	ft_striteri.c \
	ft_strmap.c \
	ft_strmapi.c \
	ft_strequ.c \
	ft_strnequ.c \
	ft_strsub.c \
	ft_strjoin.c \
	ft_strtrim.c \
	ft_strsplit.c \
	ft_itoa.c \
	ft_putchar.c \
	ft_putstr.c \
	ft_putendl.c \
	ft_putnbr.c \
	ft_putchar_fd.c \
	ft_putstr_fd.c \
	ft_putendl_fd.c \
	ft_putnbr_fd.c \
	ft_lstnew.c \
	ft_lstdelone.c \
	ft_lstdel.c \
	ft_lstadd.c \
	ft_lstiter.c \
	ft_lstmap.c \
	ft_n_len.c \
	ft_num_w.c \
	ft_push_w.c \
	ft_lstpush.c \
	ft_lstlen.c \
	ft_realloc.c \
	ft_isspace.c \
	get_next_line.c \
	ft_strjoin_free.c \
	ft_max.c \
	ft_allisdigit.c \

HEADER = $(INCLUDES)/libft.h
SRCS = $(addprefix $(DIR_S)/,$(C_FILES))
OBJS = $(addprefix $(DIR_O)/,$(C_FILES:.c=.o))\

#libftprintf.a
PRINTF_DIR = ./ft_printf
PRINTF = $(PRINTF_DIR)/libftprintf.a

.PHONY: all clean fclean re reclean force

all: $(NAME)

$(NAME): $(DIR_O) $(OBJS) $(PRINTF)
	ar rc $(NAME) $(OBJS)
	ranlib $(NAME)

$(DIR_O):
	mkdir -p objs

$(DIR_O)/%.o: $(DIR_S)/%.c $(HEADER)
	gcc -Wall -Wextra -Werror -g -I $(INCLUDES) -c $< -o $@

$(PRINTF): force
	make -C $(PRINTF_DIR)
	cp $(PRINTF) $(NAME)

clean:
	rm -rf $(DIR_O)
	make -C $(PRINTF_DIR) clean

fclean: clean
	rm -f $(NAME)
	make -C $(PRINTF_DIR) fclean

re: fclean all
