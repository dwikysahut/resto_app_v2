import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resto_app/model/detail_restaurant.dart';
import 'package:resto_app/model/restaurant.dart';
import 'package:resto_app/provider/restaurant_provider.dart';
import 'package:resto_app/screen/detail_screen.dart';
import 'package:resto_app/screen/home_screen.dart';
import 'package:resto_app/screen/search_screen.dart';
import 'package:resto_app/screen/splash_screen.dart';
import 'package:resto_app/service/api_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const SplashScreen(),
          '/home': (context) => const HomeScreen(),
          '/search': (context) => const SearchScreen(),
          '/detail': (context) => DetailScreen(
                restaurantId:
                    ModalRoute.of(context)?.settings.arguments as String,
              ),
        });
  }
}
