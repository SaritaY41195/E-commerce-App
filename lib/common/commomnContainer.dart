import 'package:flutter/material.dart';

class CommonContainer extends StatefulWidget {
  final double height;
  final double width;
  final Color color;
  final Widget child;
  const CommonContainer(
      {super.key,
      required this.height,
      required this.width,
      required this.color,
      required this.child});

  @override
  State<CommonContainer> createState() => _CommonContainerState();
}

class _CommonContainerState extends State<CommonContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      color: widget.color,
      child: widget.child,
    );
  }
}
