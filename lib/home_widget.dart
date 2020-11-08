import 'package:dashing_through_the_ville/clues_widget.dart';
import 'package:dashing_through_the_ville/welcome_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'placeholder_widget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    Welcome(),
    Clues(),
    PlaceholderWidget(Colors.green)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashing Through The Ville'),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.assignment),
            label: "Clues",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: "Leaderboard")
        ],
      ),
    );
  }

  void onTabTapped(int value) {
    setState(() {
      _currentIndex = value;
    });
  }
}
