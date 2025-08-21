import 'package:flutter/material.dart';
import 'package:pure_soft/core/utils/app_color.dart';

class DashLine extends CustomPainter {
  final bool isVertical;

  /// الافتراضي أفقي
  DashLine({this.isVertical = false});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColor.gray
      ..strokeWidth = 1;

    const dashLength = 6;
    const dashSpace = 3;
    double start = 0;

    if (isVertical) {
      // خط عمودي
      while (start < size.height) {
        canvas.drawLine(
          Offset(0, start),
          Offset(0, start + dashLength),
          paint,
        );
        start += dashLength + dashSpace;
      }
    } else {
      // خط أفقي
      while (start < size.width) {
        canvas.drawLine(
          Offset(start, 0),
          Offset(start + dashLength, 0),
          paint,
        );
        start += dashLength + dashSpace;
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
