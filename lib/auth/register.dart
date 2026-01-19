import 'package:flutter/material.dart';
import 'package:rent_app/auth/login.dart';
import 'package:rent_app/const/all_colors.dart';
import 'package:rent_app/const/all_sizes.dart';
import 'package:rent_app/widgets/custom_button.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _LoginState();
}

class _LoginState extends State<Register> {
  String selectedCode = '+880';
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
                                        builder: (context) => Login(),
                                      ),
                                    );
                                  },
                                  child: Center(
                                    child: Text(
                                      'Login',
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
                      SizedBox(width: 10),
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
                                    'Register',
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
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Phone Number *',
                style: TextStyle(
                  color: AllColors.secondaryColor,
                   fontSize: 20,
                   fontWeight: FontWeight.bold,
                   ),
              ),
              SizedBox(height: 5),

              Container(
                height: 45,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AllColors.secondaryColor.withValues(alpha: 0.1),
                  border: Border.all(width: 1, color: AllColors.secondaryColor),
                ),
                child: Row(
                  children: [
                    // Country Code Dropdown
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: selectedCode,
                          dropdownColor: AllColors.primaryColor,
                          iconEnabledColor: AllColors.secondaryColor,
                          style: TextStyle(
                            color: AllColors.secondaryColor,
                            fontSize: AllSizes.small,
                          ),
                          items: const [
                            DropdownMenuItem(
                              value: '+880',
                              child: Text('BD (+880)'),
                            ),
                            DropdownMenuItem(
                              value: '+91',
                              child: Text('IN (+91)'),
                            ),
                            DropdownMenuItem(
                              value: '+1',
                              child: Text('US (+1)'),
                            ),
                          ],
                          onChanged: (value) {
                            setState(() {
                              selectedCode = value!;
                            });
                          },
                        ),
                      ),
                    ),

                    // Divider
                    Container(
                      height: 25,
                      width: 1,
                      color: AllColors.secondaryColor,
                    ),

                    // Phone Number Field
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.phone,
                        cursorColor: AllColors.secondaryColor,
                        style: TextStyle(
                          color: AllColors.secondaryColor,
                          fontSize: AllSizes.small,
                        ),
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                          hintText: 'Phone number',
                          hintStyle: TextStyle(
                            color:Colors.white,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10),
              Text(
                'Username *',
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
              SizedBox(height: 10,),
              Text('Password must be minimum 8 characte',
              style: TextStyle(
                color: AllColors.secondaryColor,
                fontSize: AllSizes.small,
                fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(height: 20),
              CustomButton(label: 'Register', ontap: (){}),
            ],
          ),
        ),
      ),
    );
  }
}
