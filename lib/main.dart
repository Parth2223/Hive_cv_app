import 'package:flutter/material.dart';
import 'package:hive_db/cv_apps_screen/screen/auth/splash_screen.dart';
import 'package:hive_db/home_page.dart';
import 'package:hive_db/sections/main_page.dart';
import 'package:path_provider/path_provider.dart';
import 'package:hive/hive.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // var directory = await getApplicationDocumentsDirectory();
  // Hive.init(directory.path);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        primaryColor: Colors.white,
        iconButtonTheme: IconButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.red),
            foregroundColor: MaterialStateProperty.all(Colors.red),
          ),
        ),
      ),
      home: SplashScreen(),
    );
  }
}
