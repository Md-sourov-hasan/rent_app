import 'package:flutter/material.dart';
import 'package:rent_app/auth/register.dart';
import 'package:rent_app/const/all_colors.dart';
import 'package:rent_app/const/all_sizes.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isPassVisible=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AllColors.primaryColor,
      appBar: AppBar(
        toolbarHeight: 100,
        automaticallyImplyLeading: false,
        backgroundColor: AllColors.primaryColor,
        leadingWidth: 100,
        elevation: 0,
        titleSpacing: 0,
        title: Padding(
          padding: EdgeInsets.only(left: 16),
          child: Row(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: AllColors.secondaryColor,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(40),
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Center(
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      size: 30,
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
                  fontSize: AllSizes.large,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                'Please sign in to continue our app',
                style: TextStyle(
                  color: AllColors.secondaryColor,
                  fontSize: AllSizes.medium,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 45, right: 45),
                child: Container(
                  height: 70,
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
                                width: 130,
                                decoration: BoxDecoration(
                                  color: AllColors.secondaryColor,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Center(
                                  child: Text(
                                    'Login',
                                    style: TextStyle(
                                      color: AllColors.primaryColor,
                                      fontSize: AllSizes.medium,
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
                                width: 130,
                                decoration: BoxDecoration(
                                  // color: AllColors.secondaryColor,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
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
                                        fontSize: AllSizes.medium,
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
              SizedBox(height: 20,),
              Text('Email *',
              style: TextStyle(
                color: AllColors.secondaryColor,
                fontSize: AllSizes.medium,
              ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 50,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AllColors.secondaryColor.withValues(alpha: 0.1),
                  border: BoxBorder.all(width: 1,color: AllColors.secondaryColor,style: BorderStyle.solid,),
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
                    hintStyle:TextStyle(
                      color: AllColors.secondaryColor,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Text('Password *',
              style: TextStyle(
                color: AllColors.secondaryColor,
                fontSize: AllSizes.medium,
              ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 50,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AllColors.secondaryColor.withValues(alpha: 0.1),
                  border: BoxBorder.all(width: 1,color: AllColors.secondaryColor,style: BorderStyle.solid,),
                ),
                child: TextField(
                  obscureText: isPassVisible,
                  cursorColor: AllColors.secondaryColor,
                  style: TextStyle(
                    color: AllColors.secondaryColor,
                    fontSize: AllSizes.small,
                  ),
                  keyboardType:TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    hintText: 'enter your passward',
                    hintStyle:TextStyle(
                      color: AllColors.secondaryColor,
                    ),
                    border: InputBorder.none,
                    suffixIcon:IconButton(
                      onPressed:(){
                        setState(() {
                          isPassVisible=!isPassVisible;
                        });
                      },
                       icon: Icon(
                        isPassVisible?Icons.visibility_off:Icons.visibility,
                        color: AllColors.secondaryColor,
                       ),
                        ), 
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
