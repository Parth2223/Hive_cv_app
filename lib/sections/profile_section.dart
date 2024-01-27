import 'package:flutter/material.dart';
import 'package:hive_db/comman/string.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(300),
      child: Image.asset(profileimg, width: 300),
    );
  }
}
