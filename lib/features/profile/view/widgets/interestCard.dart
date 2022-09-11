import 'package:flutter/material.dart';

class InterestListCard extends StatelessWidget {
  InterestListCard({Key? key}) : super(key: key);
  List<String> interestList = ['Sport Nutritions', 'Fat-loss', 'General Well being','Muscle-gain'];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: interestList.length,
        itemBuilder: (context,index)=>Container(
          margin: EdgeInsets.only(left: 10),
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          decoration: BoxDecoration(
            color: Color(0xff222222),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Text(interestList[index], style: TextStyle(color: Colors.white,fontSize: 13)),
        ));
  }
}
