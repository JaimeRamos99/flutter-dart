import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../utils/hearth_icon_icons.dart';
import '../../utils/shopping_b_a_g_icons.dart';

class Arriba extends StatelessWidget {
  final String nombre;
  final String calificacion;
  final String categoria;
  final String tiempo;
  final String reviews;
  final String imagenRestaurante;

  const Arriba(
      {Key key,
      this.nombre,
      this.calificacion,
      this.categoria,
      this.tiempo,
      this.reviews,
      this.imagenRestaurante})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final contanierPrincipal = Container(
      color: Colors.transparent,
      height: MediaQuery.of(context).size.height * 0.48,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                  color: Colors.transparent,
                  height: MediaQuery.of(context).size.height * 0.12,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: <Widget>[
                      Container(
                          decoration: BoxDecoration(
                              color: Color(0xFFF3EEFB),
                              borderRadius:
                                  new BorderRadius.all(Radius.circular(20))),
                          margin: new EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.02,
                              left: MediaQuery.of(context).size.width * 0.03,
                              right: MediaQuery.of(context).size.width * 0.50),
                          width: MediaQuery.of(context).size.width * 0.20,
                          height: MediaQuery.of(context).size.height * 0.04,
                          child: Row(
                            children: <Widget>[
                              Container(child: Icon(Icons.arrow_back_ios)),
                              Container(
                                child: Text(
                                  "Atrás",
                                  style: TextStyle(fontFamily: "chmedium"),
                                ),
                              )
                            ],
                          )),
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFF3EEFB),
                            borderRadius:
                                new BorderRadius.all(Radius.circular(20))),
                        margin: new EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.02,
                        ),
                        width: MediaQuery.of(context).size.width * 0.10,
                        height: MediaQuery.of(context).size.height * 0.04,
                        child: Icon(
                          ShoppingBAG.shopping_bag,
                          size: 20,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFF3EEFB),
                            borderRadius:
                                new BorderRadius.all(Radius.circular(20))),
                        margin: new EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.02,
                            left: MediaQuery.of(context).size.width * 0.03),
                        width: MediaQuery.of(context).size.width * 0.10,
                        height: MediaQuery.of(context).size.height * 0.04,
                        child: Icon(
                          HearthIcon.favorite_border,
                          size: 20,
                        ),
                      )
                    ],
                  ))
            ],
          ),
          Row(children: <Widget>[
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 15.0, // has the effect of softening the shadow
                    spreadRadius: 0.01, // has the effect of extending the shadow
                  )
                ],
                color: Colors.white,
                borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(50.0),
                  bottomLeft: const Radius.circular(50.0),
                ),
              ),
              margin: new EdgeInsets.only(
                top: MediaQuery.of(context).size.width * 0.30,
                left: MediaQuery.of(context).size.width * 0.07,
              ),
              height: MediaQuery.of(context).size.height * 0.18,
              width: MediaQuery.of(context).size.width * 0.93,
              child: Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                          decoration: BoxDecoration(
                              //color: Colors.yellow,
                              borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(50.0),
                            bottomLeft: const Radius.circular(50.0),
                          )),
                          height: MediaQuery.of(context).size.height * 0.18,
                          width: MediaQuery.of(context).size.width * 0.68,
                          child: (Column(
                            children: <Widget>[
                              Row(children: <Widget>[
                                Container(
                                    margin: new EdgeInsets.only(
                                        left:
                                            MediaQuery.of(context).size.width *
                                                0.07,
                                        top:
                                            MediaQuery.of(context).size.height *
                                                0.03),
                                    child: Text(
                                      nombre,
                                      style: TextStyle(
                                          fontSize: 17, fontFamily: "Chheavy"),
                                    )),
                                Container(
                                    margin: new EdgeInsets.only(
                                      top: MediaQuery.of(context).size.height *
                                          0.022,
                                    ),
                                    child: Icon(Icons.favorite,
                                        size: 22, color: Colors.redAccent))
                              ]),
                              Row(children: <Widget>[
                                Container(
                                  child: Icon(Icons.star,
                                      size: 20, color: Colors.amber),
                                  margin: new EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width *
                                          0.05,
                                      right: MediaQuery.of(context).size.width *
                                          0.01,
                                      top: MediaQuery.of(context).size.height *
                                          0.01),
                                ),
                                Container(
                                  child: Text(
                                    calificacion,
                                    style: TextStyle(
                                        fontFamily: "chbold", fontSize: 13),
                                  ),
                                  margin: new EdgeInsets.only(
                                      top: MediaQuery.of(context).size.height *
                                          0.01),
                                ),
                                Container(
                                  child: Text(
                                    categoria,
                                    style: TextStyle(
                                        fontFamily: "chlight", fontSize: 13),
                                  ),
                                  margin: new EdgeInsets.only(
                                      top: MediaQuery.of(context).size.height *
                                          0.01,
                                      left: MediaQuery.of(context).size.width *
                                          0.02),
                                ),
                                Container(
                                  child: Text(
                                    tiempo,
                                    style: TextStyle(
                                        fontFamily: "chlight", fontSize: 13),
                                  ),
                                  margin: new EdgeInsets.only(
                                      top: MediaQuery.of(context).size.height *
                                          0.01,
                                      left: MediaQuery.of(context).size.width *
                                          0.02),
                                )
                              ]),
                              Row(
                                children: <Widget>[
                                  Container(
                                      margin: new EdgeInsets.only(
                                          top: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.01,
                                          left: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          right: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.03),
                                      decoration: BoxDecoration(
                                          color: Color(0xFFFFC4B7),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      width: MediaQuery
                                                  .of(context)
                                              .size
                                              .width *
                                          0.30,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.05,
                                      child: Container(
                                          child: Center(
                                              child: Text(
                                        "Domicilio gratis",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: "chbold",
                                        ),
                                        textAlign: TextAlign.center,
                                      )))),
                                  Container(
                                      margin: new EdgeInsets.only(),
                                      child: Center(
                                          child: Text(reviews,
                                              style: TextStyle(
                                                fontFamily: "chlight",
                                                decoration:
                                                    TextDecoration.underline,
                                              ))))
                                ],
                              )
                            ],
                          )))
                    ],
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                                  fit: BoxFit.fill,
                                  image: AssetImage(imagenRestaurante)),
                              borderRadius: BorderRadius.circular(20)),
                          height: MediaQuery.of(context).size.height * 0.11,
                          width: MediaQuery.of(context).size.width * 0.23,
                        )
                      ])
                ],
              ),
            )
          ])
        ],
      ),
    );
    return contanierPrincipal;
  }
}
