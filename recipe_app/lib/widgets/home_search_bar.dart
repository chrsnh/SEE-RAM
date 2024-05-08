// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      // Assuming the parent widget is also a Row
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 300,
          height: 45,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 225, 233),
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Row(
            // Inner Row for icon and text field
            children: [
              const Icon(Icons.search),
              SizedBox(width: 10),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search for recipes",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
