import 'package:get/get.dart';

class FriendPlayController extends GetxController {
  var board = List.filled(9, '').obs; // 3x3 board
  var currentPlayer = 'X'.obs;
  var gameStatus = ''.obs;

  // Make move
  void makeMove(int index) {
    if (board[index] == '' && gameStatus.value == '') {
      board[index] = currentPlayer.value;
      if (checkWin()) {
        gameStatus.value = 'Player ${currentPlayer.value} Wins!';
      } else if (!board.contains('')) {
        gameStatus.value = 'Draw';
      } else {
        currentPlayer.value = currentPlayer.value == 'X' ? 'O' : 'X'; // Switch turn
      }
    }
  }

  // Check win conditions
  bool checkWin() {
    List<List<int>> winConditions = [
      [0, 1, 2], [3, 4, 5], [6, 7, 8], // Rows
      [0, 3, 6], [1, 4, 7], [2, 5, 8], // Columns
      [0, 4, 8], [2, 4, 6] // Diagonals
    ];

    for (var condition in winConditions) {
      if (board[condition[0]] == currentPlayer.value &&
          board[condition[1]] == currentPlayer.value &&
          board[condition[2]] == currentPlayer.value) {
        return true;
      }
    }
    return false;
  }

  // Reset the game
  void resetGame() {
    board.value = List.filled(9, '');
    gameStatus.value = '';
    currentPlayer.value = 'X'; // Player X always starts
  }
}
