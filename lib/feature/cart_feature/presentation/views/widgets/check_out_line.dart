// import 'package:flutter/widgets.dart';
// import 'package:pure_soft/core/utils/app_color.dart';
// import 'package:timelines_plus/timelines_plus.dart';

// class CheckOutLine extends StatelessWidget {
//   const CheckOutLine({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  SizedBox(
//       height: 100,
//       width: double.infinity,
//       child: Timeline.tileBuilder(
//         theme: TimelineThemeData(
//           direction: Axis.horizontal,
//           connectorTheme: ConnectorThemeData(
//             color: AppColor.gray,
//             thickness: 2,
//           ),
//         ),
//         builder: TimelineTileBuilder.connected(
//           itemCount: steps.length,
//           connectorBuilder: (context, index, _) {
//             return DashedLineConnector(
//               gap: 5,
//               dash: 5,
//               thickness: 1.3,
//               indent: 3.5,
//               endIndent: 3.5,
//               color:AppColor.gray
//             );
//           },
//           indicatorBuilder: (context, index) {
//             return OutlinedDotIndicator(
//               borderWidth: 1.3,
//               size: 20,
//               color: index == currentStep
//                   ? AppColor.green
//                   : AppColor.gray,
//               child: Container(
//                 margin: EdgeInsets.all(5.5),
//                 width: 5,
//                 height: 5,
//                 decoration: BoxDecoration(
//                   color: index == currentStep
//                       ? MyColors.darkGreenColor
//                       : MyColors.timelineGreyColor,

//                   shape: BoxShape.circle,
//                 ),
//               ),
//             );
//           },
//           contentsBuilder: (context, index) => Padding(
//             padding: const EdgeInsets.only(
//               top: 10,
//               left: 22,
//               right: 20,
//               bottom: 10,
//             ),
//             child: Text(
//               steps[index],
//               style: TextStyle(
//                 color: index == currentStep
//                     ? MyColors.darkGreenColor
//                     : MyColors.timelineGreyColor,
//                 fontWeight: index == currentStep
//                     ? FontWeight.bold
//                     : FontWeight.normal,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }