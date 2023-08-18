import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:login/page/page1.dart';
import 'package:login/page/page2.dart';
import 'package:login/page/page3.dart';
import 'package:login/page/page4.dart';
import 'package:login/page/page5.dart';

class Bottombar extends StatefulWidget {
  int selectedIndex = 2;
  Bottombar({super.key, required this.selectedIndex});

  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  int currentIndex = 2;
  List<Widget> pages = [
    const Page1(),
    const Page2(),
    const Page3(),
    const Page4(),
    const Page5()
  ];
  void onPageTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  void initState() {
    onPageTapped(widget.selectedIndex);
    currentIndex = widget.selectedIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget currentPage = pages[currentIndex];
    return Scaffold(
      body: currentPage,
      bottomNavigationBar: CurvedNavigationBar(
          index: currentIndex,
          color: const Color.fromARGB(255, 71, 96, 101),
          backgroundColor: Colors.white,
          items: <Widget>[
            const Icon(Icons.event, size: 30, color: Colors.white),
            const Icon(Icons.group, size: 30, color: Colors.white),
            Image.asset(
              'assets/images/LogoOnly.png',
              height: 40,
            ),
            const Icon(Icons.newspaper, size: 30, color: Colors.white),
            const Icon(Icons.settings, size: 30, color: Colors.white),
          ],
          onTap: onPageTapped),
    );
  }
}
