import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genius_crew_tictactoe/models/game_item_model.dart';

class GameItemCard extends StatelessWidget {
  final GameItemModel model;
  final Function onCardTap;

  const GameItemCard({Key? key, required this.model, required this.onCardTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (model.isEditable) {
          onCardTap();
        }
      },
      child: Container(
          width: 100.0,
          height: 100.0,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(14)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12.withOpacity(0.05),
                  spreadRadius: 0.1,
                  blurRadius: 3,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ]
          ),
          padding: const EdgeInsets.all(8.0),
          child: Center(child: Text(
            model.selection,
            style: const TextStyle(fontFamily: 'GoogleSans', color: Colors.black54, fontSize: 50.0, fontWeight: FontWeight.w700),
          ),) ),
    );
  }
}
