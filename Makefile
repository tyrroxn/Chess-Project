##
## EPITECH PROJECT, 2024
## stumper4
## File description:
## Makefile
##

SRC = 	src/main.cpp

SRC_TESTS =	$(SRC)
SRC_TESTS	+=	tests/test.c

SRC_MAIN = 	$(SRC)
SRC_MAIN += src/main.c


NAME	=	chess

NAME_CRIT	=	unit_tests

CFLAGS	=	-I./includes/

CPPFLAGS = -Wall -Wextra -Werror -std=c++17

LDLIB	=	-lcriterion --coverage

all:	$(NAME)

$(NAME):	$(SRC)
	g++ -o $(NAME) $(SRC) $(CFLAGS) $(CPPFLAGS)

unit_tests:
	g++ -o $(NAME_CRIT) $(SRC_TESTS) $(LDLIB)

tests_run:	unit_tests
	./$(NAME_CRIT)

debug:	CPPFLAGS += -g
debug:	re

clean:
	rm -f $(OBJ)
	rm -f  src/*.o
	rm -f tests/*.o
	rm -f *.gcno
	rm -f *.gcda
	rm -f *.cor
	rm -f *.log
	rm -f test

fclean:	clean
	rm -f $(NAME) *.o
	rm -f *.gcno
	rm -f *.gcda
	rm -f $(NAME_CRIT) *.o
	rm -f *.gcov

re:	fclean all clean

.PHONY: all clean fclean re tests_run unit_tests
