import 'package:flutter/material.dart';
import '../widgets/bottom_navigation.dart';

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
      bottomNavigationBar: BottomNavigation(current: 1,),
      floatingActionButton: FloatingActionButton(
        onPressed: _onPressed,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

  void _onPressed() {

  }
}