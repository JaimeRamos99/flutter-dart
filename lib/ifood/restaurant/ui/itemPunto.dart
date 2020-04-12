import 'package:flutter/material.dart';
import '../../../utils/circle_icons.dart';

class ItemPunto extends StatelessWidget {
  final String nombre;

  const ItemPunto({
    Key key,
    this.nombre,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final itemPoint = Row(
      children: <Widget>[
        Container(
          margin: new EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.01),
          child: Icon(
            Circle.circle,
            size: 13,
            color: Colors.pink,
          ),
        ),
        Container(
          margin: new EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.01),
          child: Text(
            nombre,
            style: TextStyle(
                fontFamily: "chbold", fontSize: 15, color: Colors.pink),
          ),
        )
      ],
    );

    return itemPoint;
  }
}
