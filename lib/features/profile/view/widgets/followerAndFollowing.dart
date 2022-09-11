import 'package:flutter/material.dart';

class FollowerAndFollowingCount extends StatelessWidget {
  const FollowerAndFollowingCount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          RichText(text: TextSpan(text: "0", style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),children: [TextSpan(text: "\nFollowers",style:  TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w400)),],),),
          SizedBox(
            width: 20,
          ),
          RichText(text: TextSpan(text: "0", style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),children: [TextSpan(text: "\nFollowing",style:  TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w400)),],),),
        ],
      ),
    );
  }
}
