import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hive_db/comman/color.dart';
import 'package:hive_db/comman/string.dart';
import 'package:hive_db/cv_apps_screen/widgets/custom_button.dart';
import 'package:hive_db/cv_apps_screen/widgets/custom_textformfiled.dart';
import 'package:hive_db/cv_apps_screen/widgets/stylist_container.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final GlobalKey Key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: bgColor,
      body: Container(
        height: height,
        child: Stack(
          children: [
            _buildPositionedImg(context),
            _buildRegistation(height),
          ],
        ),
      ),
    );
  }

  Positioned _buildRegistation(double height) {
    return Positioned(
      top: 320,
      left: 25,
      right: 25,
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildRegisterText(),
              _buildCreateYourNewAccount(),
              SizedBox(height: height * .05),
              _buildFullName(),
              SizedBox(height: 25),
              _buildEmailAddress(),
              SizedBox(height: 25),
              _buildPassword(),
              SizedBox(height: 25),
              _buildLoginButton(),
              _buildForgetPassword(),
              SizedBox(height: height * .07),
              _buildDontHaveAnAccount()
            ],
          ),
        ),
      ),
    );
  }

  Text _buildDontHaveAnAccount() {
    return Text.rich(TextSpan(
        text: DontHaveAnAccount,
        style: TextStyle(fontSize: 18, color: Colors.grey.shade600),
        children: [
          TextSpan(
              text: SignIn,
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.underline))
        ]));
  }

  Row _buildForgetPassword() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
            onPressed: () {},
            child: Text(
              ForgetPassword,
              style: TextStyle(color: fontColor),
            )),
      ],
    );
  }

  Padding _buildLoginButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: CustomButton(
        title: Login,
      ),
    );
  }

  CustomTextFormFiled _buildPassword() {
    return CustomTextFormFiled(
      hintText: Password,
      icon: Icons.lock,
      suffixIcon: Icon(Icons.visibility),
    );
  }

  CustomTextFormFiled _buildEmailAddress() {
    return CustomTextFormFiled(
      hintText: EmailAddress,
      icon: Icons.email,
      // suffixIcon: Icon(Icons.visibility),
    );
  }

  CustomTextFormFiled _buildFullName() {
    return CustomTextFormFiled(
      hintText: FullName,
      icon: Icons.person,
    );
  }

  Text _buildCreateYourNewAccount() {
    return Text(
      CreateYourNewAccount,
      style: TextStyle(color: Colors.grey.shade600, fontSize: 19),
    );
  }

  Text _buildRegisterText() {
    return Text(
      Register,
      style: TextStyle(
          fontWeight: FontWeight.w600, fontSize: 46, color: fontColor),
    );
  }

  Positioned _buildPositionedImg(BuildContext context) {
    return Positioned(
      top: -100,
      left: 15,
      right: 15,
      child: Container(
        height: MediaQuery.of(context).size.height * .45,
        width: MediaQuery.of(context).size.height,
        child: Opacity(
            opacity: 0.8,
            child: SvgPicture.asset(
              Splashimg,
            )),
      ),
    );
  }
}
