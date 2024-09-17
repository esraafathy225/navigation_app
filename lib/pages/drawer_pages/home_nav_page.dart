import 'package:flutter/material.dart';
import 'package:navigation_app/pages/second_page.dart';

class HomeNavPage extends StatelessWidget {
  const HomeNavPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Home Page',style: TextStyle(fontSize: 32),),
      ),
    );
  }
}
