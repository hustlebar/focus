import 'package:flutter/material.dart';

class FollowUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Follow up'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.center_focus_strong),
            tooltip: 'Tasks',
            onPressed: () => _onTasks(context),
          ),
//          IconButton(
//            icon: Icon(Icons.center_focus_weak),
//            tooltip: 'Follow up',
//            onPressed: () => _onFollowUp(context),
//          )
        ],
      ),
      body: Center(
        child: Text('Follow ups'),
      )
    );
  }

  void _onTasks(BuildContext context) {
    Navigator.pushReplacementNamed(context, 'weekly');
  }

  void _onFollowUp(BuildContext context) {
    Navigator.pushReplacementNamed(context, 'followup');
  }
}