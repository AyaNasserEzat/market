import 'package:flutter/material.dart';

import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/text_style.dart';
import 'package:pure_soft/feature/home/presentaion/views/widgets/custom_circle_container.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isLandScape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(right: 8, left: 8),
      child: Container(
        height: 115,
        width: 401,
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Color(0x40000000),
              blurRadius: 4,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, bottom: 8, top: 8),
          child: Row(
            spacing: 5,
            children: [
              CustomCircleContainer(),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 5,

               children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Product Name ",
                        style: CustomTextStyle.titilliumWebBoldBlack19.copyWith(
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        width:
                 MediaQuery.of(context).size.width>600?100:    screenWidth * .30,
                      ),
                      //Spacer(),
                      InkWell(child: Icon(Icons.delete_forever)),
                      //IconButton(onPressed: () {}, icon: Icon(Icons.delete_forever)),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "12.00 KD  ",
                        style: CustomTextStyle.regularTitilliumWeb,
                      ),
                      Text(
                        " 14.00 KD",
                        style: CustomTextStyle.regularTitilliumWeb.copyWith(
                          decoration: TextDecoration.lineThrough,
                          color: Color(0xffD1D1D1),
                          decorationColor: Color(0xffD1D1D1),
                        ),
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      Container(
                        width: 102,
                        height: 22,
                        decoration: BoxDecoration(
                          color: AppColor.pink,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: Text(
                            "up to 50 off%",
                            style: CustomTextStyle.simebold12,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width>600?
 MediaQuery.of(context).size.width * .0500:40,
                      ),
                      Container(
                        height: 30,
                        width:100,
                        decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(50),

                          boxShadow: [
                            // ignore: deprecated_member_use
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 2,
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8),
                          child: Row(
                            spacing: 10,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.remove,
                                color: AppColor.gray,
                                size: 16,
                              ),
                              Text("1"),
                              Icon(Icons.add, color: AppColor.gray, size: 15),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
