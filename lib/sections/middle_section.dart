import 'package:flutter/material.dart';

import 'about_section.dart';
import 'profile_section.dart';

class MiddleSection extends StatelessWidget {
  const MiddleSection({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    ValueNotifier valueNotifier = ValueNotifier(size.width);

    return ValueListenableBuilder(
      valueListenable: valueNotifier,
      builder: (context, value, _) {
        return value >= 630
            ? const Padding(
                padding: EdgeInsets.symmetric(vertical: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ProfileSection(),
                    AboutSection(),
                  ],
                ),
              )
            : const Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  ProfileSection(),
                  AboutSection(),
                ],
              );
      },
    );
  }
}
