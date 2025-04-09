import 'package:attandanceapp/Utils/CostumButton/custome_button.dart';
import 'package:attandanceapp/Utils/SearchBar/search_bar.dart';
import 'package:attandanceapp/view/EnterStudentDetail/enter_student_detail.dart';
import 'package:attandanceapp/view/Home/home_screen_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/utils.dart';
import 'package:provider/provider.dart';

class StudentDetailScreen extends StatefulWidget {
  const StudentDetailScreen({super.key});

  @override
  State<StudentDetailScreen> createState() => _StudentDetailScreenState();
}

class _StudentDetailScreenState extends State<StudentDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => StudentDetailScreenProvider(),
      child: Consumer<StudentDetailScreenProvider>(
        builder:
            (context, model, child) => Scaffold(
              body: Container(
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
                        height: 600.h,
                        width: 300.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 10.h),

                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 10,
                                  horizontal: 20,
                                ),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: InkWell(
                                    onTap: () {
                                      Get.back();
                                    },
                                    child: Icon(Icons.arrow_back, size: 30.sp),
                                  ),
                                ),
                              ),
                              SizedBox(height: 60.h),

                              CustomSearchBar(),
                              SizedBox(height: 8.h),
                              Text(
                                'Student Details',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Expanded(
                                child: ListView.builder(
                                  padding: EdgeInsets.zero,
                                  itemCount: 10,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 60,
                                        vertical: 10,
                                      ),
                                      child: Container(
                                        height: 40.h,
                                        width: 90.w,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF64B5F6),
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Ali',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18.sp,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 30,
                                ),
                                child: CustomeButton(
                                  height: 40.h,
                                  width: 200.w,
                                  text: 'Add New Student',
                                  onPressed: () {
                                    Get.to(EnterStudentScreen());
                                  },
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
    );
  }
}
