import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/bloc_user.dart';
import './ifood/landing/ui/index.dart';
import './ifood/cart/ui/index.dart';
import './ifood/product/ui/index.dart';
import './ifood/home/ui/index.dart';
import './ifood/restaurant/ui/index.dart';
import './ifood/favorites/ui/index.dart';
import './ifood/signIn/ui/index.dart';
import 'ifood/logIn/ui/phoneNumber/index.dart';
import 'ifood/logIn/ui/verificationCode/index.dart';

import './ifood/landing/bloc/bloc_landing.dart';
import './ifood/cart/bloc/bloc_cart.dart';
import './ifood/product/bloc/bloc_product.dart';
import './ifood/home/bloc/bloc_home.dart';
import './ifood/restaurant/bloc/bloc_restaurant.dart';
import './ifood/favorites/bloc/bloc_favorites.dart';
import './ifood/signIn/bloc/bloc_signIn.dart';
import './ifood/favorites/repository/api.dart';
import './ifood/logIn/bloc/bloc_logIn.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
        ),
        child: BlocProvider(
          child: MaterialApp(
            title: 'Holu',
            debugShowCheckedModeBanner: false,
            initialRoute: '/logInVerificationCode',
            routes: {
              '/': (context) => BlocProvider(
                    child: IndexHome(),
                    bloc: HomeBloc(),
                  ),
              '/restaurant': (context) => BlocProvider(
                  child: IndexRestaurant(), bloc: RestaurantBloc()),
              '/product': (context) => BlocProvider(
                    child: Product(),
                    bloc: ProductBloc(),
                  ),
              '/cart': (context) => BlocProvider(
                    child: Cart(),
                    bloc: CartBloc(),
                  ),
              '/splash': (context) => BlocProvider(
                    child: Landing(),
                    bloc: LandingBloc(),
                  ),
              '/favorites': (context) => BlocProvider(
                    child: Favoritos(),
                    bloc: FavoritesBloc(),
                  ),
              '/prueba': (context) => BlocProvider(
                    //fetching data
                    child: MyApp2(),
                    bloc: FavoritesBloc(),
                  ),
              '/sign': (context) => BlocProvider(child: SignIn(), bloc:SignInBloc()),
              '/logIn': (context)=>BlocProvider(child: LogIn(),bloc: LogInBloc(),),
              '/logInVerificationCode': (context)=>BlocProvider(child: LogInVerificationCode(),bloc: LogInBloc(),),
            },
          ),
          bloc: UserBloc(),
        ));
  }
}
