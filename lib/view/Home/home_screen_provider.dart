import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class StudentDetailScreenProvider extends ChangeNotifier {
  bool showMenu = false;

  FirebaseAuth auth = FirebaseAuth.instance;
  final formKey = GlobalKey<FormState>();

  TextEditingController cousreName = TextEditingController();
  TextEditingController batchNumber = TextEditingController();
  final dbAddBatches = FirebaseDatabase.instance.ref('AddBatch');

  bool isLoading = false;
}
