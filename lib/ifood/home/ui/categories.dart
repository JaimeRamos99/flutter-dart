import 'package:flutter/material.dart';
import '../../../utils/my_flutter_app_icons.dart';
import '../../../utils/pasta_icons.dart';

class Categories extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Categories();
  }
}

Color colorPizza = Colors.white;
Color colorBurger = Color(0xFFFFC4B7);
Color colorDrinks = Color(0xFFFFC4B7);
Color colorGrill = Color(0xFFFFC4B7);
Color colorPasta = Color(0xFFFFC4B7);

class _Categories extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    //favorite, shopping_basket, local_pizza, fastfood,

    final pizzaContainer = InkWell(
      child: Container(
          width: MediaQuery.of(context).size.width * 0.19,
          height: MediaQuery.of(context).size.height * 0.12,
          margin: new EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.02,
              right: MediaQuery.of(context).size.width * 0.02,
              top: MediaQuery.of(context).size.width * 0.03),
          decoration: BoxDecoration(color: colorPizza, shape: BoxShape.circle),
          child: Icon(
            Icons.local_pizza,
            size: MediaQuery.of(context).size.width * 0.11,
          )),
      onTap: () {
        if (colorPizza == Color(0xFFFFC4B7)) {
          setState(() {
            colorPizza = Colors.white;
            colorBurger = Color(0xFFFFC4B7);
            colorDrinks = Color(0xFFFFC4B7);
            colorGrill = Color(0xFFFFC4B7);
            colorPasta = Color(0xFFFFC4B7);
          });
        }
      },
    );

    final fastfoodContainer = InkWell(
      child: Container(
          width: MediaQuery.of(context).size.width * 0.18,
          height: MediaQuery.of(context).size.height * 0.12,
          margin: new EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.02,
              right: MediaQuery.of(context).size.width * 0.02,
              top: MediaQuery.of(context).size.width * 0.03),
          decoration: BoxDecoration(color: colorBurger, shape: BoxShape.circle),
          child: Icon(
            Icons.fastfood,
            size: MediaQuery.of(context).size.width * 0.10,
          )),
      onTap: () {
        if (colorBurger == Color(0xFFFFC4B7)) {
          setState(() {
            colorBurger = Colors.white;
            colorPizza = Color(0xFFFFC4B7);
            colorDrinks = Color(0xFFFFC4B7);
            colorGrill = Color(0xFFFFC4B7);
            colorPasta = Color(0xFFFFC4B7);
          });
        }
      },
    );
    final beerContainer = InkWell(
      child: Container(
          width: MediaQuery.of(context).size.width * 0.18,
          height: MediaQuery.of(context).size.height * 0.12,
          margin: new EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.02,
              right: MediaQuery.of(context).size.width * 0.02,
              top: MediaQuery.of(context).size.width * 0.03),
          decoration: BoxDecoration(color: colorDrinks, shape: BoxShape.circle),
          child: Icon(
            Icons.local_bar,
            size: MediaQuery.of(context).size.width * 0.10,
          )),
      onTap: () {
        if (colorDrinks == Color(0xFFFFC4B7)) {
          setState(() {
            colorDrinks = Colors.white;
            colorPizza = Color(0xFFFFC4B7);
            colorBurger = Color(0xFFFFC4B7);
            colorGrill = Color(0xFFFFC4B7);
            colorPasta = Color(0xFFFFC4B7);
          });
        }
      },
    );
    final grillContainer = InkWell(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.18,
        height: MediaQuery.of(context).size.height * 0.12,
        margin: new EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.02,
            right: MediaQuery.of(context).size.width * 0.02,
            top: MediaQuery.of(context).size.width * 0.03),
        decoration: BoxDecoration(color: colorGrill, shape: BoxShape.circle),
        child: Icon(
          MyFlutterApp.outdoor_grill_black_18dp,
          size: MediaQuery.of(context).size.width * 0.10,
        ),
      ),
      onTap: () {
        if (colorGrill == Color(0xFFFFC4B7)) {
          setState(() {
            colorGrill = Colors.white;
            colorPizza = Color(0xFFFFC4B7);
            colorBurger = Color(0xFFFFC4B7);
            colorDrinks = Color(0xFFFFC4B7);
            colorPasta = Color(0xFFFFC4B7);
          });
        }
      },
    );
    final pastaContainer = InkWell(
      child: Container(
          width: MediaQuery.of(context).size.width * 0.18,
          height: MediaQuery.of(context).size.height * 0.12,
          margin: new EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.02,
              right: MediaQuery.of(context).size.width * 0.02,
              top: MediaQuery.of(context).size.width * 0.03),
          decoration: BoxDecoration(color: colorPasta, shape: BoxShape.circle),
          child: Icon(
            Pasta.food,
            size: MediaQuery.of(context).size.width * 0.10,
          )),
      onTap: () {
        if (colorPasta == Color(0xFFFFC4B7)) {
          setState(() {
            colorPasta = Colors.white;
            colorPizza = Color(0xFFFFC4B7);
            colorBurger = Color(0xFFFFC4B7);
            colorDrinks = Color(0xFFFFC4B7);
            colorGrill = Color(0xFFFFC4B7);
          });
        }
      },
    );
    return Container(
        margin: new EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.07,
        ),
        width: MediaQuery.of(context).size.width * 0.93,
        height: MediaQuery.of(context).size.height * 0.20,
        decoration: BoxDecoration(
            color: Color(0xFFF1B7AB),
            borderRadius: new BorderRadius.only(
              topLeft: const Radius.circular(50.0),
              bottomLeft: const Radius.circular(50.0),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10.0, // has the effect of softening the shadow
                spreadRadius: 0.01, // has the effect of extending the shadow
              )
            ]),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Column(
              children: <Widget>[
                pizzaContainer,
                Container(
                    margin: new EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.01,
                    ),
                    child: Text("Pizza",
                        style: TextStyle(
                          fontFamily: "Chheavy",
                          fontSize: 17.0,
                        )))
              ],
            ),
            Column(
              children: <Widget>[
                fastfoodContainer,
                Container(
                    margin: new EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.02,
                    ),
                    child: Text("Burger",
                        style: TextStyle(
                          fontFamily: "Chmedium",
                          fontSize: 17.0,
                        )))
              ],
            ),
            Column(
              children: <Widget>[
                beerContainer,
                Container(
                    margin: new EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.02,
                    ),
                    child: Text("Drinks",
                        style: TextStyle(
                          fontFamily: "Chmedium",
                          fontSize: 17.0,
                        ))),
              ],
            ),
            Column(
              children: <Widget>[
                grillContainer,
                Container(
                    margin: new EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.02,
                    ),
                    child: Text("Grill",
                        style: TextStyle(
                          fontFamily: "Chmedium",
                          fontSize: 17.0,
                        )))
              ],
            ),
            Column(
              children: <Widget>[
                pastaContainer,
                Container(
                    margin: new EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.02,
                    ),
                    child: Text("Pasta",
                        style: TextStyle(
                          fontFamily: "Chmedium",
                          fontSize: 17.0,
                        ))),
              ],
            )
          ],
        ));
  }
}
