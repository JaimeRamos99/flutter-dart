import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'first_section.dart';
import 'second_section.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {//ESTE ARCHIVO SE PONE EN EL MAIN DART y listo, estaba probando flutter
    return AnnotatedRegion <SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
        ), child:
    MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: FirstSection(
            appBar: AppBar(),
            pathImage: "assets/holu-logo.png",
          ),
          body: Container(
            color: Colors.grey,
            child: new SecondSection(),
          )
          ,
        )
    )
    );
  }
}