import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pure_soft/core/utils/app_color.dart';


class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 4), () {
        context.go("/login");
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.green,
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
  Image.asset("assets/images/6666666666 copy 1.png",width: 441.75,height: 223,),
 SizedBox(height: 160,),
  Image.asset("assets/images/343434 1.png",width: 441.75,height: 314.61,)
        ],
      )
    );
  }
}