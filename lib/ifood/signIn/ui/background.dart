import 'package:flutter/material.dart';
import '../../../utils/thumbs_icons.dart';
class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wrapper = Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Color(0xFFFFC4B7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.10,
            width: MediaQuery.of(context).size.width * 0.3,
            margin: new EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.10,
                left: MediaQuery.of(context).size.width * 0.1),
            child: Icon(
              Thumbs.emo_thumbsup,
              size: 60,
            ),
          )
        ],
      ),
    );
    return wrapper;
  }
}
