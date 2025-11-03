// import 'package:flutter/material.dart';
// import 'package:pure_soft/core/utils/app_color.dart';

// class CustomSilderIndecator extends StatelessWidget {
//   const CustomSilderIndecator({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  ListView.separated(
            
//             itemCount: state.banner.length,
//             scrollDirection: Axis.horizontal,
//             itemBuilder: (context,index){
           
//                 final bool isActive = index == _current;
//             return GestureDetector(
//                     onTap: () => _controller.animateToPage(index,
//                         duration: Duration(milliseconds: 300), curve: Curves.ease),
//                     child: AnimatedContainer(
//                       duration: Duration(milliseconds: 300),
//                       margin: EdgeInsets.symmetric(horizontal: 6),
//                       width:  13,
//                       height: 13,
//                       decoration: BoxDecoration(
//                         border: Border.all(color: AppColor.green),
//                         color: isActive ? AppColor.green : AppColor.white,
//                         borderRadius: BorderRadius.circular(12),
//                         boxShadow: isActive
//                             ? [
//                                 BoxShadow(
//                                   color: Colors.black26,
//                                   blurRadius: 4,
//                                   offset: Offset(0, 2),
//                                 ),
//                               ]
//                             : [],
//                       ),
//                     ),
//                   );
//           }, separatorBuilder: (BuildContext context, int index) { 
//             return SizedBox(width: 3,);
//            },);
//   }
// }