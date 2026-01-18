import 'package:flutter/material.dart';
import 'package:rent_app/const/all_colors.dart';
import 'package:rent_app/const/all_sizes.dart';

class PackageScreen extends StatelessWidget {
  const PackageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AllColors.primaryColor,
      appBar: AppBar(
        toolbarHeight: 60,
        automaticallyImplyLeading: false,
        backgroundColor: AllColors.primaryColor,
        leadingWidth: 100,
        elevation: 0,
        titleSpacing: 0,
        title: Padding(
          padding: EdgeInsets.only(left: 16, top: 10),
          child: Row(
            children: [
              Container(
                height: 45,
                width: 45,
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
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
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
                height: 380,
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
                      Row(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Padding(
      padding: const EdgeInsets.only(top: 6), // fine tune
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset('assets/images/png/Vector.png', width: 10),
          Image.asset('assets/images/png/done.png', width: 5),
        ],
      ),
    ),
    const SizedBox(width: 8),
    Expanded(
      child: Text(
        'Perfect for small properties or less tenant management',
        style: TextStyle(
          color: AllColors.secondaryColor,
          fontSize: AllSizes.small,
          height: 1.4,
        ),
      ),
    ),
  ],
),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
