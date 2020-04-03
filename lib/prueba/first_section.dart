import 'package:flutter/material.dart';

class FirstSection extends StatelessWidget implements PreferredSizeWidget {
  final AppBar appBar;
  final String pathImage;

  /// you can add more fields tat meet your needs

  const FirstSection({Key key, this.appBar, this.pathImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final photo = Container(
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          image: DecorationImage(
              fit: BoxFit.contain, image: AssetImage(pathImage))),
      height: 90,
    );
    final main1 = Container(
        color: Colors.yellow,
        width: MediaQuery.of(context).size.width,
        child: (photo));
    return main1;
  }

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}
