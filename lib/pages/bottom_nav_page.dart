import 'package:flutter/material.dart';
import 'package:navigation_app/pages/drawer_pages/profile_page.dart';
import 'package:navigation_app/pages/drawer_pages/settings_page.dart';
import 'drawer_pages/home_nav_page.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  int _selectedIndex = 0 ;
  final _pages = [HomeNavPage(),ProfilePage(),SettingsPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Page'),
        backgroundColor: Colors.deepPurple.shade300,
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index){
          setState(() {
            _selectedIndex = index ;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings')
        ],
      ),
    );
  }
}
