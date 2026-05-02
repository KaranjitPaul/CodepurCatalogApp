import 'package:app_new/pages/home_page.dart';
import 'package:app_new/pages/login_page.dart';
import 'package:app_new/utils/routes.dart';
import 'package:app_new/widgets/themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
//day 14 and day 7 q&a
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
