import 'package:_cool_out/home_cool_out.dart';
import 'package:_cool_out/startup_signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class StartUpLoginScreen extends StatefulWidget {
  const StartUpLoginScreen({super.key});

  @override
  State<StartUpLoginScreen> createState() => _StartUpLoginScreenState();
}

class _StartUpLoginScreenState extends State<StartUpLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: GestureDetector(
        onTap: () {
          Get.to(() => const StartUpSignUpScreen());
        },
        child: Row(
          children: [
            20.horizontalSpace,
            const Text(
              "New Member? Sign Up",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Color(0xff95C2C5),
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            width: 1.sw,
            height: 160.h,
            color: const Color(0xff95C2C5),
          ),
          const Spacer(),
          // Center(
          //   child: Container(
          //     width: 100.w,
          //     height: 100.h,
          //     decoration: const BoxDecoration(
          //       image: DecorationImage(
          //         image: AssetImage("assets/splash_png.png"),
          //       ),
          //     ),
          //   ),
          // ),
          const Text(
            "Cool Out",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Color(0xff95C2C5),
              fontSize: 55,
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.to(() => const HomeCoolOutScreen());
            },
            child: Container(
              width: 322.w,
              height: 60.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: const Color(0xff95C2C5),
              ),
              child: const Center(
                child: Text(
                  "LOG IN",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
