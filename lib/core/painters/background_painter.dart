import 'package:flutter/material.dart';

class BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    Path path = Path();
    double topCircleWidth = size.width * .9;
    double topCircleHeight = size.height * .28;
    path.lineTo(0, topCircleHeight);
    path.quadraticBezierTo(topCircleHeight, topCircleHeight, topCircleWidth, 0);

    double bottomCircleHeight = size.height - 100;
    double leftSpace = size.width * .08;
    path.moveTo(size.width, bottomCircleHeight);
    path.quadraticBezierTo(
      size.width * .23,
      bottomCircleHeight,
      leftSpace,
      size.height,
    );
    path.lineTo(size.width, size.height);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
