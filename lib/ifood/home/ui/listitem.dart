import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class ItemLista extends StatefulWidget {
  final String pathImage;
  final String restaurantName;
  final String puntaje;
  final String tiempo;
  final String distancia;

  ItemLista(
      {Key key,
      this.pathImage,
      this.restaurantName,
      this.puntaje,
      this.tiempo,
      this.distancia})
      : super(key: key);

  @override
  _ItemLista createState() => new _ItemLista();
}

class _ItemLista extends State<ItemLista> {
  bool _isLoved = false;
  Color _heartColor = Colors.grey;

  void _toggleFavorite() {
    setState(() {
      if (_isLoved) {
        _isLoved = false;
        _heartColor = Colors.grey;
        Toast.show("Se ha eliminado de tus restaurantes favoritos", context,
            duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
      } else {
        _isLoved = true;
        _heartColor = Colors.redAccent;
        Toast.show("Se ha agregado a restaurantes favoritos", context,
            duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
      }
    });
  }

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
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage(widget.pathImage)),
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
                widget.restaurantName,
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
              Text(widget.puntaje,
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
                      left: MediaQuery.of(context).size.height * 0.05),
                  child: IconButton(
                    icon: (Icon(Icons.favorite)),
                    iconSize: 25,
                    color: _heartColor,
                    onPressed: () {
                      _toggleFavorite();
                    },
                  ))
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                alignment: Alignment(0.0, 0.0),
                width: MediaQuery.of(context).size.width * 0.30,
                height: MediaQuery.of(context).size.width * 0.05,
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
                        widget.tiempo,
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
                  widget.distancia,
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
