import 'package:attandanceapp/Utils/Toast/toast_popup.dart';
import 'package:attandanceapp/view/Home/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreenProvider extends ChangeNotifier {
  FirebaseAuth auth = FirebaseAuth.instance;
  DatabaseReference db = FirebaseDatabase.instance.ref('user');

  final formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isloading = false;

  void signUp() async {
    isloading = true;
    notifyListeners();

    auth.createUserWithEmailAndPassword(
      email: emailController.text.toString(),
      password: passwordController.text.toString(),
    );

    String id = DateTime.now().microsecondsSinceEpoch.toString();

    db
        .child(id)
        .set({'email': emailController.text.toString(), 'id': id.toString()})
        .then((v) {
          ToastPopup().toast(
            'Account Created Sucessfully',
            Colors.green,
            Colors.white,
          );
          Get.off(const HomeScreen());

          emailController.clear();
          passwordController.clear();
          isloading = false;
          notifyListeners();
        })
        .onError((Error, v) {
          ToastPopup().toast(Error.toString(), Colors.red, Colors.white);
          isloading = false;
          notifyListeners();
        });
  }
}
