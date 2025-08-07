import 'package:flutter/material.dart';
import 'package:pure_soft/core/utils/text_style.dart';
import 'package:pure_soft/feature/cart_feature/presentation/views/check_out_view.dart';
import 'package:pure_soft/feature/cart_feature/presentation/views/widgets/circle_indicator.dart';

class CustomDashLine extends StatefulWidget {
  const CustomDashLine({super.key, required this.text, required this.index});
  final String text;
  final int index;
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
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Align(
                    alignment: Alignment.centerLeft,
                child: CircleIndicator()),
              if (widget.index < 3) ...[
                Expanded(child: CustomPaint(painter: DashLine())),
              ],
            ],
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(widget.text, style: CustomTextStyle.regular),
          ),
        ],
      ),
    );
  }
}
