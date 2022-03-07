
# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: akirmizi <42istanbul.com.tr>               +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/01/07 11:05:52 by akirmizi          #+#    #+#              #
#    Updated: 2022/01/13 22:17:48 by akirmizi         ###   ########.tr        #
#                                                                              #
# **************************************************************************** #

SRCS		=	ft_printf.c ft_printf_utils_num.c ft_printf_utils_others.c ft_printf_utils.c\

OBJS		=	${SRCS:.c=.o}

CC			= gcc

RM			= rm -f

CFLAGS		= -Wall -Wextra -Werror

NAME = 		libftprintf.a

all:		${NAME}

$(NAME):	${OBJS}
			ar rc ${NAME} ${OBJS}

clean:
			${RM} ${OBJS}

fclean:		clean
			${RM} ${NAME}

re:			fclean ${NAME}