# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cmenke <cmenke@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/13 09:41:00 by cmenke            #+#    #+#              #
#    Updated: 2023/01/06 15:19:11 by cmenke           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#ar -r ->replace exising files or create a new one if. 
#ar -c -> silence the information message.
#ar -s -> adds or updates an onject-file index to the archive.

NAME = libftprintf.a

SRC = ft_printf.c

SUBDIR = libft

SUBOBJS = libft/libft.a

OBJS = ${SRC:.c=.o}

CC = cc

RM = rm -f

AR = ar -rc

CFLAGS = -Wall -Werror -Wextra

all :	${SUBDIR} ${NAME}

${NAME}: ${OBJS}
	cp ${SUBOBJS} ./${NAME}
	${AR} ${NAME} ${OBJS}

$(OBJS):
	$(CC) -c $(CFLAGS) ${SRC}

${SUBDIR}:
	cd ${SUBDIR} && ${MAKE}

clean:
	${RM} ${OBJS}
	cd ${SUBDIR} && ${MAKE} clean

fclean:	clean
	${RM} ${NAME}
	cd ${SUBDIR} && ${MAKE} fclean

re: fclean all

.PHONY: all clean fclean re ${SUBDIR}