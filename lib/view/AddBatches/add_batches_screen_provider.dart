import 'package:attandanceapp/Utils/Toast/toast_popup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddBatchesScreenProvider extends ChangeNotifier {
  String? selectedValue;
  List<String> locaton = ['Peshawar', 'Lahor', 'Islamabad'];
  bool isLoading = false;

  FirebaseAuth auth = FirebaseAuth.instance;
  final formKey = GlobalKey<FormState>();

  final dbBatch = FirebaseDatabase.instance.ref('Batch Details');

  TextEditingController batchNoController = TextEditingController();
  TextEditingController noOfStudentController = TextEditingController();
  TextEditingController leaderNameController = TextEditingController();
  TextEditingController lederMobilController = TextEditingController();

  final dbAddBatches = FirebaseDatabase.instance.ref('AddBatch');

  void addBatcheDetails() {
    String id = DateTime.now().millisecondsSinceEpoch.toString();

    dbAddBatches
        .child(id)
        .set({
          'batch_no': batchNoController.text.trim(),
          'no_of_students': noOfStudentController.text.trim(),
          'leader_name': leaderNameController.text.trim(),
          'leader_mobil': lederMobilController.text.trim(),
          'location': locaton.toString(),
          'id': id,
        })
        .then((v) {
          ToastPopup().toast('Data Added', Colors.green, Colors.white);
          batchNoController.clear();
          noOfStudentController.clear();
          leaderNameController.clear();
          lederMobilController.clear();
          notifyListeners();
          Get.back();
        })
        .onError((Eror, v) {
          ToastPopup().toast(Error, Colors.red, Colors.white);
        });
  }
}
