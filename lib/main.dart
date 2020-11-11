import 'package:flutter/material.dart';

import 'login.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashing Through The Ville',
      home: isLoggedIn(),
    );
  }

  isLoggedIn() {
    return Login();
  }
}
