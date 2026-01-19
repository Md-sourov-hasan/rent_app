import 'package:flutter/material.dart';
import 'package:rent_app/const/all_colors.dart';
import 'package:rent_app/const/all_sizes.dart';

class PlanText extends StatelessWidget {
  String text;
   PlanText({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 6), // fine tune
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/png/Vector.png',
                                  width: 10,
                                ),
                                Image.asset(
                                  'assets/images/png/done.png',
                                  width: 5,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              text,
                              style: TextStyle(
                                color: AllColors.secondaryColor,
                                fontSize: AllSizes.small,
                                height: 1.4,
                              ),
                            ),
                          ),
                        ],
                      );
  }
}