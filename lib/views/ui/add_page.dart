import 'package:flutter/material.dart';

import '../shared/appStyle.dart';

class AddPage extends StatelessWidget {
  const AddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('This is add page',  style: appStyle(30, Colors.black, FontWeight.bold),)),
    );
  }
}
