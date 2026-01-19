import 'package:flutter/material.dart';
import 'package:rent_app/const/all_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40,left: 16,right: 16,bottom: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/images/png/splash.png', width: 50,height: 50,),
                Container(
                  child: Row(
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
                          child: Center(child: Image.asset("assets/images/png/notification.png",width: 20,height: 20,)),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: AllColors.primaryColor.withOpacity(0.2),
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(40),
                          child: Center(child: Image.asset("assets/images/png/setting.png",width: 20,height: 20,)),
                        ),
                      ),
                      SizedBox(width: 10,),Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: AllColors.primaryColor.withOpacity(0.2),
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(40),
                          child: Center(child: Image.asset("assets/images/png/profile_image.png",fit: BoxFit.cover,)),
                        ),
                      ),
                      SizedBox(width: 10,),
                    ],
                  ),
                )
                ],
            ),
          ],
        ),
      ),
    );
  }
}
