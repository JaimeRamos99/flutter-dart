import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  //favorite, shopping_basket, local_pizza, fastfood, local_drink
  @override
  Widget build(BuildContext context) {
    final basketIcon = Container(
        child: Icon(
          Icons.shopping_basket,
          size: 30,
        ),
        margin: new EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.025));
    final favoriteIcon = Container(
        child: Icon(
          Icons.favorite,
          size: 30,
        ),
        margin: new EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.025,
            left: MediaQuery.of(context).size.width * 0.05,
            right: MediaQuery.of(context).size.width * 0.04));
    final firstSection = Row(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.08,
          decoration: BoxDecoration(
            //color: Colors.red,
          ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[basketIcon, favoriteIcon]),
        )
      ],
    );

    final secondSection = Row(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.13,
          padding: new EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.04,
          ),
          decoration: BoxDecoration(
            //color: Colors.lightBlueAccent,
          ),
          child: Column(
            children: <Widget>[
              Row(children: <Widget>[
                Text("Hola, ",
                    style: TextStyle(
                      fontFamily: "Chbook",
                      fontSize: 30.0,
                    )),
                Text("Jaime!",
                    style: TextStyle(
                      fontFamily: "Chbold",
                      fontSize: 30.0,
                    ))
              ]),
              Text("Calle 66#44-35",
                  style: TextStyle(
                    fontFamily: "Chlight",
                    fontSize: 15.0,
                  ))
            ],
          ),
        )
      ],
    );

    return Column(children: <Widget>[firstSection, secondSection]);
  }
}
