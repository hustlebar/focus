import 'package:flutter/material.dart';

class Space extends StatelessWidget {
  Space(this.width, this.height);
  final double width, height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
    );
  }
}