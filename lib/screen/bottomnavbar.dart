import 'package:flutter/material.dart';
import 'package:rent_app/screen/home_screen.dart';
import 'package:rent_app/screen/propertie_screen.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  int selectedIndex = 0;

  final List<Widget> screens = [
    HomeScreen(),
    PropertieScreen(),
    Center(child: Text("Tenant Screen")),
    Center(child: Text("Maintain Screen")),
    Center(child: Text("Payment Screen")),
  ];

  final List<Map<String, String>> navItems = [
    {'title': 'Home', 'icon': 'assets/images/png/home_icon.png'},
    {'title': 'Property', 'icon': 'assets/images/png/pro_icon.png'},
    {'title': 'Tenant', 'icon': 'assets/images/png/tenent_icon.png'},
    {'title': 'Maintain', 'icon': 'assets/images/png/maintain_icon.png'},
    {'title': 'Payment', 'icon': 'assets/images/png/pay_icon.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],

      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft:Radius.circular(15),topRight:Radius.circular(15)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(navItems.length, (index) {
            bool isSelected = selectedIndex == index;

            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    navItems[index]['icon']!,
                    height: 22,
                    width: 22,
                    color: isSelected ? Color(0xff1e40af) : Colors.grey, // active color
                  ),
                  const SizedBox(height: 4),
                  Text(
                    navItems[index]['title']!,
                    style: TextStyle(
                      fontSize: 12,
                      color: isSelected ? Color(0xff1e40af) : Colors.grey,
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
