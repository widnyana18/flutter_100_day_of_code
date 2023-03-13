import 'package:flutter/material.dart';
import 'package:path_drawing/path_drawing.dart';

class DashPathPainter extends CustomPainter {
  @override
  bool shouldRepaint(DashPathPainter oldDelegate) => true;

  @override
  void paint(Canvas canvas, Size size) {
    final Paint color = Paint()
      ..color = Colors.white
      ..strokeWidth = 1.0
      ..style = PaintingStyle.stroke;

    final Path p = Path()
      ..moveTo(0, size.height)
      ..quadraticBezierTo(
          size.width * .5, -size.height * .5, size.width, size.height);

    canvas.drawPath(
      dashPath(
        p,
        dashArray: CircularIntervalList<double>(
          <double>[8, 2.5],
        ),
        // dashOffset: DashOffset.percentage(.6),
      ),
      color,
    );
  }
}

class LinePathPainter extends CustomPainter {
  @override
  bool shouldRepaint(LinePathPainter oldDelegate) => true;

  @override
  void paint(Canvas canvas, Size size) {
    final Paint color = Paint()
      ..color = Colors.white
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    final Path p = Path()
      ..moveTo(0, size.height)
      ..quadraticBezierTo(size.width * .26, size.height * .16, size.width * .6,
          size.height * .27);

    canvas.drawPath(
      p,
      color,
    );
  }
}
