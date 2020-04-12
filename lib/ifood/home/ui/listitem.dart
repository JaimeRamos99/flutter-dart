import 'package:flutter/material.dart';

class ItemLista extends StatelessWidget {
  final String pathImage;
  final String restaurantName;
  final String puntaje;
  final String tiempo;
  final String distancia;

  const ItemLista(
      {Key key,
      this.pathImage,
      this.restaurantName,
      this.puntaje,
      this.tiempo,
      this.distancia})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final photo = Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10.0, // has the effect of softening the shadow
              spreadRadius: 0.01, // has the effect of extending the shadow
            )
          ],
          shape: BoxShape.rectangle,
          //color: Colors.red,
          image:
              DecorationImage(fit: BoxFit.fill, image: AssetImage(pathImage)),
          borderRadius: BorderRadius.circular(20)),
      height: MediaQuery.of(context).size.height * 0.12,
      width: MediaQuery.of(context).size.width * 0.23,
    );

    final photoInfo = Container(
      padding: new EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.07,
      ),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        //color: Colors.blue,
      ),
      height: MediaQuery.of(context).size.height * 0.12,
      width: MediaQuery.of(context).size.width * 0.63,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                  child: Text(
                restaurantName,
                style: TextStyle(
                  fontFamily: "Chheavy",
                  fontSize: 17.0,
                ),
              ))
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                margin: new EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * 0.01,
                    right: MediaQuery.of(context).size.width * 0.01),
                child: Icon(
                  Icons.star,
                  size: 25,
                  color: Colors.amber,
                ),
              ),
              Text(puntaje,
                  style: TextStyle(
                    fontFamily: "Chbold",
                    fontSize: 14.0,
                  )),
              Text("     Italian food",
                  style: TextStyle(
                    fontFamily: "Chlight",
                    fontSize: 14.0,
                  )),
              Container(
                  margin: new EdgeInsets.only(
                      left: MediaQuery.of(context).size.height * 0.07),
                  child:
                      Icon(Icons.favorite, size: 25, color: Colors.redAccent))
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                alignment: Alignment(0.0, 0.0),
                width: MediaQuery.of(context).size.width * 0.30,
                height: MediaQuery.of(context).size.width * 0.06,
                decoration: BoxDecoration(
                    color: Color(0xFFEEE4FF),
                    borderRadius: BorderRadius.circular(10)
                    //color: Colors.blue,

                    ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.access_time, size: 20, color: Color(0xFFCD5F92)),
                    Container(
                      margin: new EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.02,
                          top: MediaQuery.of(context).size.height * 0.005),
                      child: Text(
                        tiempo,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: "Chmedium",
                            fontSize: 13,
                            color: Color(0xFFCD5F92)),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: new EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.03),
                child: Text(
                  distancia,
                  style: TextStyle(
                    fontFamily: "Chlight",
                    fontSize: 13,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );

    final item = Container(
        width: MediaQuery.of(context).size.width * 0.86,
        height: MediaQuery.of(context).size.height * 0.12,
        margin: new EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height * 0.02,
        ),
        decoration: BoxDecoration(
            //color: Colors.yellow,
            ),
        child: Row(
          children: <Widget>[
            Column(
              children: <Widget>[photo],
            ),
            Column(children: <Widget>[photoInfo])
          ],
        ));
    return item;
  }
}