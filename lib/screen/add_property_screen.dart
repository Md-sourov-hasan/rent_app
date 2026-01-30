import 'package:flutter/material.dart';
import 'package:rent_app/const/all_colors.dart';
import 'package:rent_app/const/all_sizes.dart';
import 'package:rent_app/widgets/app_bar_screen.dart';

class AddPropertyScreen extends StatelessWidget {
  const AddPropertyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
        height: 120,
        width: double.infinity,
        decoration: BoxDecoration(
          color:Color(0xff1e40af),
        ),alignment: Alignment.bottomLeft,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              AppBarScreen(),
              SizedBox(width: 10,),
              Text('Add Property',
              style: TextStyle(
                fontSize: AllSizes.medium,
                color: AllColors.secondaryColor
              ),
              )
            ],
          ),
        ),),

        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text('Basic Information',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              )
            ],
          ),
        )
        ],
      ),
    );
  }
}