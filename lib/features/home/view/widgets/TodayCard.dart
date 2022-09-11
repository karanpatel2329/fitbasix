import 'package:flutter/material.dart';

import '../../../../utils.dart';

class TodayDateCard extends StatelessWidget {
  const TodayDateCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Today",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w600),),
          Text(Utlis.NameOfMonth(DateTime.now().month)+" "+DateTime.now().day.toString(),style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w600),)
        ],
      ),
    );
  }
}
