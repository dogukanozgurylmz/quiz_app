import 'package:flutter/material.dart';

import '../pages/home_page.dart';

class MyBottomBar extends StatefulWidget {
  const MyBottomBar({Key? key}) : super(key: key);

  @override
  _MyBottomBarState createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyBottomBar> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 15,
      left: 15,
      right: 15,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        child: BottomNavigationBar(
          unselectedItemColor: Colors.white60,
          showUnselectedLabels: false,
          selectedItemColor: Colors.white,
          showSelectedLabels: false,
          selectedFontSize: 0,
          selectedIconTheme: const IconThemeData(
            size: 40,
            color: Colors.white,
          ),
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.indigo.withOpacity(0.8),
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(
              tooltip: "Home",
              icon: Icon(
                Icons.home_outlined,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              tooltip: "Search",
              icon: Icon(
                Icons.search_outlined,
              ),
              label: "Search",
            ),
            BottomNavigationBarItem(
              tooltip: "Cart",
              icon: Icon(
                Icons.shopping_cart_outlined,
              ),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              tooltip: "Profile",
              icon: Icon(
                Icons.account_circle_outlined,
              ),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
