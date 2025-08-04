import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pure_soft/core/routs/app_routs.dart';
import 'package:pure_soft/core/utils/app_color.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(430, 932),
      
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
       routerConfig: AppRouter.router,
       theme: ThemeData(appBarTheme: AppBarTheme(color: AppColor.white),scaffoldBackgroundColor: AppColor.white),
       
         
      ),
    );
  }
}
