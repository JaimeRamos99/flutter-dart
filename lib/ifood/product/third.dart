import 'package:flutter/material.dart';
import '../../utils/hearth_icon_icons.dart';

class ThirdProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final carrito = Container(
      width: MediaQuery.of(context).size.width * 0.65,
      height: MediaQuery.of(context).size.height * 0.08,
      margin: new EdgeInsets.only(
          right: MediaQuery.of(context).size.width * 0.05,
          left: MediaQuery.of(context).size.width * 0.05,
          top: MediaQuery.of(context).size.height * 0.05),
      child: RaisedButton(
        onPressed: () {},
        textColor: Colors.white,
        padding: const EdgeInsets.all(0.0),
        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(15.0)),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.65,
          height: MediaQuery.of(context).size.height * 0.08,
          decoration: BoxDecoration(
              color: Colors.pinkAccent,
              borderRadius: new BorderRadius.all(Radius.circular(15))),
          padding: EdgeInsets.only(
            right: MediaQuery.of(context).size.width * 0.10,
            left: MediaQuery.of(context).size.width * 0.10,
          ),
          child: Center(
            child: const Text('AGREGAR AL CARRITO',
                style: TextStyle(fontSize: 16, fontFamily: "chmedium")),
          ),
        ),
      ),
    );
    final favoriteButton = Container(
      width: MediaQuery.of(context).size.width * 0.17,
      height: MediaQuery.of(context).size.height * 0.08,
      margin: new EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.05,
          top: MediaQuery.of(context).size.height * 0.05),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: new BorderRadius.all(Radius.circular(15)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10.0, // has the effect of softening the shadow
              spreadRadius: 0.01, // has the effect of extending the shadow
            )
          ]),
      child: IconButton(
        icon: Icon(
          HearthIcon.favorite_border,
          size: 30,
          color: Colors.pinkAccent,
        ),
        tooltip: 'Agregar a favoritos',
        onPressed: () {},
      ),
    );
    return Row(
      children: <Widget>[favoriteButton, carrito],
    );
  }
}
