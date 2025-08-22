import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pure_soft/core/routs/app_routs.dart';
import 'package:pure_soft/core/services/notification_services.dart';
import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/firebase_options.dart';


void main() async{
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await NotificationServices.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      builder: (context, child) {
        // print('SafeArea builder called.');
        // print('Platform.isAndroid: ${Platform.isAndroid}');

        return SafeArea(
          top: false,
          bottom: Platform.isAndroid ? true : false,
          child: child!,
        );
      },
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        routerConfig: AppRouter.router,
        theme: ThemeData(
          appBarTheme: AppBarTheme(color: AppColor.white),
          scaffoldBackgroundColor: AppColor.white,
        ),
      ),
    );

  }
}
