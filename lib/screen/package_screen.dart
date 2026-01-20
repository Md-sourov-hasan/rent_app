import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';
import 'package:rent_app/const/all_colors.dart';
import 'package:rent_app/const/all_sizes.dart';
import 'package:rent_app/screen/home_screen.dart';
import 'package:rent_app/screen/onboarding_screen.dart';
import 'package:rent_app/widgets/app_bar_screen.dart';
import 'package:rent_app/widgets/custom_button.dart';
import 'package:rent_app/widgets/plan_text.dart';

class PackageScreen extends StatelessWidget {
  const PackageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: AllColors.primaryColor,
          image: DecorationImage(
            image: AssetImage('assets/images/png/plan.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 40,
              left: 8,
              right: 6,
              bottom: 6,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AppBarScreen(),
                SizedBox(height: 10),
                Center(
                  child: Text(
                    "Choose Your Plan",
                    style: TextStyle(
                      color: AllColors.secondaryColor,
                      fontSize: AllSizes.large,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Center(
                  child: Text(
                    'Select the perfect plan for your needs with transparent pricing and no hidden fees ',
                    style: TextStyle(
                      color: AllColors.secondaryColor,
                      fontSize: AllSizes.small,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),

                SizedBox(height: 10),

                Container(
                  height: 430,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AllColors.secondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: AllColors.secondaryColor.withOpacity(0.2),
                      width: 2,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            color: AllColors.secondaryColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              'Starter',
                              style: TextStyle(
                                color: AllColors.secondaryColor,
                                fontSize: AllSizes.small,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Perfect for single properties owner to manage quickly.',
                          style: TextStyle(
                            color: AllColors.secondaryColor,
                            fontSize: AllSizes.small,
                          ),
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Text(
                              '\$9.99',
                              style: TextStyle(
                                color: AllColors.secondaryColor,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "/month",
                              style: TextStyle(
                                color: AllColors.secondaryColor,
                                fontSize: AllSizes.small,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        PlanText(
                          text:
                              "Perfect for small properties or less tenant management",
                        ),
                        SizedBox(height: 5),
                        PlanText(text: 'Up-to 3 properties listing'),
                        SizedBox(height: 5),
                        PlanText(text: 'Manage tenants and payments'),
                        SizedBox(height: 5),
                        PlanText(
                          text: "Manage rents, bill and revenue reports",
                        ),
                        SizedBox(height: 5),
                        PlanText(text: 'Manage maintenance requests'),
                        SizedBox(height: 30),
                        CustomButton(
                          label: 'Select Package',
                          ontap: () {
                            Get.offAll(() => HomeScreen());
                          },
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 20),

                Container(
                  height: 430,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xff16A34A), Color(0xff007DFF)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: AllColors.secondaryColor.withOpacity(0.2),
                      width: 2,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Color(0xff167e84).withOpacity(0.8),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              'Pro',
                              style: TextStyle(
                                color: AllColors.secondaryColor,
                                fontSize: AllSizes.small,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Perfect for individuals taking control of their proposal.',
                          style: TextStyle(
                            color: AllColors.secondaryColor,
                            fontSize: AllSizes.small,
                          ),
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Text(
                              '\$19.99',
                              style: TextStyle(
                                color: AllColors.secondaryColor,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "/month",
                              style: TextStyle(
                                color: AllColors.secondaryColor,
                                fontSize: AllSizes.small,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        PlanText(
                          text:
                              "Perfect for small properties or less tenant management",
                        ),
                        SizedBox(height: 5),
                        PlanText(text: 'Up-to 10 properties listing'),
                        SizedBox(height: 5),
                        PlanText(text: 'Manage tenants and payments'),
                        SizedBox(height: 5),
                        PlanText(
                          text: "Manage rents, bill and revenue reports",
                        ),
                        SizedBox(height: 5),
                        PlanText(text: 'Manage maintenance requests'),
                        SizedBox(height: 30),
                        CustomButton(
                          label: 'Select Package',
                          ontap: () {
                            Get.offAll(() => HomeScreen());
                          },
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 20),

                Container(
                  height: 430,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AllColors.secondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: AllColors.secondaryColor.withOpacity(0.2),
                      width: 2,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            color: AllColors.secondaryColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              'Advanced',
                              style: TextStyle(
                                color: AllColors.secondaryColor,
                                fontSize: AllSizes.small,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Perfect for individuals taking control of their proposal.',
                          style: TextStyle(
                            color: AllColors.secondaryColor,
                            fontSize: AllSizes.small,
                          ),
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Text(
                              '\$35.99',
                              style: TextStyle(
                                color: AllColors.secondaryColor,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "/month",
                              style: TextStyle(
                                color: AllColors.secondaryColor,
                                fontSize: AllSizes.small,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        PlanText(
                          text:
                              "Perfect for small properties or less tenant management",
                        ),
                        SizedBox(height: 5),
                        PlanText(text: 'Unlimited properties listing'),
                        SizedBox(height: 5),
                        PlanText(text: 'Manage tenants and payments'),
                        SizedBox(height: 5),
                        PlanText(
                          text: "Manage rents, bill and revenue reports",
                        ),
                        SizedBox(height: 5),
                        PlanText(text: 'Manage maintenance requests'),
                        SizedBox(height: 30),
                        CustomButton(
                          label: 'Select Package',
                          ontap: () {
                            Get.offAll(() => HomeScreen());
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
