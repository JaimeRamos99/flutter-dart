import 'package:flutter/material.dart';
import '../../../../utils/raisedBoton.dart';
import 'package:country_code_picker/country_code_picker.dart';

class FormVerificationCode extends StatelessWidget {
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
        child: Column(
          children: <Widget>[
            Material(
                type: MaterialType.transparency,
                child: new Container(
                  width: MediaQuery.of(context).size.width * 0.90,
                  height: MediaQuery.of(context).size.height * 0.08,
                  margin: new EdgeInsets.only(
                      top: 20,
                      left: MediaQuery.of(context).size.width * 0.05,
                      right: MediaQuery.of(context).size.width * 0.05),
                  child: Text('Código de verificación',
                      style: TextStyle(
                        fontFamily: "Chmedium",
                        fontSize: 25.0,
                      )),
                )),
            Container(
              width: MediaQuery.of(context).size.width * 0.90,
              height: MediaQuery.of(context).size.height * 0.08,
              margin: new EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.01,
                  bottom: MediaQuery.of(context).size.height * 0.03,
                  left: MediaQuery.of(context).size.width * 0.02,
                  right: MediaQuery.of(context).size.width * 0.05),
              child: Material(
                  type: MaterialType.transparency,
                  child: new Text(
                    'Ingresa el código que enviamos a tu celular',
                    style: TextStyle(
                        fontFamily: "Ch", fontSize: 18.0, color: Colors.grey),
                  )),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.1,
              child: Row(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * 0.10,
                    height: MediaQuery.of(context).size.height * 0.1,
                    margin: new EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height * 0.01,
                        left: MediaQuery.of(context).size.width * 0.05,
                        right: MediaQuery.of(context).size.width * 0.01),
                    child: Material(
                        child: TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: '',
                      ),
                    )),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.10,
                    height: MediaQuery.of(context).size.height * 0.1,
                    margin: new EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height * 0.01,
                        left: MediaQuery.of(context).size.width * 0.01,
                        right: MediaQuery.of(context).size.width * 0.01),
                    child: Material(
                        child: TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: '',
                      ),
                    )),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.10,
                    height: MediaQuery.of(context).size.height * 0.1,
                    margin: new EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height * 0.01,
                        left: MediaQuery.of(context).size.width * 0.01,
                        right: MediaQuery.of(context).size.width * 0.01),
                    child: Material(
                        child: TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: '',
                      ),
                    )),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.10,
                    height: MediaQuery.of(context).size.height * 0.1,
                    margin: new EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height * 0.01,
                        left: MediaQuery.of(context).size.width * 0.01,
                        right: MediaQuery.of(context).size.width * 0.01),
                    child: Material(
                        child: TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: '',
                      ),
                    )),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.10,
                    height: MediaQuery.of(context).size.height * 0.1,
                    margin: new EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height * 0.01,
                        left: MediaQuery.of(context).size.width * 0.01,
                        right: MediaQuery.of(context).size.width * 0.01),
                    child: Material(
                        child: TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: '',
                      ),
                    )),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.10,
                    height: MediaQuery.of(context).size.height * 0.1,
                    margin: new EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height * 0.01,
                        left: MediaQuery.of(context).size.width * 0.01,
                        right: MediaQuery.of(context).size.width * 0.05),
                    child: Material(
                        child: TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: '',
                      ),
                    )),
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.90,
              height: MediaQuery.of(context).size.height * 0.05,
              margin: new EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.05,
                  right: MediaQuery.of(context).size.width * 0.05),
              child: Row(children: <Widget>[
                Icon(
                  Icons.arrow_back_ios,
                  size: 25,
                ),
                Container(
                    child: Material(
                  type: MaterialType.transparency,
                  child: new Text(
                    'Atrás',
                    style: TextStyle(fontSize: 18, fontFamily: 'chmedium'),
                  ),
                ))
              ]),
            )
          ],
        ),
      ),
    );
    final continueButton = BotonRaised(textButtonn: "Continuar");
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[contenedor, continueButton],
    );
  }
}
