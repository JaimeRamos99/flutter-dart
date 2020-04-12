import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Dropdown();
  }
}

String dropdownValue = 'Ahora';

class _Dropdown extends State<Dropdown> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: Icon(
        Icons.keyboard_arrow_down,
        color: Colors.pinkAccent,
      ),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.pinkAccent, fontFamily: "chmedium",fontSize: 17),
      underline: Container(
        height: 2,
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>['Ahora', 'En 30 mins', 'En 1 hora', 'En 2 hora']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
