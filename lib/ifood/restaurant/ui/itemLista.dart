import 'package:flutter/material.dart';

class ItemLista extends StatelessWidget {
  final String nombre;
  final String precio;
  final String pathImage;
  final String ingredients;

  const ItemLista(
      {Key key, this.nombre, this.precio, this.pathImage, this.ingredients})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ItemLista = Container(
        height: MediaQuery.of(context).size.height * 0.12,
        margin: new EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.03,
            right: MediaQuery.of(context).size.width * 0.03,
            bottom: MediaQuery.of(context).size.width * 0.01),
        //color: Colors.green,
        child: Row(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10.0,
                      // has the effect of softening the shadow
                      spreadRadius:
                          0.01, // has the effect of extending the shadow
                    )
                  ],
                  shape: BoxShape.rectangle,
                  //color: Colors.red,
                  image: DecorationImage(
                      fit: BoxFit.fill, image: AssetImage(pathImage)),
                  borderRadius: BorderRadius.circular(20)),
              height: MediaQuery.of(context).size.height * 0.11,
              width: MediaQuery.of(context).size.width * 0.23,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * 0.40,
                    //color: Colors.yellow,
                    child: (Container(
                        margin: new EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.01,
                            bottom: MediaQuery.of(context).size.height * 0.01),
                        padding: new EdgeInsets.only(
                          left: MediaQuery.of(context).size.height * 0.01,
                        ),
                        child: Text(
                          nombre,
                          style: TextStyle(fontFamily: "chheavy", fontSize: 15),
                        ))),
                  ),
                  Container(
                    padding: new EdgeInsets.only(
                      left: MediaQuery.of(context).size.height * 0.01,
                    ),
                    width: MediaQuery.of(context).size.width * 0.50,
                    //color: Colors.pink,
                    child: Container(
                        child: Text(
                      ingredients,
                      style: TextStyle(
                          fontFamily: "chmedium",
                          fontSize: 13,
                          color: Colors.grey),
                    )),
                  )
                ],
              ),
            ),
            Container(
                child: Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.20,
                  //color: Colors.blue,
                  child: (Container(
                      margin: new EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.01,
                          bottom: MediaQuery.of(context).size.height * 0.01),
                      child: Text(
                        precio,
                        style: TextStyle(fontFamily: "chheavy", fontSize: 13),
                        textAlign: TextAlign.end,
                      ))),
                ),
                Container(
                  child: (Text(
                    "Add to cart",
                    style: TextStyle(
                        fontFamily: "chbold",
                        fontSize: 14,
                        color: Colors.pinkAccent),
                  )),
                )
              ],
            ))
          ],
        ));
    return ItemLista;
  }
}
