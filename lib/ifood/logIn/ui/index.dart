import 'package:flutter/material.dart';
import './background.dart';
import './form.dart';

class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[BackgroundLogIn(), FormPhone()],
    );
  }
}
