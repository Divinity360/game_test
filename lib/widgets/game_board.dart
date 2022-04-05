import 'package:flutter/cupertino.dart';
import 'package:genius_crew_tictactoe/providers/game_provider.dart';
import 'package:genius_crew_tictactoe/widgets/cards/game_item_card.dart';

class GameBoard extends StatelessWidget {
  final GameProvider gameProvider;
  const GameBoard({
    Key? key,
    required this.gameProvider
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GridView.builder(
          padding: const EdgeInsets.all(10.0),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1.0,
              crossAxisSpacing: 9.0,
              mainAxisSpacing: 9.0),
          itemCount: gameProvider.gameBoardCells.length,
          itemBuilder: (context, i) {
            final itemCard = gameProvider.gameBoardCells.elementAt(i);
            return GameItemCard(
                model: itemCard,
                onCardTap: () =>
                    gameProvider.playGame(itemCard, context));
          },
        ));
  }
}