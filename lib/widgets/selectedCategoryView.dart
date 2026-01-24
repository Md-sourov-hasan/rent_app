import 'package:flutter/material.dart';
import 'package:rent_app/const/all_colors.dart';

selectedCategoryView(Map<String, String> category) {
  return Padding(
    padding: const EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 0),
    child: Container(
      height: 50,
      width: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                category['image']!,
                width: 25,
                height: 25,
                color: Color(0xff1e40af)
              ),
              Text(
                category['name']!,
                style: TextStyle(
                  color: AllColors.primaryColor,
                  fontSize: 14,
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
