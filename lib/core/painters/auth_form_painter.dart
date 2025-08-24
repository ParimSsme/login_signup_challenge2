import 'package:flutter/material.dart';
import 'package:login_signup_challenge2/core/constants/app_colors.dart';

class AuthFormPainter extends CustomPainter {
  final double arrowTopMargin;
  AuthFormPainter(this.arrowTopMargin);

  @override
  void paint(Canvas canvas, Size size) {
    Gradient shader = AppColors.authFormGradient;

    Rect rect = Rect.fromLTWH(0, 0, size.width, size.height);
    Paint paint = Paint()
      ..shader = shader.createShader(rect)
      ..style = PaintingStyle.fill;

    Path path = Path();
    RRect rRect = RRect.fromLTRBAndCorners(
      30,
      0,
      size.width,
      size.height - 20,
      topLeft: const Radius.circular(30),
      bottomLeft: const Radius.circular(30),
    );
    path.addRRect(rRect);

    // --- Shadow for main shape ---
    Paint shadowPaint = Paint()
      ..color = Colors.black.withValues(alpha: 0.3)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 8);
    canvas.drawPath(
        path.shift(const Offset(0, 0)), shadowPaint); // shadow on all sides

    // --- Add arrow ---
    double arrowPoint = arrowTopMargin;
    path.moveTo(30, arrowPoint);
    path.lineTo(5, arrowPoint + 25);
    path.lineTo(30, arrowPoint + 50);

    // --- Shadow for arrow ---
    canvas.drawPath(path.shift(const Offset(-20, -10)), shadowPaint);

    // --- Draw main path ---
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
