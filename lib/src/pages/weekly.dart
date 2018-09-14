import 'package:flutter/material.dart';
import '../widgets/bottom_navigation.dart';

class WeeklyPage extends StatefulWidget {

  WeeklyPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  State<StatefulWidget> createState() {
    return new WeeklyPageState(title);
  }
}

class WeeklyPageState extends State<WeeklyPage> {
  WeeklyPageState(this.title);
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
        onPressed: () => _onPressed(context),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

  void _onPressed(BuildContext context) {
    Navigator.pushNamed(context, 'create');
  }
}