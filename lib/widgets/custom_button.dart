import 'package:flutter/material.dart';
import 'package:rent_app/const/all_colors.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  String label;
  VoidCallback ontap;
  CustomButton({super.key, 
    required this.label,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color:AllColors.secondaryColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color:AllColors.primaryColor,
              fontSize:20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
