import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final Function() onTap;

  const PrimaryButton({Key? key, required this.text, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        child: Text(
          text,
          style: const TextStyle(
              fontFamily: 'GoogleSans',
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.w900),
        ),
        color: Colors.white,
        padding: const EdgeInsets.all(20.0),
        onPressed: onTap);
  }
}