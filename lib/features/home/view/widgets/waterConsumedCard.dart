
import 'package:fitbasix/features/home/controller/homeController.dart';
import 'package:fitbasix/features/home/view/widgets/waterEffect.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class WaterConsumedCard extends StatelessWidget {
  WaterConsumedCard({Key? key}) : super(key: key);
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
              Text("Water\nConsumed",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w600),),
              Text("💧"),
            ],),
          Container(
            height: 80,
            width: 40,
            decoration: BoxDecoration(
                color:Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(8))
            ),
            child: WaterEffect(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(() => Text((((4-homeController.waterConsumed.value*-0.01*4)-8)*-1).toDouble().toPrecision(2).toString()+" ltr of 4 ltr",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w600)),),
              InkWell(onTap: (){
                homeController.Decrement();
              },child: Text("+",style: TextStyle(color: Colors.white,fontSize: 28,fontWeight: FontWeight.w600)))
            ],
          )
        ],
      ),
    );
  }
}
