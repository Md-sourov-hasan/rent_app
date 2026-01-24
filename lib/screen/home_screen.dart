import 'package:flutter/material.dart';
import 'package:rent_app/const/all_colors.dart';
import 'package:rent_app/const/all_sizes.dart';
import 'package:rent_app/widgets/all.dart';
import 'package:rent_app/widgets/selectedCategoryView.dart';
import 'package:rent_app/widgets/unselectedCategoryView.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedCategory = 0;

  List<Map<String, String>> categories = [
    {'name': 'home', 'image': 'assets/images/png/home_icon.png'},
    {'name': 'properti', 'image': 'assets/images/png/pro_icon.png'},
    {'name': 'tenent', 'image': 'assets/images/png/tenent_icon.png'},
    {'name': 'maintain', 'image': 'assets/images/png/maintain_icon.png'},
    {'name': 'payment', 'image': 'assets/images/png/pay_icon.png'},
  ];

  // ✅ CHANGE 1: New function added (ListView er niche screen show korar jonno)
  Widget buildCategoryScreen() {
    switch (selectedCategory) {
      case 0:
        return All();
      case 1:
        return const Center(
          child: Text(
            "Combo Screen",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        );
      case 2:
        return const Center(
          child: Text(
            "Classic Screen",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        );
      case 3:
        return const Center(
          child: Text(
            "Dessert Screen",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        );
      case 4:
        return const Center(
          child: Text(
            "Donut Screen",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        );
      case 5:
        return const Center(
          child: Text(
            "Pizza Screen",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        );
      case 6:
        return const Center(
          child: Text(
            "Burger Screen",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        );
      default:
        return const Center(
          child: Text(
            "No Screen",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const CircleBorder(),
        backgroundColor: AllColors.primaryColor,
        child: Icon(Icons.add, color: AllColors.secondaryColor, size: 30),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 40,
            left: 10,
            right: 10,
            bottom: 16,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ===================== TOP BAR =====================
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/png/splash.png',
                    width: 50,
                    height: 50,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: AllColors.primaryColor.withOpacity(0.2),
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(40),
                          child: Center(
                            child: Image.asset(
                              "assets/images/png/notification.png",
                              width: 20,
                              height: 20,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: AllColors.primaryColor.withOpacity(0.2),
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(40),
                          child: Center(
                            child: Image.asset(
                              "assets/images/png/setting.png",
                              width: 20,
                              height: 20,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: AllColors.primaryColor.withOpacity(0.2),
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(40),
                          child: Center(
                            child: Image.asset(
                              "assets/images/png/profile_image.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // ===================== TEXT =====================
              Text(
                'Welcome Mr. Johnson!',
                style: TextStyle(
                  color: const Color(0xff1C1C1C),
                  fontSize: AllSizes.medium,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                'Manage your real estate properties & tenants',
                style: TextStyle(
                  color: const Color(0xff1C1C1C).withOpacity(0.3),
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              // ===================== CARDS ROW 1 =====================
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black38.withOpacity(0.1),
                            blurRadius: 5,
                            spreadRadius: 1,
                            offset: const Offset(0, 4),
                          ),
                        ],
                        color: AllColors.secondaryColor,
                        border: Border.all(
                          width: 1,
                          color: Colors.black.withOpacity(0.1),
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 30,
                              width: 30,
                              child: Image.asset(
                                'assets/images/png/person.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              'Total Tenants',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              '24',
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              '+3 this month',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black.withOpacity(0.3),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black38.withOpacity(0.1),
                            blurRadius: 5,
                            spreadRadius: 1,
                            offset: const Offset(0, 4),
                          ),
                        ],
                        color: AllColors.secondaryColor,
                        border: Border.all(
                          width: 1,
                          color: Colors.black.withOpacity(0.1),
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 30,
                              width: 30,
                              child: Image.asset(
                                'assets/images/png/dollar.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              'Rent Due',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              '\$12,400',
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              '5 pending',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black.withOpacity(0.3),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              // ===================== CARDS ROW 2 =====================
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black38.withOpacity(0.1),
                            blurRadius: 5,
                            spreadRadius: 1,
                            offset: const Offset(0, 4),
                          ),
                        ],
                        color: AllColors.secondaryColor,
                        border: Border.all(
                          width: 1,
                          color: Colors.black.withOpacity(0.1),
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 30,
                              width: 30,
                              child: Image.asset(
                                'assets/images/png/maintain.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              'Maintenance',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              '8',
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              '3 urgent',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black.withOpacity(0.3),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black38.withOpacity(0.1),
                            blurRadius: 5,
                            spreadRadius: 1,
                            offset: const Offset(0, 4),
                          ),
                        ],
                        color: AllColors.secondaryColor,
                        border: Border.all(
                          width: 1,
                          color: Colors.black.withOpacity(0.1),
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 30,
                              width: 30,
                              child: Image.asset(
                                'assets/images/png/income.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              'Monthly Income',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              '\$45,200',
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              '+12% vs last',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black.withOpacity(0.3),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // ===================== BUTTONS =====================
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: AllColors.primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'Add Property',
                          style: TextStyle(
                            color: AllColors.secondaryColor,
                            fontSize: AllSizes.small,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: AllColors.secondaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'Manage Tenants',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: AllSizes.small,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              // ===================== CATEGORY LIST ===================== 
              // SizedBox(
              //   height: 100,
              //   child: ListView.builder(
              //     scrollDirection: Axis.horizontal,
              //     itemCount: categories.length,
              //     itemBuilder: (context, index) {
              //       return selectedCategory == index
              //           ? selectedCategoryView(categories[index])
              //           : unselectedCategoryView(categories[index], index, () {
              //               setState(() {
              //                 selectedCategory = index;
              //               });
              //             });
              //     },
              //   ),
              // ),

              const SizedBox(height: 10),

              // ✅ CHANGE 2: ListView er niche selected screen show korar jonno Expanded use
              SizedBox(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AllColors.secondaryColor,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color:Colors.black.withOpacity(0.1),
                      width: 1,
                    )
                  ),
                  child: buildCategoryScreen(),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: SizedBox(
                  height: 60,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return selectedCategory == index
                          ? selectedCategoryView(categories[index])
                          : unselectedCategoryView(categories[index], index, () {
                              setState(() {
                                selectedCategory = index;
                              });
                            });
                    },
                  ),
                ),
      ),
    );
  }
}
