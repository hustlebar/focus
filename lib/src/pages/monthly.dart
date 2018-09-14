import 'package:flutter/material.dart';
import '../widgets/bottom_navigation.dart';

class MonthlyPage extends StatelessWidget {
  MonthlyPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return _buildUi(context);
  }

  Scaffold _buildUi(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title),),
      bottomNavigationBar: BottomNavigation(current: 2,),
        floatingActionButton: FloatingActionButton(
          onPressed: () => _onPressed(context),
          tooltip: 'Increment',
          child: Icon(Icons.add),
        )
    );
  }

  void _onPressed(BuildContext context) {
    Navigator.pushNamed(context, 'create');
  }
}