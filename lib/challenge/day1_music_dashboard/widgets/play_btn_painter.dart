import 'package:flutter/material.dart';

class PlayBtnPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Path path = Path();
    final paint = Paint();
    paint.color = Colors.white;
    path.fillType = PathFillType.evenOdd;

    path.addOval(Rect.fromCircle(
        center: Offset(size.width / 2, size.height / 2), radius: size.width));
    path.moveTo(size.width * .28, size.height * .03);
    path.quadraticBezierTo(
      size.width,
      size.height * .5,
      size.width,
      size.height * .5,
    );
    path.quadraticBezierTo(
        size.width * .28, size.height, size.width * .28, size.height);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
