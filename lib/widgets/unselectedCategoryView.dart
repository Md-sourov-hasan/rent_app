import 'package:flutter/material.dart';
import 'package:rent_app/const/all_colors.dart';

Widget unselectedCategoryView(
  String category,
  int index,
  VoidCallback onTap,
) {
  return Padding(
      padding: const EdgeInsets.only(top: 8.0,bottom: 8,left: 12,right: 12.0),
    child: InkWell(
      onTap: onTap,
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.lightBlueAccent,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.all(8),
        child: Center(
          child: Text(
            category,
            style: const TextStyle(color: Colors.black),
          ),
        ),
      ),
    ),
  );
}
