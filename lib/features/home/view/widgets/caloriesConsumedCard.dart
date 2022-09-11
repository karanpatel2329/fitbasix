
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../../controller/homeController.dart';

class CaloriesCard extends StatelessWidget {
  CaloriesCard({Key? key}) : super(key: key);
  final HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: MediaQuery.of(context).size.width*0.5-20,
      height: 230,
      decoration: BoxDecoration(
          color: Color(0xff222222),
          borderRadius: BorderRadius.all(Radius.circular(8))
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Calories\nBurned",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w600),),
              Text("🔥"),
            ],),
          ClipRect(
              child: Align(
                alignment: Alignment.center,
                heightFactor: 0.41,
                child:Obx(()=>SfRadialGauge(
                    enableLoadingAnimation: true, animationDuration: 4500,
                    axes: <RadialAxis>[
                      RadialAxis(
                        showAxisLine: false,
                        showTicks: false,
                        showLabels: false,
                        startAngle: 180,
                        canScaleToFit: true,
                        endAngle: 0,
                        interval: 10,
                        ranges: <GaugeRange>[
                          GaugeRange(startValue: 0,endValue: homeController.caloriesConsumed.value.toDouble(),color: Colors.orange,startWidth: 10,endWidth: 10),
                          GaugeRange(startValue: homeController.caloriesConsumed.value.toDouble(),endValue: 180,color: Colors.white,startWidth: 10,endWidth: 10),],
                        pointers: <GaugePointer>[NeedlePointer(value:homeController.caloriesConsumed.value.toDouble(),needleColor: Colors.white,needleEndWidth: 4,needleStartWidth: 1,needleLength: 0.8,knobStyle: KnobStyle(color: Colors.green,knobRadius: 0.04), )],
                      )
                    ]
                )),
              )
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(()=>Text((homeController.caloriesConsumed.value*110).toString()+" cal",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w600)),),
              InkWell(onTap: (){
                homeController.IncrementCaloriesConsumed();
              },child: Icon(CupertinoIcons.power,color: Colors.white,))
            ],
          )
        ],
      ),
    );
  }
}

