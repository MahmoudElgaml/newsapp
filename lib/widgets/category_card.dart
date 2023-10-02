import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              "assets/technology.jpeg",
              fit: BoxFit.fill,
              width: double.infinity,
            ),
          ),
          const Text("Technology",style: TextStyle(
            color: Colors.white,
          ),)
        ],
      ),
    );
  }
}
