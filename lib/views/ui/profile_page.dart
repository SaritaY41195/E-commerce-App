import 'package:flutter/material.dart';

import '../shared/appStyle.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('This is profile page',  style: appStyle(30, Colors.black, FontWeight.bold),)),
    );
  }
}
