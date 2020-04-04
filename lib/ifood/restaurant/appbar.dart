import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../utils/hearth_icon_icons.dart';
import '../../utils/shopping_b_a_g_icons.dart';

class Appbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appbar = Container(
        color: Colors.transparent,
        height: MediaQuery.of(context).size.height * 0.13,
        width: MediaQuery.of(context).size.width,
        child: Column(children: <Widget>[
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
          )
        ]));
    return appbar;
  }
}