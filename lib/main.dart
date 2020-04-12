import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './ifood/landing/ui/index.dart';
import './ifood/cart/ui/index.dart';
import './ifood/product/ui/index.dart';
import './ifood/home/ui/index.dart';
import './ifood/restaurant/ui/index.dart';
import './ifood/favorites/ui/index.dart';

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
          initialRoute: '/',
          routes: {
            '/': (context) => IndexHome(),
            '/restaurant': (context) => IndexRestaurant(),
            '/product': (context) => Product(),
            '/cart': (context) => Cart(),
            '/splash': (context) => Splash(),
            '/favorites': (context) => Favoritos(),
          },
        ));
  }
}
