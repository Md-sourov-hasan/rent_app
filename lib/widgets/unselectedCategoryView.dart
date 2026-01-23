import 'package:flutter/material.dart';
Widget unselectedCategoryView(
  Map<String, String> category,
  int index,
  VoidCallback onTap,
) {
  return Padding(
    padding: const EdgeInsets.only(top: 8.0, bottom: 8, left: 12, right: 12.0),
    child: InkWell(
      onTap: onTap,
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.all(8),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                category['image']!,
                width: 30,
                height: 30,
                color: Color(0xffa4a4a4),
              ),
              const SizedBox(height: 6),
              Text(
                category['name']!,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
