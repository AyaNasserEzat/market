import 'package:flutter/material.dart';
import 'package:pure_soft/core/routs/app_routs.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
     routerConfig: AppRouter.router,
     
   
    );
  }
}
