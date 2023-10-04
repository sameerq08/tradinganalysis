import 'package:flutter/material.dart';
import 'package:tradinganalysis/View/home.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentindex = 0;
  List<Widget> pages = const [
    Home(),
    Home(),
    Home(),
    Home(),
  ];
  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    //double myWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: pages.elementAt(_currentindex),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentindex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            onTap: ((value) {
              setState(() {
                _currentindex = value;
              });
            }),
            items: [
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/icons/1.1.png',
                    height: myHeight * 0.01,
                    color: Colors.grey,
                  ),
                  label: '',
                  activeIcon: Image.asset(
                    'assets/icons/1.2.png',
                    height: myHeight * 0.02,
                    color: const Color(0xffFBC700),
                  )),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/icons/2.1.png',
                    height: myHeight * 0.02,
                    color: Colors.grey,
                  ),
                  label: '',
                  activeIcon: Image.asset('assets/icons/2.2.png',
                      color: const Color(0xffFBC700))),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/icons/3.1.png',
                    height: myHeight * 0.03,
                    color: Colors.grey,
                  ),
                  label: '',
                  activeIcon: Image.asset('assets/icons/3.2.png',
                      color: const Color(0xffFBC700))),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/icons/4.1.png',
                    height: myHeight * 0.03,
                    color: Colors.grey,
                  ),
                  label: '',
                  activeIcon: Image.asset('assets/icons/4.2.png',
                      color: const Color(0xffFBC700))),
            ]),
      ),
    );
  }
}
