import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:rent_app/auth/otp.dart';
import 'package:rent_app/auth/register.dart';
import 'package:rent_app/const/all_colors.dart';
import 'package:rent_app/const/all_sizes.dart';
import 'package:rent_app/widgets/app_bar_screen.dart';
import 'package:rent_app/widgets/custom_button.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isPassVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: AllColors.primaryColor,
          image: DecorationImage(
            image:AssetImage('assets/images/png/login.png'),
            fit: BoxFit.cover,            )
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 40,left: 16,right: 16,bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AppBarScreen(),
                Text(
                  'Welcome to\n Landlord Access',
                  style: TextStyle(
                    color: AllColors.secondaryColor,
                    fontSize: AllSizes.medium,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  'Please sign in to continue our app',
                  style: TextStyle(
                    color: AllColors.secondaryColor,
                    fontSize: AllSizes.small,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.only(left: 45, right: 45),
                  child: Container(
                    height: 60,
                    width: 20,
                    decoration: BoxDecoration(
                      color: AllColors.secondaryColor.withValues(alpha: 0.2),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: MediaQuery.sizeOf(context).height,
                                  width: 90,
                                  decoration: BoxDecoration(
                                    color: AllColors.secondaryColor,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Login',
                                      style: TextStyle(
                                        color: AllColors.primaryColor,
                                        fontSize: AllSizes.small,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: MediaQuery.sizeOf(context).height,
                                  width: 90,
                                  decoration: BoxDecoration(
                                    // color: AllColors.secondaryColor,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(15),
                                    onTap: () {
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Register(),
                                        ),
                                      );
                                    },
                                    child: Center(
                                      child: Text(
                                        'Register',
                                        style: TextStyle(
                                          color: AllColors.secondaryColor,
                                          fontSize: AllSizes.small,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Email *',
                  style: TextStyle(
                    color: AllColors.secondaryColor,
                     fontSize: 20,
                     fontWeight: FontWeight.bold,
                     ),
                ),
                SizedBox(height: 5),
                Container(
                  height: 40,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AllColors.secondaryColor.withValues(alpha: 0.1),
                    border: BoxBorder.all(
                      width: 1,
                      color: AllColors.secondaryColor,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: TextField(
                    cursorColor: AllColors.secondaryColor,
                    style: TextStyle(
                      color: AllColors.secondaryColor,
                      fontSize: AllSizes.small,
                    ),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      hintText: 'email',
                      hintStyle: TextStyle(color: AllColors.secondaryColor),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Password *',
                  style: TextStyle(
                    color: AllColors.secondaryColor,
                     fontSize: 20,
                     fontWeight: FontWeight.bold
                     ),
                ),
                SizedBox(height: 5),
                Container(
                  height: 40,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AllColors.secondaryColor.withValues(alpha: 0.1),
                    border: BoxBorder.all(
                      width: 1,
                      color: AllColors.secondaryColor,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: TextField(
                    obscureText: isPassVisible,
                    cursorColor: AllColors.secondaryColor,
                    style: TextStyle(
                      color: AllColors.secondaryColor,
                      fontSize: AllSizes.small,
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      hintText: 'enter your passward',
                      hintStyle: TextStyle(color: AllColors.secondaryColor),
                      border: InputBorder.none,
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isPassVisible = !isPassVisible;
                          });
                        },
                        icon: Icon(
                          isPassVisible ? Icons.visibility_off : Icons.visibility,
                          color: AllColors.secondaryColor,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                CustomButton(label: 'Login', ontap: () {
                  Get.to((){
                    return Otp();
                  });
                }),
                SizedBox(height: 140,),
                GestureDetector(
                  onTap: () {
                    
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Forgot password?',
                        style: TextStyle(
                          fontSize: AllSizes.small,
                          color: AllColors.secondaryColor,
                        ),
                      ),
                      SizedBox(height: 1), 
                      Container(
                        height: 1,
                        width: 140, 
                        color: AllColors.secondaryColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          
        ),
      ),
      
    );
  }
}
