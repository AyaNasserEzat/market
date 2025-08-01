import 'package:flutter/material.dart';
import 'package:pure_soft/core/utils/app_color.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 412,
      height: 104,
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
          spacing: 20,
          children: [
            CircleAvatar(radius: 50),
            Column(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [Text("Saller Name"), Icon(Icons.car_crash)]),
                Row(
                  children: [
                    Icon(Icons.star, size: 10),
                    Text("delivercharge:34kg"),
                  ],
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "open",
                        style: TextStyle(color: AppColor.green),
                      ),
                         TextSpan(
                        text: " pizza",
                        style: TextStyle(color: AppColor.blue),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("4.5"),
                Row(children: [
                  Text("23KM"),
            SizedBox(height: 50,),
                  Icon(Icons.location_city)
                ],)
              ],
            )
          ],
          
        ),
      ),
    );
  }
}
