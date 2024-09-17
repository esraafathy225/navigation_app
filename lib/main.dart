import 'package:flutter/material.dart';
import 'package:navigation_app/pages/bottom_nav_page.dart';
import 'package:navigation_app/pages/counter_page.dart';
import 'package:navigation_app/pages/drawer_pages/profile_page.dart';
import 'package:navigation_app/pages/home_page.dart';
import 'package:navigation_app/pages/second_page.dart';
import 'package:navigation_app/pages/drawer_pages/settings_page.dart';
import 'package:navigation_app/pages/user_input_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const UserInputPage(),
      routes: {
        '/secondpage' : (context) => SecondPage(),
        '/settingspage': (context) => SettingsPage(),
        '/profilepage': (context) => ProfilePage()
      },
    );
  }
}

