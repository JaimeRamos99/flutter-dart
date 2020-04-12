import 'package:flutter/material.dart';

class Itemm extends StatelessWidget {
  final String nombre;

  const Itemm({
    Key key,
    this.nombre,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final item = Container(
      margin:
          new EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.03),
      child: Center(
        child: Text(
          nombre,
          style:
              TextStyle(fontFamily: "chbold", fontSize: 15, color: Colors.grey),
        ),
      ),
    );
    return item;
  }
}
