import 'package:dashing_through_the_ville/home_widget.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashing Through The Ville',
      home: Home(),
    );
  }
}
