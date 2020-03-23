import 'package:flutter/material.dart';

class FirstSection extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColor = Colors.white;
  final Text title;
  final AppBar appBar;
  final List<Widget> widgets;

  /// you can add more fields that meet your needs

  const FirstSection({Key key, this.title, this.appBar, this.widgets})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    final navbar =Row(
    children:<Widget>[
    Container(
    child:Text("hola"))]
    );
    return navbar;

  }

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}
