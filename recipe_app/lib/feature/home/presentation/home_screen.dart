// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:recipe_app/core/theme/app_color.dart';
import 'package:recipe_app/feature/home/model/recipe_model.dart';
import 'package:recipe_app/feature/home/presentation/widget/recipe_item.dart';

class HomeScrenn extends StatelessWidget {
  const HomeScrenn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 248, 245),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top + 24,
          bottom: MediaQuery.of(context).padding.bottom + 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "What are you cooking today?",
                style: TextStyle(
                  color: const Color.fromARGB(255, 50, 50, 50),
                  fontSize: 22,
                  fontFamily: 'Open Sans',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(30),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColor.backgroundPink,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  const Icon(Icons.search),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      "Search for Recipes",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Categories",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "See Recipes",
                            style: Theme.of(context).textTheme.button?.copyWith(
                                  color: AppColor.primaryColor,
                                  decoration: TextDecoration.underline,
                                ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Food Menu",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text("See All"),
                  )
                ],
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 280,
              child: ListView.separated(
                itemCount: trandingRecipes.length,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 24),
                separatorBuilder: (_, __) {
                  return const SizedBox(width: 16);
                },
                itemBuilder: (context, index) {
                  final recipe = trandingRecipes[index];
                  return RecipeItem(recipe: recipe);
                },
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 280,
              child: ListView.separated(
                itemCount: latestRecipes.length,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 24),
                separatorBuilder: (_, __) {
                  return const SizedBox(width: 16);
                },
                itemBuilder: (context, index) {
                  final recipe = latestRecipes[index];
                  return RecipeItem(recipe: recipe);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
