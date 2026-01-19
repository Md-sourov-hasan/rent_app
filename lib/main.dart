import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rent_app/screen/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // ensure everything initialized
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rent App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const SplashScreen(), // <-- direct Flutter splash screen
    );
  }
}
