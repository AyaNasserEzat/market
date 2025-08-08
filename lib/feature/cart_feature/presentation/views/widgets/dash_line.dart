
import 'package:flutter/material.dart';
import 'package:pure_soft/core/utils/app_color.dart';

class DashLine extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint =
        Paint()
          ..color = AppColor.gray
          ..strokeWidth = 1;
    const dashWidth = 6;
    const dashSpace = 3;
    double start = 0;
    while (start < size.width) {
      canvas.drawLine(Offset(start, 0), Offset(start + dashWidth, 0), paint);
      start += dashSpace + dashWidth;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}