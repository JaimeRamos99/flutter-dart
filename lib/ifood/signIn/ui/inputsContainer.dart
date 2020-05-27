import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputsContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wrapper = Container(
      margin: new EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.10,
          right: MediaQuery.of(context).size.width * 0.10,
          top: MediaQuery.of(context).size.height * 0.05),
      child: Column(
        children: <Widget>[
          TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.person),
                hintText: '¿Cómo te llamas?',
                labelText: 'Nombre *',
              ),
              onSaved: (String value) {
// This optional block of code can be used to run
// code when the user saves the form.
              },
              validator: (String value) {
                return value.contains('@') ? 'Do not use the @ char.' : null;
              }),
          TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.person),
                hintText: '¿Cuál es tu apellido?',
                labelText: 'Apellido *',
              ),
              onSaved: (String value) {
// This optional block of code can be used to run
// code when the user saves the form.
              },
              validator: (String value) {
                return value.contains('@') ? 'Do not use the @ char.' : null;
              }),
          TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.home),
                hintText: 'Tu dirección habitual para pedidos',
                labelText: 'Dirección predeterminada *',
              ),
              onSaved: (String value) {
// This optional block of code can be used to run
// code when the user saves the form.
              },
              validator: (String value) {
                return value.contains('@') ? 'Do not use the @ char.' : null;
              }),
          Container(
            margin: new EdgeInsets.only(top: 30),
            child: RaisedButton(
              onPressed: () {},
              textColor: Colors.white,
              padding: const EdgeInsets.all(0.0),
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(15.0)),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.80,
                height: MediaQuery.of(context).size.height * 0.08,
                decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: new BorderRadius.all(Radius.circular(15))),
                child: Center(
                  child: const Text('Ingresar',
                      style: TextStyle(fontSize: 16, fontFamily: "chmedium")),
                ),
              ),
            ),
          )
        ],
      ),
    );
    return wrapper;
  }
}
/*
)*/
