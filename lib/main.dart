import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lessen_app_02/class/rgb.dart';
import 'package:lessen_app_02/widget/splash.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      color: RGB.bgColor,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const Splash(),
    );
  }
}

