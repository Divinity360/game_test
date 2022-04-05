import 'package:genius_crew_tictactoe/models/game_item_model.dart';
import 'package:genius_crew_tictactoe/providers/game_provider.dart';
import 'package:genius_crew_tictactoe/utils/constants.dart';


class GameHelper {

  /// Generate new list of [GameItemModel] with empty values
  static List<GameItemModel> generateEmptyCells() {
    return List<GameItemModel>.generate(
        9, (counter) => GameItemModel(id: counter + 1, isEditable: true));
  }


  /// Loop through win states array to check for winner based on player's move
  static Player? checkWinner(List<GameItemModel> player1Selection,
      List<GameItemModel> player2Selection) {

    for (var i = 0; i < Constants.winStates.length; i++) {
      if (player1Selection.contains(Constants.winStates[i][0]) &&
          player1Selection.contains(Constants.winStates[i][1]) &&
          player1Selection.contains(Constants.winStates[i][2])) {
        return Player.one;
      } else if (player2Selection.contains(Constants.winStates[i][0]) &&
          player2Selection.contains(Constants.winStates[i][1]) &&
          player2Selection.contains(Constants.winStates[i][2])) {
        return Player.two;
      }
    }

    return null;
  }
}
