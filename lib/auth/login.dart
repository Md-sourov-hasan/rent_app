import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:rent_app/auth/register.dart';
import 'package:rent_app/const/all_colors.dart';
import 'package:rent_app/const/all_sizes.dart';
import 'package:rent_app/screen/package_screen.dart';
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
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
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
                  return PackageScreen();
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
      
    );
  }
}
