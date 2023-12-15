import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:moviehut/models/collections.dart';
import 'package:moviehut/screens/dark_theme.dart';
import 'package:moviehut/screens/home_screen.dart';

import '../screens/profile_screen.dart';

List<Widget> pages = [
  HomeScreen(),
  Collections(),
  profile_screen(),
  ContactsPage(),
];

class navi extends StatefulWidget {
  @override
  _naviState createState() => _naviState();
}

class _naviState extends State<navi> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      body: pages[_selectedIndex],
      backgroundColor: Colors.white,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color.fromARGB(255, 29, 2, 77),
        color: Colors.deepPurple.shade200,
        animationDuration: Duration(milliseconds: 300),// Customize the background color
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.video_collection, size: 30),
          Icon(Icons.person, size: 30),
          Icon(Icons.contact_phone_rounded, size: 30),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
