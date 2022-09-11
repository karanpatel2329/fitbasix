import 'package:fitbasix/features/profile/view/profile.dart';
import 'package:flutter/material.dart';

class UserInfoCard extends StatelessWidget {
  const UserInfoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: [
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen()));
            },
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white,
              child: Image.asset('assets/images/user.png',fit: BoxFit.cover,),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hi Karan",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w500),),
              Text("Let's keep the momentum going!",style: TextStyle(color: Colors.white,fontSize: 14,),)
            ],
          )
        ],
      ),
    );
  }
}