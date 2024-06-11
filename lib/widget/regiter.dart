import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lessen_app_02/class/rgb.dart';
import 'package:lessen_app_02/widget/login.dart';
import 'package:lessen_app_02/widget/profel.dart';

class Register extends StatefulWidget {
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
          SizedBox(
            height: Get.height * 0.1,
          ),
          Center(
            child: Container(
              child: Text(
                "Welcome to Onboard!",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: RGB.textColor,
                  fontSize: 28,
                ),
              ),
            ),
          ),
          SizedBox(
            height: Get.height * 0.01,
          ),
          Center(
            child: Container(
              padding: EdgeInsets.only(
                  left: Get.width * 0.2, right: Get.width * 0.2),
              child: Text(
                "Let’s help to meet up your tasks.",
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: Get.height * 0.1,
          ),
          Container(
            margin: EdgeInsets.only(
                left: Get.width * 0.05, right: Get.width * 0.05),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 3,
                    color: Colors.white30,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                labelText: "Enter your full name",
              ),
            ),
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          Container(
            margin: EdgeInsets.only(
                left: Get.width * 0.05, right: Get.width * 0.05),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 3,
                    color: Colors.white30,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                labelText: "Enter your Email",
              ),
            ),
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          Container(
            margin: EdgeInsets.only(
                left: Get.width * 0.05, right: Get.width * 0.05),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 3,
                    color: Colors.white30,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                labelText: "Enter Password",
              ),
              obscureText: true,
            ),
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          Container(
            margin: EdgeInsets.only(
                left: Get.width * 0.05, right: Get.width * 0.05),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 3,
                    color: Colors.white30,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                labelText: "Confirm password",
              ),
              obscureText: true,
            ),
          ),
          SizedBox(
            height: Get.height * 0.1,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Get.to(() => Profel());
              },
              child: Text(
                'Register',
                style: TextStyle(color: RGB.buttonTextColor),
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(Get.width * 0.9, Get.height * 0.07),
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
          SizedBox(
            height: Get.height * 0.01,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already have an account ?",style: TextStyle(color: RGB.textColor,fontWeight: FontWeight.w200),),
              TextButton(
                onPressed: () {
                  Get.to(()=>Login());
                },
                child: Text("Sign In",style: TextStyle(color: RGB.buttonColor),),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
