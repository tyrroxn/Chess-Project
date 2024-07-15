/*
** EPITECH PROJECT, 2024
** project_chess
** File description:
** main
*/

#include "my.hpp"


void free_table(char **board, int nb)
{
    for (int i = 0; i < nb; ++i)
        delete[] board[i];
    delete[] board;
}

void create_table(char **board, int nb)
{
    for (int i = 0; i < nb; i++)
        board[i] = new char[nb];
}

void initialize_chess_board(char **board) {

    const char* line = "+--------+";
    const char* row1 = "|TCFQKFCT|";
    const char* row2 = "|PPPPPPPP|";
    const char* empty_row = "|        |";


    std::strcpy(board[0], line);
    std::strcpy(board[1], row1);
    std::strcpy(board[2], row2);
    for (int i = 3; i < 7; ++i)
        std::strcpy(board[i], empty_row);
    std::strcpy(board[7], row2);
    std::strcpy(board[8], row1);
    std::strcpy(board[9], line);
}

void print_table(char **board, int nb) {
    for (int i = 0; i < nb; ++i) {
        for (int j = 0; j < nb; ++j)
            std::cout << board[i][j];
        std::cout << std::endl;
    }
}

int main()
{
    char **board = new char *[10];

    create_table(board, 10);
    initialize_chess_board(board);
    print_table(board, 10);

    return 0;
}
