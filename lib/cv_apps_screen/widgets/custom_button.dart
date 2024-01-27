import 'package:flutter/material.dart';
import 'package:hive_db/comman/color.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, this.title, this.onTap});
  String? title;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 40,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: [
                LG1,
                LG2,
              ],
            ),
            borderRadius: BorderRadius.circular(25)),
        child: Center(
          child: Text(
            title ?? "",
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
