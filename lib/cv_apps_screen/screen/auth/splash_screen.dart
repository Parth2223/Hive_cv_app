import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hive_db/cv_apps_screen/screen/auth/login_screen.dart';
import 'package:hive_db/cv_apps_screen/screen/auth/signin_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 2),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginScreen())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage("assets/images/splashimg.png"),
            fit: BoxFit.cover,
            // opacity: 0.6,
          ),
        ),
        // child: Column(
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Text(""),
        //     // SvgPicture.asset(SmallSplashimg),
        //   ],
        // ),
      ),
    );
  }
}
