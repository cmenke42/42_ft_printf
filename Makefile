NAME			:= libftprintf.a
CC				:= cc
RM				:= rm -rf
# -r: Replace or add files in archive
# -s: Add/update object-file index (symbol table) -> faster linking
AR				:= ar -rs

SRC_DIR			:= src
INCLUDES_DIR	:= includes
OBJ_DIR			:= obj
DEPENDENCY_DIR	:= dependencies
LIBFT_DIR		:= libft

LIBFT			:= ${LIBFT_DIR}/libft.a

INCLUDES		:= -I ${INCLUDES_DIR} -I ${LIBFT_DIR}/includes

SRCS := ft_printf.c

OBJS := $(patsubst %.c, ${OBJ_DIR}/%.o, ${SRCS})
DEPS := $(patsubst %.c, ${DEPENDENCY_DIR}/%.d, ${SRCS})

# Production flags
CFLAGS := -Wall -Werror -Wextra
CPPFLAGS = ${INCLUDES}

## Development flags
ifeq ($(LIBFT_PRINTF_DEV), 1)
    # -MMD: Generate dependency file without system header files
    # -MP: Create an empty rule for each header file mentioned in the dependency file,
    #      avoids make errors if a header file is deleted
    # -MF: Specify the output file name for the dependency file
    # $*: Stem of the target, the % part of the pattern rule

    CPPFLAGS += -MMD -MP -MF ${DEPENDENCY_DIR}/$*.d

    CFLAGS += -g -O0
    CFLAGS += -fsanitize=undefined
    CFLAGS += -fsanitize=address

else
    LIBFT_PRINTF_DEV := 0
endif

# Add includes
CFLAGS += ${INCLUDES}

# Rules
all : info library ${NAME}

info:
	@echo "To compile with development flags, run: make LIBFT_PRINTF_DEV=1"
	@echo "LIBFT_PRINTF_DEV: ${LIBFT_PRINTF_DEV}"
	@echo "-----------------------------------"

library:
	${MAKE} -C ${LIBFT_DIR}

# $? -> list of dependencies that are newer than the target
${NAME}: ${LIBFT} ${OBJS}
	cp ${LIBFT} ./${NAME}
	${AR} ${NAME} ${OBJS}

${OBJ_DIR}/%.o: ${SRC_DIR}/%.c | ${OBJ_DIR} ${DEPENDENCY_DIR}
	mkdir -p $(dir $@)
	${CC} ${CFLAGS} ${CPPFLAGS} -c $< -o $@

${OBJ_DIR}:
	mkdir -p ${OBJ_DIR}

${DEPENDENCY_DIR}:
	mkdir -p ${DEPENDENCY_DIR}

clean:
	${RM} ${OBJ_DIR} ${DEPENDENCY_DIR}
	${MAKE} -C ${LIBFT_DIR} clean

fclean:	clean
	${RM} ${NAME}
	${MAKE} -C ${LIBFT_DIR} fclean

re: fclean all

.PHONY: all info library clean fclean re

.NOTPARALLEL:

# Include the dependency files as Makefiles
# (-) No complaints if the dependency file does not exist or cannot be remade
-include ${DEPS}
