import 'package:flutter/material.dart';
import '../../../utils/raisedBoton.dart';

class FormPhone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final contenedor = new Center(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.4,
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: new BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        margin: new EdgeInsets.only(
            bottom: MediaQuery.of(context).size.height * 0.05),
      ),
    );
    final continueButton = BotonRaised(textButtonn: "Continuar");
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[contenedor, continueButton],
    );
  }
}
