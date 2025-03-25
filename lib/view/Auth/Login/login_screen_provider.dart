import 'package:attandanceapp/Utils/Toast/toast_popup.dart';
import 'package:attandanceapp/view/Home/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreenProvider extends ChangeNotifier {
  FirebaseAuth auth = FirebaseAuth.instance;

  final formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isloading = false;

  void isLogin() {
    isloading = true;
    notifyListeners();

    auth
        .signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
        )
        .then((v) {
          ToastPopup().toast(
            'Sign In Successfully',
            Colors.green,
            Colors.white,
          );
          Get.off(const HomeScreen());
          isloading = false;
          emailController.clear();
          passwordController.clear();
          notifyListeners();
        })
        .onError((error, v) {
          ToastPopup().toast(error.toString(), Colors.red, Colors.white);
          isloading = false;
          notifyListeners();
        });
  }
}
