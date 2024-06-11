import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lessen_app_02/class/rgb.dart';
import 'package:lessen_app_02/widget/regiter.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RGB.bgColor,
      body: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Image.asset('assets/images/circle_02.jpg'),
          ),
          SizedBox(height: Get.height*0.1,),
          Container(
            alignment: Alignment.center,
            child: Image.asset('assets/images/person.jpg',),
          ),
          SizedBox(height: Get.height*0.05,),
          Center(
            child: Container(
              child: Text("Gets things with TODs", style: TextStyle(color: RGB.textColor,fontSize: 22,fontWeight: FontWeight.w700,),),
            ),
          ),
          SizedBox(height: Get.height*0.05,),
          Center(
            child: Container(
              padding: EdgeInsets.only(left: Get.width*0.1,right: Get.width*0.1),
              child:
              Text("Lorem ipsum dolor sit amet consectetur."
                  "Eget sit nec et euismod. Consequat urna quam"
                  "felis interdum quisque. Malesuada adipiscing"
                  "tristique ut eget sed.", textAlign: TextAlign.center,style: TextStyle(color: RGB.textColor,fontSize: 18),),
            ),
          ),
          SizedBox(height: Get.height*0.1,),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Get.to(()=>Register());
              },
              child: Text(
                'Get Started',
                style: TextStyle(color: RGB.buttonTextColor),
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(Get.width * 0.9, Get.height*0.07),
                textStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                elevation: 2,
                backgroundColor: RGB.buttonColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
