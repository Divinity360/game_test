import 'package:flutter/cupertino.dart';
import 'package:genius_crew_tictactoe/utils/colors.dart';

class WinnerBanner extends StatelessWidget {
  final String text;

  const WinnerBanner({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
            fontFamily: 'GoogleSans', color: AppColors.grey, fontSize: 40.0),
      ),
    );
  }
}