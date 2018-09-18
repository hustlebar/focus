import 'package:flutter/material.dart';
import 'package:focus/src/pages/home.dart';
import 'package:focus/src/pages/weekly.dart';
import 'package:focus/src/pages/monthly.dart';
import 'package:focus/src/pages/create.dart';
import 'package:focus/src/pages/followup.dart';

class FocusApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Focus',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: HomePage(title: 'Focus'),
      routes: {
        'today': (context) => HomePage(title: 'Focus',),
        'weekly': (context) => WeeklyPage(title: 'Focus Weekly',),
        'monthly': (context) => MonthlyPage(title: 'Focus Monthly',),
        'create': (context) => CreateTaskPage(),
        'followup': (context) => FollowUp()
      },
    );
  }
}