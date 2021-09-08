import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.pink,
        backgroundColor: Color.fromRGBO(55, 57, 84, 1),
        unselectedItemColor: Colors.white30,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance), label: 'Calendar'),
          BottomNavigationBarItem(icon: Icon(Icons.close), label: 'Calendar2'),
          BottomNavigationBarItem(icon: Icon(Icons.http), label: 'Calendar3')
        ]);
  }
}
