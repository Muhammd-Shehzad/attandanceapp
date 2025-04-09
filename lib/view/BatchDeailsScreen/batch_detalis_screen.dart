import 'package:attandanceapp/Utils/CostumButton/custome_button.dart';
import 'package:attandanceapp/view/AddBatches/add_batches_screen_provider.dart';
import 'package:attandanceapp/view/StudentDetailsScreen/student_detail_screen.dart';
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
      create: (context) => EnterStudentDetailProvider(),
      child: Consumer<EnterStudentDetailProvider>(
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
                                Padding(
                                  padding: const EdgeInsets.symmetric(
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
                                        text: 'Location:',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      WidgetSpan(child: SizedBox(width: 5.w)),
                                      TextSpan(
                                        text: 'Peshawar',
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
                                        text: 'Student No:',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      WidgetSpan(child: SizedBox(width: 5.w)),
                                      TextSpan(
                                        text: '30',
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
                                Text(
                                  'Batches Leader Details',
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
                                        text: 'Leader Name:',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      WidgetSpan(child: SizedBox(width: 5.w)),
                                      TextSpan(
                                        text: 'Shehzad khan',
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
                                        text: 'Leader No:',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      WidgetSpan(child: SizedBox(width: 5.w)),
                                      TextSpan(
                                        text: '03169727675',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20.sp,

                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 20.h),

                                CustomeButton(
                                  height: 40.h,
                                  width: 200.w,
                                  text: 'Attandanced',
                                  onPressed: () {},
                                ),
                                SizedBox(height: 20.h),

                                CustomeButton(
                                  height: 40.h,
                                  width: 200.w,
                                  text: 'Student Details',
                                  onPressed: () {
                                    Get.to(StudentDetailScreen());
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
