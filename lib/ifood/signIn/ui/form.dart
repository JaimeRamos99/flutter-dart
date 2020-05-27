import 'package:flutter/material.dart';
import '../../../utils/thumbs_icons.dart';
import './inputsContainer.dart';

class Contenedor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wrapper = Container(
      height: MediaQuery.of(context).size.height * 0.65,
      width: MediaQuery.of(context).size.width,
      margin:
          new EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.35),
      decoration: new BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(50), topLeft: Radius.circular(50))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Text('Crear cuenta',
                style: TextStyle(
                  fontFamily: "Chmedium",
                  fontSize: 22.0,
                )),
            margin: new EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.06,
                left: MediaQuery.of(context).size.width * 0.08),
          ),
          InputsContainer()
        ],
      ),
    );
    return wrapper;
  }
}
/*TextField(
obscureText: true,
decoration: InputDecoration(
border: OutlineInputBorder(),
labelText: 'Password',
),
)*/
