import 'package:flutter/material.dart';

class BottomCard extends StatelessWidget {
  const BottomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        color: Color(0xff222222),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(textAlign: TextAlign.center,text:const TextSpan(text: "Today'r required calorie consumption",children: [
            TextSpan(text: '\n2596 kCal',style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w700),)
          ],
            style: TextStyle(color: Colors.white,fontSize: 17,),
          ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    radius: 23,
                    backgroundColor: Colors.yellow.withOpacity(0.1),
                    child: Image.asset('assets/images/wheat.png'),
                  ),
                  SizedBox(height: 10,),
                  RichText(textAlign: TextAlign.center,text:TextSpan(text: "Carbs",children: [
                    TextSpan(text: '\n259 g',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w700),),
                    TextSpan(text: '\n1038 kCal',style: TextStyle(color: Colors.white.withOpacity(0.5),fontSize: 15,fontWeight: FontWeight.w400),)
                  ],
                    style: TextStyle(color: Colors.white,fontSize: 15,),
                  ),),
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    radius: 23,
                    backgroundColor: Colors.yellow.withOpacity(0.1),
                    child: Image.asset('assets/images/wheat.png'),
                  ),
                  SizedBox(height: 10,),
                  RichText(textAlign: TextAlign.center,text:TextSpan(text: "Carbs",children: [
                    TextSpan(text: '\n259 g',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w700),),
                    TextSpan(text: '\n1038 kCal',style: TextStyle(color: Colors.white.withOpacity(0.5),fontSize: 15,fontWeight: FontWeight.w400),)
                  ],
                    style: TextStyle(color: Colors.white,fontSize: 15,),
                  ),),
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    radius: 23,
                    backgroundColor: Colors.yellow.withOpacity(0.1),
                    backgroundImage: AssetImage('assets/images/butter.png',),
                  ),
                  SizedBox(height: 10,),
                  RichText(textAlign: TextAlign.center,text:TextSpan(text: "Carbs",children: [
                    TextSpan(text: '\n259 g',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w700),),
                    TextSpan(text: '\n1038 kCal',style: TextStyle(color: Colors.white.withOpacity(0.5),fontSize: 15,fontWeight: FontWeight.w400),)
                  ],
                    style: TextStyle(color: Colors.white,fontSize: 15,),
                  ),),
                ],
              )
            ],)

        ],
      ),

    );
  }
}
