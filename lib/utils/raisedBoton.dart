import 'package:flutter/material.dart';

class BotonRaised extends StatelessWidget {
  @override
  final String textButtonn;

  BotonRaised({
    Key key,
    this.textButtonn,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {},
      textColor: Colors.white,
      padding: const EdgeInsets.all(0.0),
      shape:
          RoundedRectangleBorder(borderRadius: new BorderRadius.circular(15.0)),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.40,
        height: MediaQuery.of(context).size.height * 0.08,
        decoration: BoxDecoration(
            color: Colors.lightBlue,
            borderRadius: new BorderRadius.all(Radius.circular(15))),
        child: Center(
          child:  Text(textButtonn,
              style: TextStyle(fontSize: 16, fontFamily: "chmedium")),
        ),
      ),
    );
  }
}
