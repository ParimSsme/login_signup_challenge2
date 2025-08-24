import 'package:flutter/material.dart';

class BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    Path path = Path();
    double topWidth = size.width * .8;
    double topControlPoint = size.width * .6;
    path.lineTo(0, topControlPoint);
    path.quadraticBezierTo(topControlPoint, topControlPoint, topWidth, 0);

    double bottomHeight = size.height - size.width * .6;
    double bottomCtrlPoint = size.width * .2;
    path.moveTo(size.width, bottomHeight);
    path.quadraticBezierTo(
      size.width * .4,
      bottomHeight,
      bottomCtrlPoint,
      size.height,
    );
    path.lineTo(size.width, size.height);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
