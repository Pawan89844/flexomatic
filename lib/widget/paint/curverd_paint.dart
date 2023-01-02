import 'package:flutter/material.dart';

class CurvedPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.deepPurple
      ..strokeWidth = 15
      ..style = PaintingStyle.fill;
    var path = Path();
    // path.lineTo(size.width, size.height);
    path.lineTo(0, size.height - 100.0);
    var firstStart = Offset(size.width / 5, size.height + 10);
    var firstEnd = Offset(size.width / 2.25, size.height - 50.0);

    path.quadraticBezierTo(
        firstStart.dx,
        firstStart.dy,
        firstEnd.dx,
        firstEnd
            .dy /* size.width * 0.25, size.height * 0.7,
        size.width * 0.5, size.height * 0.8 */
        );

    var secondStart =
        Offset(size.width - (size.width / 3.24), size.height - 105.0);
    var secondEnd = Offset(size.width, size.height - 10.0);

    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
    path.lineTo(size.width, 0);
    path.close();
    // path.quadraticBezierTo(size.width * 0.75, size.height * 0.9,
    //     size.width * 1.0, size.height * 0.8);

    // path.moveTo(0, size.height * 0.5);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
