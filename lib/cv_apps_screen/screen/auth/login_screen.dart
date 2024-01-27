import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hive_db/comman/color.dart';
import 'package:hive_db/comman/string.dart';
import 'package:hive_db/cv_apps_screen/screen/auth/signin_screen.dart';
import 'package:hive_db/cv_apps_screen/widgets/custom_button.dart';
import 'package:hive_db/cv_apps_screen/widgets/stylist_container.dart';

import '../../widgets/custom_textformfiled.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: bgColor,
      body: Container(
        height: height,
        child: Stack(
          children: [
            Positioned(
              top: -MediaQuery.of(context).size.height * .40,
              right: -MediaQuery.of(context).size.width * .2,
              child: BezierContainer(),
            ),
            Positioned(
              top: 300,
              left: 15,
              right: 15,
              child: Container(
                height: MediaQuery.of(context).size.height * .45,
                width: MediaQuery.of(context).size.height,
                child: Opacity(
                    opacity: 0.1, child: SvgPicture.asset(SmallSplashimg)),
              ),
            ),
            Positioned(
              top: 330,
              left: 25,
              right: 25,
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        WelcomeBack,
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 36,
                            color: fontColor),
                      ),
                      Text(
                        LoginToYourAccount,
                        style: TextStyle(
                            color: Colors.grey.shade600, fontSize: 19),
                      ),
                      SizedBox(height: height * .1),
                      CustomTextFormFiled(
                        hintText: FullName,
                        icon: Icons.person,
                      ),
                      SizedBox(height: 15),
                      CustomTextFormFiled(
                        hintText: Password,
                        icon: Icons.lock,
                        suffixIcon: Icon(Icons.visibility),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                ForgetPassword,
                                style: TextStyle(color: fontColor),
                              )),
                        ],
                      ),
                      SizedBox(height: height * .1),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 38.0),
                        child: CustomButton(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignInScreen(),
                                ));
                          },
                          title: Login,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text.rich(TextSpan(
                          text: DontHaveAnAccount,
                          style: TextStyle(
                              fontSize: 18, color: Colors.grey.shade600),
                          children: [
                            TextSpan(
                                text: "SignIn",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    decoration: TextDecoration.underline))
                          ]))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
