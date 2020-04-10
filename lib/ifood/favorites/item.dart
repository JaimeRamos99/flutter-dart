import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final item = Container(
        width: MediaQuery.of(context).size.width * 0.25,
        margin: new EdgeInsets.only(
            right: MediaQuery.of(context).size.width * 0.03),
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.12,
              margin: new EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.01),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                        "assets/white-cream-on-white-bowl-1633525.jpg")),
              ),
            ),
            Text(
              "Perro desgranado",
              style: TextStyle(
                fontFamily: "chbold",
              ),
              textAlign: TextAlign.center,
            )
          ],
        ));
    return item;
  }
}
