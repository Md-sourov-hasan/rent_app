import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rent_app/auth/login_controller.dart';
import 'package:rent_app/auth/register.dart';
import 'package:rent_app/const/all_colors.dart';
import 'package:rent_app/const/all_sizes.dart';
import 'package:rent_app/widgets/app_bar_screen.dart';
import 'package:rent_app/widgets/custom_button.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: AllColors.primaryColor,
          image: const DecorationImage(
            image: AssetImage('assets/images/png/login.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 40, left: 16, right: 16, bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const AppBarScreen(),
                Text(
                  'Welcome to\n Landlord Access',
                  style: TextStyle(
                    color: AllColors.secondaryColor,
                    fontSize: AllSizes.medium,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                Text(
                  'Please sign in to continue our app',
                  style: TextStyle(
                    color: AllColors.secondaryColor,
                    fontSize: AllSizes.small,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45),
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: AllColors.secondaryColor.withValues(alpha: 0.2),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
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
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () => Get.off(() => const Register()),
                            borderRadius: BorderRadius.circular(15),
                            child: Center(
                              child: Text(
                                'Register',
                                style: TextStyle(
                                  color: AllColors.secondaryColor,
                                  fontSize: AllSizes.small,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  'Email *',
                  style: TextStyle(
                    color: AllColors.secondaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AllColors.secondaryColor.withValues(alpha: 0.1),
                    border: Border.all(color: AllColors.secondaryColor),
                  ),
                  child: TextField(
                    controller: controller.emailController,
                    cursorColor: AllColors.secondaryColor,
                    style: TextStyle(color: AllColors.secondaryColor, fontSize: AllSizes.small),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      hintText: 'admin@gmail.com',
                      hintStyle: TextStyle(color: AllColors.secondaryColor.withValues(alpha: 0.5)),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Password *',
                  style: TextStyle(
                    color: AllColors.secondaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Obx(() => Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AllColors.secondaryColor.withValues(alpha: 0.1),
                    border: Border.all(color: AllColors.secondaryColor),
                  ),
                  child: TextField(
                    controller: controller.passwordController,
                    obscureText: controller.isPasswordVisible.value,
                    cursorColor: AllColors.secondaryColor,
                    style: TextStyle(color: AllColors.secondaryColor, fontSize: AllSizes.small),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      hintText: '********',
                      hintStyle: TextStyle(color: AllColors.secondaryColor.withValues(alpha: 0.5)),
                      border: InputBorder.none,
                      suffixIcon: IconButton(
                        onPressed: controller.togglePasswordVisibility,
                        icon: Icon(
                          controller.isPasswordVisible.value ? Icons.visibility_off : Icons.visibility,
                          color: AllColors.secondaryColor,
                        ),
                      ),
                    ),
                  ),
                )),
                const SizedBox(height: 30),
                Obx(() => controller.isLoading.value 
                  ? const Center(child: CircularProgressIndicator(color: Colors.white))
                  : CustomButton(
                      label: 'Login', 
                      ontap: controller.login,
                    ),
                ),
                const SizedBox(height: 100),
                Center(
                  child: InkWell(
                    onTap: () {},
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
                        Container(
                          height: 1,
                          width: 130,
                          color: AllColors.secondaryColor,
                        ),
                      ],
                    ),
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
