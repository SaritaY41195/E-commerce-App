import 'package:flutter/material.dart';

import '../shared/appStyle.dart';
class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('This is search page', style: appStyle(30, Colors.black, FontWeight.bold),)),
    );
  }
}
