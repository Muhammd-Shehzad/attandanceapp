import 'package:attandanceapp/Utils/CostumButton/custome_button.dart';
import 'package:attandanceapp/Utils/TextFiledForm/text_field_form.dart';
import 'package:attandanceapp/view/Auth/Login/login_screen_provider.dart';
import 'package:attandanceapp/view/Auth/SignUp/signup_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LoginScreenProvider(),
      child: Consumer<LoginScreenProvider>(
        builder:
            (context, model, child) => Scaffold(
              body: Form(
                key: model.formKey,
                child: Container(
                  height: double.infinity.h,
                  width: double.infinity.w,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.blue.shade300, // Light blue (Top)
                        Colors.blue.shade500, // Medium blue
                        Colors.blue.shade700, // Dark blu
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Center(
                        child: Container(
                          height: 500.h,
                          width: 300.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 100.h),
                                Text(
                                  'Login',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 5,
                                    horizontal: 5,
                                  ),
                                  child: TextFieldForm(
                                    controller: model.emailController,
                                    text: 'Email',
                                    validationText: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter your email';
                                      }
                                      final emailRegex = RegExp(
                                        r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
                                      );
                                      if (!emailRegex.hasMatch(value)) {
                                        return 'Enter a valid email address';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                SizedBox(height: 10.h),

                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 5,
                                    horizontal: 5,
                                  ),
                                  child: TextFieldForm(
                                    controller: model.passwordController,
                                    text: 'Password',
                                    validationText: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter your password';
                                      }
                                      if (value.length < 6) {
                                        return 'Password must be at least 6 characters long';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                SizedBox(height: 20.h),

                                model.isloading
                                    ? CircularProgressIndicator()
                                    : CustomeButton(
                                      height: 40.h,
                                      width: 200.w,
                                      text: 'Login',
                                      onPressed: () {
                                        if (model.formKey.currentState!
                                            .validate()) {
                                          model.isLogin();
                                        }
                                      },
                                    ),
                                SizedBox(height: 20.h),
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Don\'t have account',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      WidgetSpan(child: SizedBox(width: 5.w)),
                                      TextSpan(
                                        recognizer:
                                            TapGestureRecognizer()
                                              ..onTap = () {
                                                Get.to(SignUpScreen());
                                              },
                                        text: 'Sing Up',
                                        style: const TextStyle(
                                          color: Color(0xFF64B5F6),
                                          fontWeight: FontWeight.bold,

                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10.h,
                        left: 100.w,
                        child: Container(
                          height: 150.h,
                          width: 150.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Color(0xFF64B5F6),
                              width: 3,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/logo1.png',
                              height: 120.h,
                              width: 120.w,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
      ),
    );
  }
}
