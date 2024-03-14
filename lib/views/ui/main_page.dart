import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/providers/main_screen_provider.dart';
import 'package:flutter_e_commerce_app/views/ui/cart_page.dart';
import 'package:flutter_e_commerce_app/views/ui/home_page.dart';
import 'package:flutter_e_commerce_app/views/ui/profile_page.dart';
import 'package:flutter_e_commerce_app/views/ui/search_page.dart';
import 'package:provider/provider.dart';
import '../shared/bottom_nav_bar.dart';
import '../shared/bottom_nav_widget.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Widget> pageList = const [
    HomePage(),
    SearchPage(),
    HomePage(),
    CartPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<MainPageProvider>(
      builder: (context, mainPageProvider, child) => Scaffold(
        backgroundColor: const Color(0xFFE2E2E2),
        body: pageList[mainPageProvider.pageIndex],
        bottomNavigationBar: const BottomNavBar(),
      ),
    );
  }
}

