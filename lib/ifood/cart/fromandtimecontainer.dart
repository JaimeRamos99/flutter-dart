import 'package:flutter/material.dart';

class FromAndTime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final todo = Container(
      margin: new EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.05,
          left: MediaQuery.of(context).size.width * 0.05),
      child: Row(
        children: <Widget>[
          //Icons.access_time
          Container(
            margin: new EdgeInsets.only(
                right: MediaQuery.of(context).size.width * 0.04),
            child: Text("De",
                style: TextStyle(
                    fontFamily: "chlight", fontSize: 18, color: Colors.white)),
          ),
          Container(
            child: Text("New York Donut Co.",
                style: TextStyle(
                    fontFamily: "chbold", fontSize: 18, color: Colors.white)),
          ),
          Container(
            margin: new EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.06),
            padding: new EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.02,
                right: MediaQuery.of(context).size.width * 0.02,
                top: MediaQuery.of(context).size.height * 0.01,
                bottom: MediaQuery.of(context).size.height * 0.01),
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xFFCD5F92),
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.access_time,
                  color: Colors.white,
                ),
                Container(
                  margin: new EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * 0.02),
                  child: Text(
                    "15-20 min",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
    return todo;
  }
}
