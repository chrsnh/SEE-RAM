// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:recipe_app/constants.dart';
import 'package:iconsax/iconsax.dart';
import 'package:recipe_app/screens/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentTab = 0;
  List screens = const [
    HomeScreen(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 252, 218, 229),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => setState(() {
                currentTab = 0;
              }),
              child: Column(
                children: [
                  Icon(
                    currentTab == 0 ? Iconsax.home5 : Iconsax.home,
                    color: currentTab == 0 ? kprimaryColor : const Color.fromARGB(255, 0, 0, 0),
                  ),
                  Text(
                    "Home",
                    style: TextStyle(
                      fontSize: 14,
                      color: currentTab == 0 ? kprimaryColor : const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => setState(() {
                currentTab = 1;
              }),
              child: Column(
                children: [
                  Icon(
                    currentTab == 1 ? Iconsax.heart5 : Iconsax.heart,
                    color: currentTab == 1 ? kprimaryColor : const Color.fromARGB(255, 0, 0, 0),
                  ),
                  Text(
                    "Favorites",
                    style: TextStyle(
                      fontSize: 14,
                      color: currentTab == 1 ? kprimaryColor : const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => setState(() {
                currentTab = 2;
              }),
              child: Column(
                children: [
                  Icon(
                    currentTab == 2 ? Iconsax.document_download : Iconsax.document_download,
                    color: currentTab == 2 ? kprimaryColor : const Color.fromARGB(255, 0, 0, 0),
                  ),
                  Text(
                    "Downloads",
                    style: TextStyle(
                      fontSize: 14,
                      color: currentTab == 2 ? kprimaryColor : const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => setState(() {
                currentTab = 3;
              }),
              child: Column(
                children: [
                  Icon(
                    currentTab == 3 ? Iconsax.setting : Iconsax.setting,
                    color: currentTab == 3 ? kprimaryColor : const Color.fromARGB(255, 0, 0, 0),
                  ),
                  Text(
                    "Settings",
                    style: TextStyle(
                      fontSize: 14,
                      color: currentTab == 3 ? kprimaryColor : const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: screens[currentTab],
    );
  }
}
