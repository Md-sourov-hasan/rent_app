import 'package:flutter/material.dart';
Widget unselectedCategoryView(
  Map<String, String> category,
  int index,
  VoidCallback onTap,
) {
  return Padding(
    padding: const EdgeInsets.only(top: 8.0, bottom: 8, left: 8, right: 0),
    child: InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.all(0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                category['image']!,
                width: 25,
                height: 25,
                color: Color(0xffa4a4a4),
              ),
              const SizedBox(height: 6),
              Text(
                category['name']!,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
