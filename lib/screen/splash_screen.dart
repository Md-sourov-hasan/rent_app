import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rent_app/const/all_colors.dart';
import 'package:rent_app/screen/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      if (!mounted) return;
      Get.off(() => const OnboardingScreen()); // 3 sec splash
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AllColors.secondaryColor,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xffFFFFFF),
            Color(0xffFEE6EF),
            Color(0xff1E40AF)
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.3,0.7,1.2]
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/png/splash.png', 
              width: 150,
              height: 150,
            ),
            
          ],
        ),
      ),
    );
  }
}
