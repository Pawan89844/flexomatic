import 'package:flutter/material.dart';

class BackgroundBuild extends StatelessWidget {
  final Widget child;
  final String image;
  const BackgroundBuild({
    Key? key,
    required this.size,
    required this.child,
    required this.image,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        child: child);
  }
}
