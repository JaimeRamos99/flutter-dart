import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './ifood/splash/index.dart';
import './ifood/cart/index.dart';
import './ifood/product/index.dart';
import './ifood/home/index.dart';
import './ifood/restaurant/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
        ),
        child: MaterialApp(
          title: 'Holu',
          initialRoute: '/home',
          routes: {
            '/': (context) => IndexHome(),
            '/restaurant': (context) => IndexRestaurant(),
            '/product': (context) => Product(),
            '/cart': (context) => Cart(),
            '/splash': (context) => Splash()
          },
        ));
  }
}
