import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String buttonName;
  final Color color;
  final Color nameColor;
  final void Function()? onPressed;
  const AppButton(
      {Key? key,
      required this.onPressed,
      required this.buttonName,
      this.color = Colors.blue,
      this.nameColor = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          shadowColor: MaterialStateProperty.all(Colors.black),
          // splashFactory: NoSplash.splashFactory,
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0)))),
      child: Text(buttonName, style: TextStyle(color: nameColor)),
    );
  }
}
