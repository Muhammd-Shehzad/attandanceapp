import 'package:attandanceapp/Utils/CostumButton/custome_button.dart';
import 'package:attandanceapp/Utils/TextFiledForm/text_field_form.dart';
import 'package:attandanceapp/view/AddBatches/add_batches_screen_provider.dart';
import 'package:attandanceapp/view/Auth/SignUp/signup_screen_provider.dart';
import 'package:attandanceapp/view/BatchDeailsScreen/batch_detalis_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({super.key});

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AddBatchesScreenProvider(),
      child: Consumer<AddBatchesScreenProvider>(
        builder:
            (context, model, child) => Scaffold(
              body: Form(
                key: model.formKey,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.blue.shade300,
                        Colors.blue.shade500,
                        Colors.blue.shade700,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Center(
                        child: Container(
                          height: 560.h,
                          width: 300.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 30.h),

                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 10,
                                    horizontal: 20,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Get.back();
                                        },
                                        child: Icon(
                                          Icons.arrow_back,
                                          size: 30.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 50.h),
                                Text(
                                  'Edit Batch Details',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                TextFieldForm(
                                  controller: model.batchNoController,
                                  text: 'Batch No',
                                  validationText: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter your Batch No';
                                    }
                                  },
                                ),
                                SizedBox(height: 10.h),
                                SizedBox(
                                  height: 40.h,
                                  width: 283.w,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 12.w,
                                    ),

                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color:
                                            model.selectedValue == null
                                                ? Colors.red
                                                : Colors.blue,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.white,
                                    ),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton<String>(
                                        value: model.selectedValue,
                                        hint: Text('Select Location'),
                                        isExpanded: true,
                                        icon: Icon(
                                          Icons.arrow_drop_down,
                                          color: Colors.blue,
                                        ),
                                        items:
                                            model.locaton
                                                .map(
                                                  (String item) =>
                                                      DropdownMenuItem(
                                                        value: item,
                                                        child: Text(item),
                                                      ),
                                                )
                                                .toList(),
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            model.selectedValue = newValue;
                                          });
                                        },
                                        dropdownColor: Colors.white,
                                        style: TextStyle(color: Colors.black),
                                        menuMaxHeight: 200.h,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                TextFieldForm(
                                  controller: model.noOfStudentController,
                                  text: 'Student No',
                                  validationText: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter your Student No';
                                    }
                                  },
                                ),
                                SizedBox(height: 10.h),

                                SizedBox(height: 10.h),

                                TextFieldForm(
                                  controller: model.leaderNameController,
                                  text: 'Leader Name',
                                  validationText: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter your Leader Name';
                                    }
                                  },
                                ),
                                SizedBox(height: 10.h),
                                TextFieldForm(
                                  controller: model.lederMobilController,
                                  text: 'Leader No',
                                  validationText: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter your Leader No';
                                    }
                                  },
                                ),
                                SizedBox(height: 10.h),
                                CustomeButton(
                                  text: 'Save',
                                  onPressed: () {
                                    // if (model.formKey.currentState!
                                    //     .validate()) {
                                    // }
                                    Get.to(BatchDetailScreen());
                                  },
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
