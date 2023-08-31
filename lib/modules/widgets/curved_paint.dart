import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';

class CurvedPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = AppColors.painter
      ..strokeWidth = 15;

    var path = Path();

    path.moveTo(
      0,
      size.height,
    );
    path.quadraticBezierTo(
      size.width * 0.3,
      size.height * 0.9,
      size.width * 0.48,
      size.height * 0.93,
    );
    path.quadraticBezierTo(
      size.width * .9,
      size.height,
      size.width * 1.0,
      size.height * 0.7,
    );
    path.lineTo(
      size.width,
      size.height,
    );
    path.lineTo(
      0,
      size.height,
    );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
