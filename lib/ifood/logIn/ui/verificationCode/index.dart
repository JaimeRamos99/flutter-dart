import 'package:flutter/material.dart';
import 'background.dart';
import 'form.dart';

class LogInVerificationCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[BackgroundVerificationCode(), FormVerificationCode()],
    );
  }
}
