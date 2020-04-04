import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import './ifood/home/index.dart';
//import './ifood/restaurant/index.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion <SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
        ), child:
    MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
          body: Container(
            color: Colors.white,
            //child: indexRestaurant(),
          )
          ,
        )
    )
    );
  }
}