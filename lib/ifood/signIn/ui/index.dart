import 'package:flutter/material.dart';
import './background.dart';
import './form.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFFACBCD),
        child: Stack(
          children: <Widget>[Background(), Contenedor()],
        ),
      ),
    );
  }
}
