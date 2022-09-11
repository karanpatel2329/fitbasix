import 'dart:async';

import 'package:fitbasix/features/home/view/widgets/bottomCard.dart';
import 'package:fitbasix/features/home/view/widgets/caloriesConsumedCard.dart';
import 'package:fitbasix/features/home/view/widgets/topBar.dart';
import 'package:fitbasix/features/home/view/widgets/userInfo.dart';
import 'package:fitbasix/features/home/view/widgets/waterConsumedCard.dart';
import 'package:fitbasix/features/home/view/widgets/waterEffect.dart';
import 'package:fitbasix/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopBar(),
              SizedBox(
                height: 20,
              ),
              UserInfoCard(),
              SizedBox(
                height: 30,
              ),
              Container(
                color: Color(0xff222222),
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   const Text("You can get a lot more out of it\nStart with our demo plan",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w400)),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color(0xff418a48),
                      ),
                      child: Text("Take Demo",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w400),),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    WaterConsumedCard(),
                    CaloriesCard(),
                  ],
                ),
              ),

             BottomCard(),
            ],
          ),
        ),
      ),
    );
  }
}


