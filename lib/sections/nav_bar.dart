import 'package:flutter/material.dart';
import 'package:hive_db/comman/color.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  void navBarBtnFunction() {}

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    ValueNotifier valueNotifier = ValueNotifier(size.width);

    ButtonStyle navBarBtnStyle = TextButton.styleFrom(
      foregroundColor: Colors.black,
      textStyle: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
      // splashFactory: InkSplash.splashFactory,
      fixedSize: const Size(100, 35),
    );

    return Container(
      color: NavbarColor,
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Text(
              'Dev',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: Colors.black,
                letterSpacing: 1,
              ),
            ),
          ),
          ValueListenableBuilder(
            valueListenable: valueNotifier,
            builder: (context, value, _) => value >= 600
                ? Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Row(
                      children: [
                        TextButton(
                          style: navBarBtnStyle,
                          onPressed: navBarBtnFunction,
                          child: const Text('About'),
                        ),
                        TextButton(
                          style: navBarBtnStyle,
                          onPressed: navBarBtnFunction,
                          child: const Text('Experience'),
                        ),
                        TextButton(
                          style: navBarBtnStyle,
                          onPressed: navBarBtnFunction,
                          child: const Text('Projects'),
                        ),
                        TextButton(
                          style: navBarBtnStyle,
                          onPressed: navBarBtnFunction,
                          child: const Text('Contact'),
                        ),
                      ],
                    ),
                  )
                : IconButton(
                    onPressed: () => Scaffold.of(context).openDrawer(),
                    icon: const Icon(
                      Icons.menu_rounded,
                      color: Colors.white,
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
