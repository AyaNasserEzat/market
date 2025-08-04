import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/text_style.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 412.w,
        height: 115.h,
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.2), blurRadius: 2),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: [
              CircleAvatar(
                radius: 35,
                backgroundColor: Color(0xffFFF3C9),
                child: SvgPicture.asset("assets/images/delivring_icon.svg"),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text("#8967456-78 ", style: CustomTextStyle.bold19),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "9 Sep  ",
                        style: CustomTextStyle.regular.copyWith(fontSize: 16),
                      ),
                      CircleAvatar(backgroundColor: AppColor.gray, radius: 2),
                      Text(
                        "4 items",
                        style: CustomTextStyle.regular.copyWith(
                          fontSize: 16,
                          color: AppColor.gray,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Stauts:",
                        style: CustomTextStyle.regular.copyWith(fontSize: 16),
                      ),
                      Text(
                        "Delivaring",
                        style: CustomTextStyle.regular.copyWith(fontSize: 16,color: Color(0xffFEC500)),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(width: 50.w),
              CircleAvatar(
                radius: 30,
                backgroundColor: Color(0xffFEC500),
                child: CustomPaint(
                  size: Size(25, 25),
                  painter: rect(),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: AppColor.white,
                    size: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class rect extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint =
        Paint()
          ..color = Colors.white
          ..style =
              PaintingStyle
                  .stroke // أو fill لو عايزة ممتلي
          ..strokeWidth = 1;

    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
