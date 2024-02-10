import 'package:flutter/material.dart';
import 'package:whitehouse/config/colors.dart';

import 'EventScreen.dart';
import 'HomeScreen.dart';
import 'MoneyScreen.dart';
import 'StatsScreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List _screens = [
    HomeScreen(),
    MoneyScreen(),
    EventScreen(),
    StatsScreen(),
  ];

  int currtIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[currtIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currtIndex,
        onTap: (index) => setState(() => currtIndex = index),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        elevation: 0.0,
        items: [Icons.home, Icons.insert_chart, Icons.event_note, Icons.info]
            .asMap()
            .map((key, value) => MapEntry(
          key,
          BottomNavigationBarItem(
            label: "",
            icon: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 6.0,
                horizontal: 16.0,
              ),
              decoration: BoxDecoration(
                color: currtIndex == key
                    ? Colors.blue[600]
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Icon(value),
            ),
          ),
        ))
            .values
            .toList(),
      ),
    );
  }
}
