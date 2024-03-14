import 'package:flutter/material.dart';

class BottomNavWidget extends StatelessWidget {
  final IconData? icon;
  final void Function()? onTap;
   const BottomNavWidget({
    super.key, this.icon, this.onTap,
  });


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: SizedBox(
          height: 36,
          width: 36,
          child: Icon(
            icon,
            color: Colors.white,
            size: 30,),
        ));
  }
}
