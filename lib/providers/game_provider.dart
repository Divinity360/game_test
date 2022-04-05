import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genius_crew_tictactoe/helper/game_helper.dart';
import 'package:genius_crew_tictactoe/models/game_item_model.dart';

enum Player { one, two }

class GameProvider extends ChangeNotifier {
  List<GameItemModel> _gameBoardCells = GameHelper.generateEmptyCells();
  List<GameItemModel> _player1Selection = [];
  List<GameItemModel> _player2Selection = [];
  Player _activePlayer = Player.one;
  String _winnerBanner = '';

  String get winnerBanner => _winnerBanner;

  List<GameItemModel> get gameBoardCells => _gameBoardCells;

  List<GameItemModel> get player1Selection => _player1Selection;

  List<GameItemModel> get player2Selection => _player2Selection;

  Player get activePlayer => _activePlayer;

  set gameBoardCells(List<GameItemModel> value) {
    _gameBoardCells = value;
    notifyListeners();
  }

  set winnerBanner(String value) {
    _winnerBanner = value;
    notifyListeners();
  }

  set player1Selection(List<GameItemModel> value) {
    _player1Selection = value;
    notifyListeners();
  }

  set player2Selection(List<GameItemModel> value) {
    _player2Selection = value;
    notifyListeners();
  }

  set activePlayer(Player value) {
    _activePlayer = value;
    notifyListeners();
  }

  void playGame(GameItemModel playersSelection, BuildContext context) {
    /// Update Game cell and player selection
    switch (_activePlayer) {
      case Player.one:
        playersSelection.selection = 'x';
        player1Selection.add(playersSelection);
        activePlayer = Player.two;
        break;
      case Player.two:
        playersSelection.selection = 'o';
        player2Selection.add(playersSelection);
        activePlayer = Player.one;
    }

    /// Once selection is made, game cell is uneditable
    playersSelection.isEditable = false;

    /// Check for wins. Once a win or draw is confirmed, update score banner
    Player? winner =
        GameHelper.checkWinner(_player1Selection, _player2Selection);
    if (winner == Player.one) {
      winnerBanner = "Player One Wins";
    } else if (winner == Player.two) {
      winnerBanner = "Player Two Wins";
    } else if ((_gameBoardCells.every((p) => p.selection != ''))) {
      winnerBanner = "Game Tied";
    }

    /// Once winner is selected, make game cells uneditable till reset
    if (winnerBanner.isNotEmpty)
      gameBoardCells.forEach((cell) => cell.isEditable = false);
  }

  /// Reset Game board and states
  resetGame() {
    gameBoardCells = GameHelper.generateEmptyCells();
    player1Selection = [];
    player2Selection = [];
    winnerBanner = '';
  }
}
