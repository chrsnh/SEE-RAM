// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:recipe_app/models/food.dart';
import 'package:recipe_app/screens/quick_foods_screen.dart';
import 'package:recipe_app/screens/recipe_screen.dart';
import 'package:iconsax/iconsax.dart';

class QuickAndFastList extends StatelessWidget {
  const QuickAndFastList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Food Menu",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const QuickFoodsScreen(),
                ),
              ),
              child: const Text("View all"),
            ),
          ],
        ),
        const SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              foods.length,
              (index) => GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RecipeScreen(food: foods[index]),
                  ),
                ),
                child: Container(
                  margin: const EdgeInsets.only(right: 20),
                  width: 162,
                  child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 230,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],
                              image: DecorationImage(
                                image: AssetImage(foods[index].image),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            foods[index].name,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Open Sans',
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              const Icon(
                                Iconsax.flash_1,
                                size: 18,
                                color: Colors.grey,
                              ),
                              Text(
                                "${foods[index].cal} Cal",
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                              const Text(
                                " · ",
                                style: TextStyle(color: Colors.grey),
                              ),
                              const Icon(
                                Iconsax.clock,
                                size: 18,
                                color: Colors.grey,
                              ),
                              Text(
                                "${foods[index].time} Min",
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Positioned(
                        top: 1,
                        right: 1,
                        child: IconButton(
                          onPressed: () {},
                          style: IconButton.styleFrom(
                            backgroundColor: Colors.white,
                            fixedSize: const Size(30, 30),
                          ),
                          iconSize: 20,
                          icon: const Icon(Iconsax.heart),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
