import 'package:flutter/material.dart';
import 'package:sunwise_v2/core/theme/app_colors.dart';
import 'package:sunwise_v2/core/theme/app_texts.dart';
import 'package:sunwise_v2/features/auth/presentation/widgets/custom_button.dart';
import 'package:sunwise_v2/features/auth/presentation/widgets/custom_text_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  bool isObsecureConfirm = false;
  bool isObsecure = false;
  bool isChecked = false;

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: themeData.scaffoldBackgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            Expanded(
              child: Image.asset(
                'assets/images/background.png',
                fit: BoxFit.fitWidth,
                width: 500,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 130),
                  Image.asset(
                    "assets/images/logo.png",
                    scale: 5,
                  ),
                  const SizedBox(height: 24),
                  Text(
                    "Join us today!\nYour skin deserves the best care.",
                    style: TextStyleManager.regular14
                        .copyWith(color: AppColors.blackColor),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 24),
                  //  Name field
                  CustomTextField(
                    label: "Name",
                    hintText: "Enter your name here...",
                    controller: nameController,
                  ),
                  const SizedBox(height: 16),
                  //  Email field
                  CustomTextField(
                    label: "E-mail",
                    hintText: "Enter your E-Mail here...",
                    controller: emailController,
                  ),
                  const SizedBox(height: 16),
                  // Password field
                  CustomTextField(
                    label: "Password",
                    hintText: "Enter your password here...",
                    controller: passwordController,
                    isPassword: true,
                    isVisible: isObsecure,
                    onToggleVisibility: () {
                      setState(() {
                        isObsecure = !isObsecure;
                      });
                    },
                  ),
                  const SizedBox(height: 16.0),
                  // Confirm Password field
                  CustomTextField(
                    label: "Confirm Password",
                    hintText: "Enter your password again...",
                    controller: confirmPasswordController,
                    isPassword: true,
                    isVisible: isObsecureConfirm,
                    onToggleVisibility: () {
                      setState(() {
                        isObsecureConfirm = !isObsecureConfirm;
                      });
                    },
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    children: [
                      SizedBox(
                        height: 24,
                        width: 24,
                        child: Checkbox(
                          value: isChecked,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                              side: const BorderSide(
                                  color: AppColors.whiteColor)),
                          activeColor: AppColors.yellowColor,
                          onChanged: (value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),
                      ),
                      const SizedBox(width: 16.0),
                      Text(
                        "I agree to the terms and conditions.",
                        style: TextStyleManager.regular10
                            .copyWith(color: AppColors.blackColor),
                      )
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  // Sign up Button
                  CustomButton(
                    text: "Sign Up",
                    onPressed: () {},
                  ),
                  const SizedBox(height: 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an Account? Login",
                        style: TextStyleManager.regular10
                            .copyWith(color: AppColors.blackColor),
                      ),
                      const SizedBox(width: 4),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Here!",
                          style: TextStyleManager.regular10
                              .copyWith(color: AppColors.purpleColor),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
