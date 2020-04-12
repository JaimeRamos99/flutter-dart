import 'package:flutter/material.dart';
import 'addIcon.dart';
class ListaItemCuatro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final todo = Container(
      width: MediaQuery.of(context).size.width * 0.20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Container(
            alignment: Alignment.topRight,
            height: MediaQuery.of(context).size.height * 0.07,
            child: Icon(
              Icons.close,
              color: Colors.white,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.03,
                width: MediaQuery.of(context).size.width * 0.06,
                margin: new EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * 0.03),
                decoration: BoxDecoration(
                    color: Color(0xFFDDA5FA),
                    borderRadius: new BorderRadius.all(Radius.circular(10))),
                child: Icon(
                  Icons.remove,
                  color: Colors.white,
                  size: 18,
                ),
              ),
              AddIcon()
            ],
          )
        ],
      ),
    );
    return todo;
  }
}
