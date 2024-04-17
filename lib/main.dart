import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/providers/favourite_provider.dart';
import 'package:flutter_e_commerce_app/providers/main_screen_provider.dart';
import 'package:flutter_e_commerce_app/providers/tab_provider.dart';
import 'package:flutter_e_commerce_app/views/ui/home_page.dart';
import 'package:provider/provider.dart';

import 'cart_provider.dart';

void main() {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => MainPageProvider()),
        ChangeNotifierProvider(create: (context) => TabProvider()),
        ChangeNotifierProvider(create: (context) => FavouriteProvider()),
        ChangeNotifierProvider(create: (context) => CartProvider()),
      ],
      child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
