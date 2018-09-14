import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/weekly.dart';
import 'pages/monthly.dart';
import 'pages/create.dart';

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
        'create': (context) => CreateTaskPage()
      },
    );
  }
}