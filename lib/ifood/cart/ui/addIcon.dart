import 'package:flutter/material.dart';
class AddIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.03,
      width: MediaQuery.of(context).size.width * 0.06,
      decoration: BoxDecoration(
          color: Color(0xFFFACBCD),
          borderRadius: new BorderRadius.all(Radius.circular(10))),
      child: Icon(
        Icons.add,
        color: Color(0xFF4A056C),
        size: 18,
      ),
    );
  }
}