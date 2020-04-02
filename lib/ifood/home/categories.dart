import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            ]
        ));
  }
}
