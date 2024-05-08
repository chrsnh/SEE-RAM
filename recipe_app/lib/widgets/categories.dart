// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
    required this.currentCat,
  }) : super(key: key);

  final String currentCat;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Container(
                    height: 90.0,
                    width: 90.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3), // Adjust shadow color and opacity
                          offset: Offset(2.0, 4.0), // Adjust shadow position (x, y)
                          blurRadius: 5.0, // Adjust shadow blur radius
                        ),
                      ],
                      image: const DecorationImage(
                        image: AssetImage('assets/images/all_recipes.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Container(
                    height: 90.0,
                    width: 90.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          offset: Offset(2.0, 4.0),
                          blurRadius: 5.0,
                        ),
                      ],
                      image: const DecorationImage(
                        image: AssetImage('assets/images/breakfast_recipes.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Container(
                    height: 90.0,
                    width: 90.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          offset: Offset(2.0, 4.0),
                          blurRadius: 5.0,
                        ),
                      ],
                      image: const DecorationImage(
                        image: AssetImage('assets/images/lunch_recipes.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Container(
                    height: 90.0,
                    width: 90.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          offset: Offset(2.0, 4.0),
                          blurRadius: 5.0,
                        ),
                      ],
                      image: const DecorationImage(
                        image: AssetImage('assets/images/dinner_recipes.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
