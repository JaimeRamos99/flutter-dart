import 'package:flutter/material.dart';

class SecondSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cuadricula = Container(
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.height * 0.3,
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey, width: 1))),
    );
    final cuadriculaLLena = Container(
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.height * 0.3,
      decoration: BoxDecoration(
          color: Colors.blueGrey,
          border: Border(bottom: BorderSide(color: Colors.grey, width: 1))),
    );
    final home = Container(
      padding: new EdgeInsets.only(
        top: MediaQuery.of(context).size.width * 0.01,
      ),
      margin: new EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.04,
        right: MediaQuery.of(context).size.width * 0.04,
      ),
      width: MediaQuery.of(context).size.width * 0.15,
      child: Icon(
        Icons.home,
        size: 35,
      ),
    );

    final message = Container(
      padding: new EdgeInsets.only(
        top: MediaQuery.of(context).size.width * 0.01,
      ),
      margin: new EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.04,
        right: MediaQuery.of(context).size.width * 0.04,
      ),
      width: MediaQuery.of(context).size.width * 0.15,
      child: Icon(
        Icons.message,
        size: 35,
      ),
    );
    final calendar_today = Container(
        padding: new EdgeInsets.only(
          top: MediaQuery.of(context).size.width * 0.01,
        ),
        margin: new EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.04,
          right: MediaQuery.of(context).size.width * 0.04,
        ),
        width: MediaQuery.of(context).size.width * 0.15,
        child: Icon(
          Icons.calendar_today,
          size: 35,
        ));
    final notifications = Container(
      padding: new EdgeInsets.only(
        top: MediaQuery.of(context).size.width * 0.01,
      ),
      margin: new EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.04,
        right: MediaQuery.of(context).size.width * 0.04,
      ),
      width: MediaQuery.of(context).size.width * 0.15,
      child: Icon(
        Icons.notifications,
        size: 35,
      ),
    );

    final main2 = Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[home, message, calendar_today, notifications]);
    final second = Row(children: <Widget>[
      Container(
          margin: new EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.025,
              left: MediaQuery.of(context).size.width * 0.04,
              right: MediaQuery.of(context).size.width * 0.04,
              bottom: MediaQuery.of(context).size.height * 0.025),
          width: MediaQuery.of(context).size.width * 0.3,
          height: MediaQuery.of(context).size.height * 0.60,
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(10.0),
                topRight: const Radius.circular(10.0),
                bottomLeft: const Radius.circular(10.0),
                bottomRight: const Radius.circular(10.0),
              )),
          child: Column(children: <Widget>[
            cuadricula,
            cuadriculaLLena,
            cuadricula,
            cuadricula,
            cuadricula,
            cuadricula
          ])),
      Row(children: <Widget>[
        Container(
            width: MediaQuery.of(context).size.width * 0.57,
            height: MediaQuery.of(context).size.height * 0.60,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [const Color(0xFF037BFF), const Color(0xFF283756)]),
                borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(10.0),
                  topRight: const Radius.circular(10.0),
                  bottomLeft: const Radius.circular(10.0),
                  bottomRight: const Radius.circular(10.0),
                ))),
      ])
    ]);

    final third = Row(children: <Widget>[
      Container(
        margin: new EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.025,
            left: MediaQuery.of(context).size.width * 0.04,
            bottom: MediaQuery.of(context).size.height * 0.025),
        width: MediaQuery.of(context).size.width * 0.62,
        height: MediaQuery.of(context).size.height * 0.15,
        decoration: BoxDecoration(
            color: Colors.greenAccent,
            borderRadius: new BorderRadius.only(
              topLeft: const Radius.circular(10.0),
              bottomLeft: const Radius.circular(10.0),
            )),
        child: Text(
          "Recomendaciones",
          style: TextStyle(
            fontFamily: "Chbold",
            fontSize: 20.0,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Row(
        children: <Widget>[
          Container(
              width: MediaQuery.of(context).size.width * 0.3,
              height: MediaQuery.of(context).size.height * 0.15,
              decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: new BorderRadius.only(
                    topRight: const Radius.circular(10.0),
                    bottomRight: const Radius.circular(10.0),
                  )))
        ],
      )
    ]);

    return Column(
      children: <Widget>[main2, second, third],
    );
  }
}
