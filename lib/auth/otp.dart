import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:rent_app/const/all_colors.dart';
import 'package:rent_app/const/all_sizes.dart';
import 'package:rent_app/screen/package_screen.dart';
import 'package:rent_app/widgets/app_bar_screen.dart';
import 'package:rent_app/widgets/custom_button.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: AllColors.primaryColor,
          image: DecorationImage(
            image:AssetImage('assets/images/png/otp.png'),
            fit: BoxFit.cover,),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 40,left: 8,right: 8,bottom: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppBarScreen(),
                Center(
                  child: Text(
                    'OTP Verification',
                    style: TextStyle(
                      fontSize: AllSizes.large,
                      color: AllColors.secondaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Please check your number\n +880*******333 to see the\n verification code',
                  style: TextStyle(
                    fontSize: AllSizes.small,
                    color: AllColors.secondaryColor,
                  ),
                  textAlign: TextAlign.center,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: AllColors.secondaryColor.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      height: 60,
                      width: 70,
                      child: Center(
                        child: TextFormField(
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: AllColors.secondaryColor,
                          ),
                          cursorColor: AllColors.secondaryColor,
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          decoration: InputDecoration(border: InputBorder.none),
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: AllColors.secondaryColor.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      height: 60,
                      width: 70,
        
                      child: Center(
                        child: TextFormField(
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: AllColors.secondaryColor,
                          ),
                          cursorColor: AllColors.secondaryColor,
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          decoration: InputDecoration(border: InputBorder.none),
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: AllColors.secondaryColor.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      height: 60,
                      width: 70,
        
                      child: Center(
                        child: TextFormField(
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: AllColors.secondaryColor,
                          ),
                          cursorColor: AllColors.secondaryColor,
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          decoration: InputDecoration(border: InputBorder.none),
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: AllColors.secondaryColor.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      height: 60,
                      width: 70,
        
                      child: Center(
                        child: TextFormField(
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: AllColors.secondaryColor,
                          ),
                          cursorColor: AllColors.secondaryColor,
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          decoration: InputDecoration(border: InputBorder.none),
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                CustomButton(label: 'Verify', ontap: () {
                  Get.to(()=>PackageScreen());
                }),
                SizedBox(height: 20),
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AllColors.secondaryColor.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.refresh,
                            color: AllColors.primaryColor,
                            size: 22,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Re-Send',
                            style: TextStyle(
                              color: AllColors.primaryColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Resend code to',
                      style: TextStyle(
                        color: AllColors.secondaryColor,
                        fontSize: AllSizes.small,
                      ),
                    ),
                    Text(
                      '10.00',
                      style: TextStyle(
                        color: AllColors.secondaryColor,
                        fontSize: AllSizes.small,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
