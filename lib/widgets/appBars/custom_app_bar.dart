import 'package:flutter/material.dart';
import 'package:genius_crew_tictactoe/utils/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double height;

  const CustomAppBar({Key? key, required this.title, required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      shadowColor: Colors.black12,
      title: Text(title,
          style: const TextStyle(
              fontFamily: 'GoogleSans',
              color: AppColors.grey,
              fontWeight: FontWeight.w600)),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
