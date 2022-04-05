import 'package:flutter/material.dart';
import 'package:genius_crew_tictactoe/providers/game_provider.dart';
import 'package:genius_crew_tictactoe/utils/colors.dart';
import 'package:genius_crew_tictactoe/widgets/appBars/custom_app_bar.dart';
import 'package:genius_crew_tictactoe/widgets/buttons/primary_button.dart';
import 'package:genius_crew_tictactoe/widgets/game_board.dart';
import 'package:genius_crew_tictactoe/widgets/cards/game_item_card.dart';
import 'package:genius_crew_tictactoe/widgets/banners/winner_banner.dart';
import 'package:provider/provider.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<GameProvider>(
        builder: (context, gameProvider, child) => Scaffold(
            backgroundColor: AppColors.gameBackground,
            appBar: CustomAppBar(
                title: gameProvider.activePlayer == Player.one ? "Player 1's turn" : "Player 2's turn", height: AppBar().preferredSize.height),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                GameBoard(gameProvider: gameProvider),
                WinnerBanner(text: gameProvider.winnerBanner),
                PrimaryButton(
                  text: "RESET",
                  onTap: () => gameProvider.resetGame(),
                )
              ],
            )));
  }
}
