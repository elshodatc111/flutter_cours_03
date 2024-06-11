import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lessen_app_02/class/rgb.dart';
import 'package:lessen_app_02/widget/regiter.dart';

class Profel extends StatefulWidget {
  const Profel({super.key});

  @override
  State<Profel> createState() => _ProfelState();
}

class _ProfelState extends State<Profel> {
  bool isCkeck1 = false;
  bool isCkeck2 = false;
  bool isCkeck3 = false;
  bool isCkeck4 = false;
  bool isCkeck5 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RGB.bgColor,
      body: Stack(
        children: [
          Container(
            color: RGB.buttonColor,
            alignment: Alignment.topLeft,
            child: Image.asset('assets/images/shape.png'),
          ),
          Container(
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: Get.height * 0.15),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/profel.png',
                  height: 150,
                  width: 150,
                ),
                Text(
                  "Welcome Jeegar goyani",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: RGB.buttonTextColor, fontSize: 18),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            color: RGB.bgColor,
            margin: EdgeInsets.only(top: Get.height * 0.35),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: Get.height*0.02,top: Get.height*0.02,right: Get.height*0.02),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Task list',style: TextStyle(fontWeight: FontWeight.w700),),
                      Text('Good Afternoon',style: TextStyle(fontWeight: FontWeight.w700),),
                    ],
                  ),
                ),
                SizedBox(height: Get.height*0.03,),
                Image.asset('assets/images/clock.png'),
                SizedBox(height: Get.height*0.03,),
                Container(
                  width: Get.width*0.9,
                  padding: EdgeInsets.all(Get.height*0.01),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Daily Task",style: TextStyle(fontSize: 18),),
                          Icon(Icons.add,color: RGB.buttonColor,size: 24,),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                              value: isCkeck1,
                              onChanged: (bool? value){
                                setState(() {
                                  isCkeck1 = value!;
                                });
                              }
                          ),
                          Text('Learning Programming by 12PM'),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                              value: isCkeck2,
                              onChanged: (bool? value){
                                setState(() {
                                  isCkeck2 = value!;
                                });
                              }
                          ),
                          Text('Learn how to cook by 1PM'),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                              value: isCkeck3,
                              onChanged: (bool? value){
                                setState(() {
                                  isCkeck3 = value!;
                                });
                              }
                          ),
                          Text('Learn how to play at 2PM'),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                              value: isCkeck4,
                              onChanged: (bool? value){
                                setState(() {
                                  isCkeck4 = value!;
                                });
                              }
                          ),
                          Text('Have lunch at 4PM'),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                              value: isCkeck5,
                              onChanged: (bool? value){
                                setState(() {
                                  isCkeck4 = value!;
                                });
                              }
                          ),
                          Text('Going to travel 6PM'),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
