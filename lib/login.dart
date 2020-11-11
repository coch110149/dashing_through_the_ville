import 'package:flutter/material.dart';

import 'home_widget.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isLoggedIn = true;

  @override
  Widget build(BuildContext context) {
    return Container(child: loginLogic());
  }

  loginLogic() {
    if (this.isLoggedIn) {
      return Home();
    }
    return Text("how did you get here");
  }
}
