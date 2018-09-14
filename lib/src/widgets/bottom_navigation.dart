import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  BottomNavigation({Key key, this.current}) : super(key: key);

  final int current;

  @override
  Widget build(BuildContext context) {
    return _buildUi(context);
  }

  BottomNavigationBar _buildUi(BuildContext context) {
    return _bottomNavigationBar(context);
  }

  BottomNavigationBar _bottomNavigationBar(BuildContext context) {
    List<BottomNavigationBarItem> navigationItems = new List();
    navigationItems.add(_todayNavigation());
    navigationItems.add(_weeklyNavigation());
    navigationItems.add(_monthlyNavigation());

    return BottomNavigationBar(
      items: navigationItems,
      currentIndex: current,
      onTap: (index) => _onTap(index, context),
    );
  }

  void _onTap(int index, BuildContext context) {
    if (current == index) {
      return;
    }

    switch (index) {
      case 0:
        Navigator.pushReplacementNamed(context, 'today');
        break;

      case 1:
        Navigator.pushReplacementNamed(context, 'weekly');
        break;

      case 2:
        Navigator.pushReplacementNamed(context, 'monthly');
        break;
    }
  }

  BottomNavigationBarItem _monthlyNavigation() {
    return BottomNavigationBarItem(
      icon: Icon(Icons.cloud),
      activeIcon: Icon(Icons.cloud_circle),
      title: Text('Month'),
    );
  }

  BottomNavigationBarItem _weeklyNavigation() {
    return BottomNavigationBarItem(
        icon: Icon(Icons.cloud),
        activeIcon: Icon(Icons.cloud_circle),
        title: Text('Week')
    );
  }

  BottomNavigationBarItem _todayNavigation() {
    return BottomNavigationBarItem(
        icon: Icon(Icons.cloud),
        activeIcon: Icon(Icons.cloud_circle),
        title: Text('Today')
    );
  }
}