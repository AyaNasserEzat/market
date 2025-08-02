import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pure_soft/core/utils/text_style.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.text, required this.widgets});
final String text;
final List<Widget> widgets;
  @override
  Widget build(BuildContext context) {
    return  AppBar
    (
          leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () { context.pop(); },),
      title: Text(text,style: CustomTextStyle.poppins,),
      centerTitle: true,
      actions: widgets,
    );
  }
}