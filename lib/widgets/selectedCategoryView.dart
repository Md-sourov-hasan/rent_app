import 'package:flutter/material.dart';
import 'package:rent_app/const/all_colors.dart';
import 'package:rent_app/const/all_sizes.dart';

selectedCategoryView(String catergory){
 return Padding(
      padding: const EdgeInsets.only(top: 8.0,bottom: 8,left: 12,right: 12.0),
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: AllColors.primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(child: Text(catergory,
          style: TextStyle(
            color: AllColors.secondaryColor,
            fontSize: AllSizes.small,
          ),
          ),
        ),
      ),
    ));
  }