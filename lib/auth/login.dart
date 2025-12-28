import 'package:flutter/material.dart';
import 'package:rent_app/const/all_colors.dart';
import 'package:rent_app/const/all_sizes.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AllColors.primaryColor,
      appBar: AppBar(
        toolbarHeight: 100,
         automaticallyImplyLeading: false,
  backgroundColor: AllColors.primaryColor,
  leadingWidth: 100,
  elevation: 0,
  titleSpacing: 0,
  title: Padding(
    padding:  EdgeInsets.only(left: 16),
    child: Row(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: AllColors.secondaryColor,
            borderRadius: BorderRadius.circular(40),
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(40),
            onTap: () {
              Navigator.pop(context);
            },
            child: Center(
              child: Icon(
                Icons.arrow_back_ios_new,
                size: 30,
                color: AllColors.primaryColor,
              ),
            ),
          ),
        ),
      ],
    ),
  ),
),

      body: Padding(
        padding:  EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
             Text(
                'Welcome to\n Landlord Access',
                style: TextStyle(
                  color: AllColors.secondaryColor,
                  fontSize: AllSizes.large,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10,),
              Text('Please sign in to continue our app',
              style: TextStyle(
                color: AllColors.secondaryColor,
                fontSize: AllSizes.medium,
              ),
              textAlign: TextAlign.center,
              )
          ],
        ),
      ),
    );
  }
}