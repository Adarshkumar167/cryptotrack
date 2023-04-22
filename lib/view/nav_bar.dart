import 'package:flutter/material.dart';
import 'home.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex = 0;

  List<Widget> pages = [
    const Home(),
    const Home(),
    const Home(),
    const Home(),
  ];

  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: pages.elementAt(_currentIndex),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: _currentIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: const Color(0xffFBC700),
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          onTap: ((value) => setState(() {
                _currentIndex = value;
              })),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined, size: myHeight * 0.03),
              label: 'Home',
              activeIcon: Icon(Icons.home, size: myHeight * 0.03),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.compass_calibration_outlined,
                  size: myHeight * 0.03),
              label: 'View',
              activeIcon:
                  Icon(Icons.compass_calibration, size: myHeight * 0.03),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none_outlined,
                  size: myHeight * 0.03),
              label: 'Notification',
              activeIcon: Icon(Icons.notifications, size: myHeight * 0.03),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined, size: myHeight * 0.03),
              label: 'Profile',
              activeIcon: Icon(Icons.person_2, size: myHeight * 0.03),
            ),
          ],
        ),
      ),
    );
  }
}
