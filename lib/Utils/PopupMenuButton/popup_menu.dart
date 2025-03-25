import 'package:attandanceapp/Utils/Toast/toast_popup.dart';
import 'package:attandanceapp/view/Auth/SignUp/signup_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Popup extends StatefulWidget {
  const Popup({super.key});

  @override
  State<Popup> createState() => _PopupState();
}

class _PopupState extends State<Popup> {
  FirebaseAuth auth = FirebaseAuth.instance;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.arrow_back, size: 30.sp),
        PopupMenuButton<int>(
          iconSize: 30.sp,
          color: Colors.white,
          onSelected: (value) {
            if (value == 1) {
              // Navigate to Settings
              // Get.to(SettingsScreen());
            } else if (value == 2) {
              // Logout logic
              auth
                  .signOut()
                  .then((v) {
                    ToastPopup().toast(
                      'Sign Out Successfully',
                      Colors.green,
                      Colors.white,
                    );
                    isLoading = false;
                    setState(() {});
                  })
                  .onError((Eror, v) {
                    ToastPopup().toast(Error, Colors.red, Colors.white);
                    isLoading = false;
                    setState(() {});
                  });
              Get.offAll(SignUpScreen()); // Redirect to login screen
            }
          },
          itemBuilder:
              (context) => [
                PopupMenuItem<int>(
                  value: 1,
                  child: Row(
                    children: [
                      Icon(Icons.settings, color: Colors.blue), // Settings icon
                      SizedBox(width: 10.w),
                      Text("Settings"),
                    ],
                  ),
                ),
                PopupMenuItem<int>(
                  value: 2,
                  child: Row(
                    children: [
                      Icon(Icons.logout, color: Colors.red), // Logout icon
                      SizedBox(width: 10.w),
                      Text("Logout"),
                    ],
                  ),
                ),
              ],
        ),
      ],
    );
  }
}
