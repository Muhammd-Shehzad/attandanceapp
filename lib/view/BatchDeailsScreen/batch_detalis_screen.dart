import 'package:attandanceapp/Utils/CostumButton/custome_button.dart';
import 'package:attandanceapp/Utils/TextFiledForm/text_field_form.dart';
import 'package:attandanceapp/view/AddBatches/add_batches_screen_provider.dart';
import 'package:attandanceapp/view/Auth/SignUp/signup_screen_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class BatchDetailScreen extends StatefulWidget {
  const BatchDetailScreen({super.key});

  @override
  State<BatchDetailScreen> createState() => _BatchDetailScreenState();
}

class _BatchDetailScreenState extends State<BatchDetailScreen> {
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
                                SizedBox(height: 40.h),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.arrow_back, size: 30.sp),
                                    InkWell(
                                      onTap: () {
                                        // Get.to();
                                      },
                                      child: const Icon(
                                        Icons.edit,
                                        size: 40,
                                        color: Color(0xFF5F6368),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 50.h),
                                Text(
                                  'Batches Details',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 10.h),

                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Batch Name:',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      WidgetSpan(child: SizedBox(width: 5.w)),
                                      TextSpan(
                                        text: 'Batch1',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20.sp,

                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                SizedBox(height: 10.h),

                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Batch Name:',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      WidgetSpan(child: SizedBox(width: 5.w)),
                                      TextSpan(
                                        text: 'Batch1',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20.sp,

                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                SizedBox(height: 10.h),
                                CustomeButton(
                                  text: 'Save',
                                  onPressed: () {
                                    if (model.formKey.currentState!
                                        .validate()) {
                                      model.addBatcheDetails();
                                    }
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
