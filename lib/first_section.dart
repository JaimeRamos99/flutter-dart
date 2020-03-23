import 'package:flutter/material.dart';

class FirstSection extends StatelessWidget implements PreferredSizeWidget {
  final AppBar appBar;

  /// you can add more fields tat meet your needs

  const FirstSection({Key key, this.appBar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final main1 = Container(
      color: Colors.yellow,
      width: MediaQuery.of(context).size.width,
    );
    return main1;
  }

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}
