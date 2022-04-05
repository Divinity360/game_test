import 'package:genius_crew_tictactoe/models/game_item_model.dart';

class Constants {
  static final _cellOne = GameItemModel(id: 1);
  static final _cellTwo = GameItemModel(id: 2);
  static final _cellThree = GameItemModel(id: 3);
  static final _cellFour = GameItemModel(id: 4);
  static final _cellFive = GameItemModel(id: 5);
  static final _cellSix = GameItemModel(id: 6);
  static final _cellSeven = GameItemModel(id: 7);
  static final _cellEight = GameItemModel(id: 8);
  static final _cellNine = GameItemModel(id: 9);

  
  /// Arrays of player's move combinations that equals a win
  static List<List<GameItemModel>> winStates = [
    [_cellOne, _cellTwo, _cellThree],
    [_cellFour, _cellFive, _cellSix],
    [_cellSeven, _cellEight, _cellNine],
    [_cellOne, _cellFour, _cellSeven],
    [_cellTwo, _cellFive, _cellEight],
    [_cellThree, _cellSix, _cellNine],
    [_cellOne, _cellFive, _cellNine],
    [_cellThree, _cellFive, _cellSeven]
  ];
}
