import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:supplychainfinal/login/login_screen.dart';
import 'package:supplychainfinal/utility/colors.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: lightTheme(),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }

  ThemeData lightTheme() {
    var baseTheme = ThemeData.light();
    baseTheme.textTheme.apply(fontFamily: 'NunitoSans');
    baseTheme.copyWith(
        scaffoldBackgroundColor: secondaryColor,
        colorScheme: baseTheme.colorScheme.copyWith(
          primary: secondaryColor,
          secondary: secondaryColor,
          onSecondary: secondaryColor,
        ));

    return baseTheme;
  }
}
