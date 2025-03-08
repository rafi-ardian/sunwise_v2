import 'package:flutter/material.dart';
import 'package:sunwise_v2/core/theme/app_colors.dart';
import 'package:sunwise_v2/core/theme/app_texts.dart';
import 'package:sunwise_v2/features/auth/presentation/pages/register_page.dart';
import 'package:sunwise_v2/features/auth/presentation/widgets/custom_button.dart';
import 'package:sunwise_v2/features/auth/presentation/widgets/custom_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isObsecure = false;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Scaffold(
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
                    "Welcome back!\nReady to protect your skin?",
                    style: TextStyleManager.regular14
                        .copyWith(color: AppColors.blackColor),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 24),
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
                  const SizedBox(height: 24.0),
                  // Login Button
                  CustomButton(
                    text: "Login",
                    onPressed: () {},
                  ),
                  const SizedBox(height: 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don’t have an account yet? Create Account",
                        style: TextStyleManager.regular10
                            .copyWith(color: AppColors.blackColor),
                      ),
                      const SizedBox(width: 4),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return const RegisterPage();
                            },
                          ));
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
