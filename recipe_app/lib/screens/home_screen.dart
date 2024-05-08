/* 
Authored by: Alleona Divine Asis || Charies Ann Hao || Ruvhie Kaye Prado
Company: Alruch Co.
Project: SEE-RAM
Feature: [ARC-003] Home Screen
Description: This screen displays the categories of meals and recipes that the user can 
             choose from. This also displays the navigation bar of the application, which 
             includes the home screen, favorites, downloaded recipes, and the settings. This 
             home screen also displays the search bar where a user can search for recipes.
*/

//  It provides a user immediate access to apps when the phone is picked up.

import 'package:flutter/material.dart';
import 'package:recipe_app/widgets/categories.dart';
import 'package:recipe_app/widgets/home_appbar.dart';
import 'package:recipe_app/widgets/home_search_bar.dart';
import 'package:recipe_app/widgets/quick_and_fast_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String currentCat = "All";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 245, 248),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeAppbar(),
                const SizedBox(height: 15),
                const HomeSearchBar(),
                const SizedBox(height: 15),
                const Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 15),
                Categories(currentCat: currentCat),
                const SizedBox(height: 15),
                const QuickAndFastList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
