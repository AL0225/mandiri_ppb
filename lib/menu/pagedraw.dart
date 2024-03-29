// ignore_for_file: must_be_immutable, override_on_non_overriding_member

import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:mandiri_pbb/pages/anggota.dart';
import 'package:mandiri_pbb/pages/menutips.dart';
import 'package:mandiri_pbb/pages/tentang.dart';

class PageDraw extends StatelessWidget {
  PageDraw({super.key});

  final _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        PageView(
        controller: _pageController,
        children: [MenuTips(), Anggota(), Tentang()],
        ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.grey.shade400,
        buttonBackgroundColor: Colors.white,
        height: 65,
        items: <Widget>[
          Icon(
            Icons.home,
            size: 35,
            color: Colors.grey.shade900,
          ),
          Icon(
            Icons.person,
            size: 35,
            color: Colors.grey.shade900,
          ),
          Icon(
            Icons.info,
            size: 35,
            color: Colors.grey.shade900,
          ),
        ],
        onTap: (index) {
          _pageController.animateToPage(index,
              duration: const Duration(milliseconds: 250),
              curve: Curves.easeOut);
        },
      ),
    );
  }
}