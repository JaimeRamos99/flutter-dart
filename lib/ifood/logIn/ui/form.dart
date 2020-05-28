import 'package:flutter/material.dart';
import '../../../utils/raisedBoton.dart';
import 'package:country_code_picker/country_code_picker.dart';

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
                  child: Text('¡Ingresa!',
                      style: TextStyle(
                        fontFamily: "Chmedium",
                        fontSize: 30.0,
                      )),
                )),
            Container(
                width: MediaQuery.of(context).size.width * 0.3,
                margin: new EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05,
                    right: MediaQuery.of(context).size.width * 0.50),
                height: MediaQuery.of(context).size.height * 0.08,
                child: CountryCodePicker(
                  onChanged: print,
                  // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                  initialSelection: 'CO',
                  favorite: ['+57', 'CO'],
                  // optional. Shows only country name and flag
                  showCountryOnly: false,
                  // optional. Shows only country name and flag when popup is closed.
                  showOnlyCountryWhenClosed: false,
                  // optional. aligns the flag and the Text left
                  alignLeft: true,
                )),
            Container(
              margin: new EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.05,
                  right: MediaQuery.of(context).size.width * 0.05),
              height: MediaQuery.of(context).size.height * 0.08,
              child: Material(
                child: TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.phone),
                      hintText: 'Tu # de teléfono',
                      labelText: 'Ingresa tu número*',
                    ),
                    onSaved: (String value) {
// This optional block of code can be used to run
// code when the user saves the form.
                    },
                    validator: (String value) {
                      return value.contains('@')
                          ? 'Do not use the @ char.'
                          : null;
                    }),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.90,
              height: MediaQuery.of(context).size.height * 0.08,
              margin: new EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.05,
                  left: MediaQuery.of(context).size.width * 0.05,
                  right: MediaQuery.of(context).size.width * 0.05),
              child: Material(
                type: MaterialType.transparency,
                child: new Text(
                  'Un código de 6 dígitos será enviado a este número',
                  style: TextStyle(
                    fontFamily: "Chmedium",
                    fontSize: 18.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
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
