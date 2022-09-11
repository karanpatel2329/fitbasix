import 'dart:io';

import 'package:fitbasix/features/profile/view/widgets/followerAndFollowing.dart';
import 'package:fitbasix/features/profile/view/widgets/interestCard.dart';
import 'package:fitbasix/features/profile/view/widgets/topContainer.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  void checkPermission()async{
    PermissionStatus result;
    if (Platform.isAndroid) {
      result = await Permission.storage.request();
    } else {
      result = await Permission.photos.request();
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    checkPermission();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding:const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TopContainer(),
                SizedBox(
                  height: height * 0.09+50,
                ),
              const FollowerAndFollowingCount(),
              const  Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text("Interested In", style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w400)),
                ),
                SizedBox(
                  height: 35,
                  child: InterestListCard(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


