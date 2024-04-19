import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/firebase_options.dart';
import 'package:flutter_e_commerce_app/providers/favourite_provider.dart';
import 'package:flutter_e_commerce_app/providers/main_screen_provider.dart';
import 'package:flutter_e_commerce_app/providers/tab_provider.dart';
import 'package:flutter_e_commerce_app/views/ui/home_page.dart';
import 'package:flutter_e_commerce_app/views/ui/login_page.dart';
import 'package:provider/provider.dart';

import 'providers/cart_provider.dart';

Future<void> main() async{
 WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => MainPageProvider()),
        ChangeNotifierProvider(create: (context) => TabProvider()),
        ChangeNotifierProvider(create: (context) => CartProvider()),
        ChangeNotifierProvider(create: (context) => FavouriteProvider()),
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
      home: const LoginScreen(),
    );
  }
}
