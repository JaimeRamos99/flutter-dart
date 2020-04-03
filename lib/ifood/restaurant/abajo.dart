import 'package:flutter/material.dart';
import 'sections.dart';
import 'lista.dart';

class Abajo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final fotoContainer = Container(
        height: MediaQuery.of(context).size.height * 0.40,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.rectangle,
            //color: Colors.red,
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage("assets/dona2.jpg")),
            borderRadius: new BorderRadius.only(
              bottomRight: const Radius.circular(50.0),
              bottomLeft: const Radius.circular(50.0),
            )));
    final listContainer = Container(
        margin:
            new EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.09),
        //color: Colors.yellow,
        height: MediaQuery.of(context).size.height * 0.51,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[Sections(), Lista()],
        ));
    final todo = Column(
      children: <Widget>[fotoContainer, listContainer],
    );
    return todo;
  }
}
