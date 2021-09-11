import 'package:flutter/material.dart';
import 'package:salony/bottomBarItemOne.dart';
import 'package:salony/bottomBarItemTwo.dart';
import 'package:salony/bottomBarItemThree.dart';
import 'package:salony/bottomBarItemFour.dart';
import 'package:salony/bottomBarItemFife.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currIndex = 0;

  final List<Widget> pages = [
    ItemOne(),
    ItemTwo(),
    ItemThree(),
    ItemFour(),
    ItemFife(),
  ];

  void onTabTapped(int index) {
    setState(() {
      currIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color(0xFF654342),
          primaryColor: Color(0xFFFFFFFF),
          textTheme: Theme.of(context).textTheme.copyWith(
                caption: new TextStyle(color: Colors.black),
              ),
        ),
        child: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: currIndex,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/hairdye.png",
                color: Colors.white,
              ),
              label: 'الرئيسية',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/shop.png",
                color: Colors.white,
              ),
              label: 'الصالونات',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/hairdresser.png",
                color: Colors.white,
              ),
              label: 'الخبيرات',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/tag.png",
                color: Colors.white,
              ),
              label: 'العروض',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/shop.png",
                color: Colors.white,
              ),
              label: 'المتجر',
            ),
          ],
          selectedItemColor: Color(0xFFf6979f),
          showSelectedLabels: true,
          showUnselectedLabels: false,
        ),
      ),
    );
  }
}
