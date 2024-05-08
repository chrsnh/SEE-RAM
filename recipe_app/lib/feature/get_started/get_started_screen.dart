// ignore_for_file: prefer_const_constructors

/* 
Authored by: Alleona Divine Asis || Charies Ann Hao || Ruvhie Kaye Prado
Company: Alruch Co.
Project: SEE-RAM
Feature: [ARC-002] Get Started Screen
Description: This screen dislpays the initial welcome message.
*/

// To provide a clear and concise introduction to the application.

import 'package:flutter/material.dart';
import 'package:recipe_app/core/route/app_route_name.dart';
import 'package:recipe_app/core/theme/app_color.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: Stack(
        children: [
          Image.asset(
            'assets/images/get_started_screen.png',
            height: 700,
            width: 500,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Awaken your",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Inner Chef.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Kitchen is Where You'll Have A Good Time",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Open Sans',
                    ),
                  ),
                  const SizedBox(height: 25),
                  CustomButton(
                    text: "Get Started",
                    onPressed: () => Navigator.pushReplacementNamed(context, AppRouteName.home),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 70),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: const Color.fromARGB(255, 50, 50, 50),
          fontSize: 20,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
