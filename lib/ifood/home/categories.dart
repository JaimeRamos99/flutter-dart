import 'package:flutter/material.dart';
import '../../utils/my_flutter_app_icons.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //favorite, shopping_basket, local_pizza, fastfood,
    final pizzaContainer = Container(
        width: MediaQuery.of(context).size.width * 0.19,
        height: MediaQuery.of(context).size.height * 0.12,
        margin: new EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.04,
            top: MediaQuery.of(context).size.width * 0.03),
        decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
        child: Icon(
          Icons.local_pizza,
          size: MediaQuery.of(context).size.width * 0.11,
        ));

    final fastfoodContainer = Container(
        width: MediaQuery.of(context).size.width * 0.18,
        height: MediaQuery.of(context).size.height * 0.12,
        margin: new EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.04,
            top: MediaQuery.of(context).size.width * 0.03),
        decoration:
            BoxDecoration(color: Color(0xFFFFC4B7), shape: BoxShape.circle),
        child: Icon(
          Icons.fastfood,
          size: MediaQuery.of(context).size.width * 0.10,
        ));
    final beerContainer = Container(
        width: MediaQuery.of(context).size.width * 0.18,
        height: MediaQuery.of(context).size.height * 0.12,
        margin: new EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.04,
            top: MediaQuery.of(context).size.width * 0.03),
        decoration:
            BoxDecoration(color: Color(0xFFFFC4B7), shape: BoxShape.circle),
        child: Icon(
          Icons.local_bar,
          size: MediaQuery.of(context).size.width * 0.10,
        ));
    final grillContainer = Container(
        width: MediaQuery.of(context).size.width * 0.18,
        height: MediaQuery.of(context).size.height * 0.12,
        margin: new EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.04,
            top: MediaQuery.of(context).size.width * 0.03),
        decoration:
            BoxDecoration(color: Color(0xFFFFC4B7), shape: BoxShape.circle),
        child: Icon(
          MyFlutterApp.outdoor_grill_black_18dp,
          size: MediaQuery.of(context).size.width * 0.10,
        ));
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
      child: Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              pizzaContainer,
              Container(
                  margin: new EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05,
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
                    left: MediaQuery.of(context).size.width * 0.05,
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
                    left: MediaQuery.of(context).size.width * 0.05,
                  ),
                  child: Text("Drinks",
                      style: TextStyle(
                        fontFamily: "Chmedium",
                        fontSize: 17.0,
                      )))
            ],
          ),
          Column(
            children: <Widget>[
              grillContainer,
              Container(
                  margin: new EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05,
                  ),
                  child: Text("Grill",
                      style: TextStyle(
                        fontFamily: "Chmedium",
                        fontSize: 17.0,
                      )))
            ],
          )
        ],
      ),
    );
  }
}
