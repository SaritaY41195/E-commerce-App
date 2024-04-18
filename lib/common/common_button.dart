import 'package:flutter/material.dart';

class CommonButton extends StatefulWidget {
  final double? height;
  final double? width;
  final Function onTap;
  final String title;
  const CommonButton({super.key, required this.title, required this.onTap, this.height, this.width});

  @override
  State<CommonButton> createState() => _CommonButtonState();
}

class _CommonButtonState extends State<CommonButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onTap();
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: widget.height,
          width: widget.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(colors: [
                Color.fromRGBO(34, 34, 49, 1.0),
                Color.fromRGBO(117, 118, 140, 0.6),
              ])),
          child: Center(
            child: Text(widget.title, style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold),),
          ),
        ),
      ),
    );
  }
}
