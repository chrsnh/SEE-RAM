// ignore_for_file: prefer_const_constructors, use_build_context_synchronously

/* 
Authored by: Alleona Divine Asis || Charies Ann Hao || Ruvhie Kaye Prado
Company: Alruch Co.
Project: SEE-RAM
Feature: [ARC-001] Splash Screen
Description: This screen dissplays the logo of the application.
 */

//  To notify the user that the program is in the process of loading.

import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 245, 248),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/Logo.png',
              height: 160,
              width: 160,
            ),
          ],
        ),
      ),
    );
  }
}
