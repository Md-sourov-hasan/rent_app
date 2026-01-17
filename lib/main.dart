import 'package:flutter/material.dart';
import 'package:rent_app/auth/login.dart';
import 'package:rent_app/auth/otp.dart';
import 'package:rent_app/auth/register.dart';
import 'package:rent_app/home_page.dart';
import 'package:rent_app/screen/package_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:PackageScreen(),
    );
  }
}
