import 'dart:ui';
import 'package:flutter/material.dart';

class BackgroundVerificationCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10.0, // has the effect of softening the shadow
                  spreadRadius: 0.01, // has the effect of extending the shadow
                )
              ],
              shape: BoxShape.rectangle,
              //color: Colors.red,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/backgroundFood.jpg')),
            ),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          new Center(
            child: new ClipRect(
              child: new BackdropFilter(
                filter: new ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
                child: new Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: new BoxDecoration(
                      color: Colors.grey.shade200.withOpacity(0.5)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
