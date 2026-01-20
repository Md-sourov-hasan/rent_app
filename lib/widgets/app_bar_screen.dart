import 'package:flutter/material.dart';
import 'package:rent_app/const/all_colors.dart';

class AppBarScreen extends StatelessWidget {
  const AppBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
                  child: Padding(
                    padding: EdgeInsets.only(left: 5, top: 5),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: AllColors.secondaryColor,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(30),
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Center(
                              child: Icon(
                                Icons.arrow_back_ios_new,
                                size: 24,
                                color: AllColors.primaryColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
  }
}