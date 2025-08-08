import 'package:flutter/material.dart';
import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/text_style.dart';

import 'package:pure_soft/feature/cart_feature/presentation/views/widgets/circle_indicator.dart';
import 'package:pure_soft/feature/cart_feature/presentation/views/widgets/dash_line.dart';

class CustomDashLine extends StatefulWidget {
  const CustomDashLine({super.key, required this.text, required this.index, required this.currentIndex});
  final String text;
  final int index;
  final int currentIndex;
  @override
  State<CustomDashLine> createState() => _CustomDashLineState();
}

class _CustomDashLineState extends State<CustomDashLine>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isActive=widget.index==widget.currentIndex;
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Align(
                    alignment: Alignment.centerLeft,
                child: CircleIndicator(isActive: isActive,)),
              if (widget.index < 2) ...[
                Expanded(child: CustomPaint(painter: DashLine())),
              ],
            ],
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(widget.text, style: isActive? CustomTextStyle.regular.copyWith(color: AppColor.green): CustomTextStyle.regular),
          ),
        ],
      ),
    );
  }
}
