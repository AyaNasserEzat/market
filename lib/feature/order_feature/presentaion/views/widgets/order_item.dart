import 'package:flutter/material.dart';


import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/text_style.dart';
import 'package:pure_soft/feature/order_feature/data/model/order_stlye_model.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({super.key, required this.orderStlyeModel});
final OrderStlyeModel orderStlyeModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          context.push("/orderTraking",);
        },
        child: Container(

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
                  backgroundColor: orderStlyeModel.color2,
                  child: SvgPicture.asset(orderStlyeModel.icon!),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("#8967456-78 ", style: CustomTextStyle.bold19),
                    Row(
            
                      children: [
                        Text(
                          "9 Sep ",
                          style: CustomTextStyle.regular.copyWith(fontSize: 16),
                        ),
                        CircleAvatar(backgroundColor: AppColor.gray, radius: 2),
                        Text(
                          " 4 items",
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
                         orderStlyeModel.status!,
                          style: CustomTextStyle.regular.copyWith(fontSize: 16,color: orderStlyeModel.color1),
                        ),
                      ],
                    ),
                  ],
                ),
           Spacer(),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: orderStlyeModel.color1,
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
