import 'package:_cool_out/startup_login_screen.dart';
import 'package:_cool_out/startup_signup_screen.dart';

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      backgroundColor: Colors.white,
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
              Get.to(() => const StartUpLoginScreen());
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
                  "START MY JOURNEY",
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
