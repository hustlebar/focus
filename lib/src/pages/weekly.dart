import 'package:flutter/material.dart';

class WeeklyPage extends StatelessWidget {
  WeeklyPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return _buildUi(context);
  }

  Scaffold _buildUi(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title),),
    );
  }
}