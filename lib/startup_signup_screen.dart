import 'package:_cool_out/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class StartUpSignUpScreen extends StatefulWidget {
  const StartUpSignUpScreen({super.key});

  @override
  State<StartUpSignUpScreen> createState() => _StartUpSignUpScreenState();
}

class _StartUpSignUpScreenState extends State<StartUpSignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Container(
          width: 1.sw,
          height: 160.h,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/background_image1.png"),
                fit: BoxFit.fill),
          ),
        ),
        const Spacer(),
        Center(
          child: Container(
            width: 100.w,
            height: 100.h,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/splash_png.png"),
              ),
            ),
          ),
        ),
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
            Get.to(() => const LoginScreen());
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
        Container(
          width: 1.sw,
          height: 280.h,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/background_Image2.png"),
                fit: BoxFit.fill),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                5.verticalSpace,
                const Row(
                  children: [
                    Text(
                      "Already a member? Log in",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                10.verticalSpace,
                Container(
                  width: 322.w,
                  height: 55.h,
                  decoration: BoxDecoration(
                    color: const Color(0xff95C2C5),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Row(
                    children: [
                      5.horizontalSpace,
                      const Icon(
                        Icons.facebook,
                        color: Colors.white,
                      ),
                      5.horizontalSpace,
                      const Text(
                        "Log in with Facebook",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      )
                    ],
                  ),
                ),
                5.verticalSpace,
                Container(
                  width: 322.w,
                  height: 55.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: const Color(0xff95C2C5),
                  ),
                  child: Row(
                    children: [
                      5.horizontalSpace,
                      const Icon(
                        Icons.apple,
                        color: Colors.white,
                      ),
                      5.horizontalSpace,
                      const Text(
                        "Log in with Apple",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      )
                    ],
                  ),
                ),
                5.verticalSpace,
                Container(
                  width: 322.w,
                  height: 55.h,
                  decoration: BoxDecoration(
                    color: const Color(0xff95C2C5),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Row(
                    children: [
                      5.horizontalSpace,
                      Image.asset(
                        "assets/email_icon.png",
                        color: Colors.white,
                      ),
                      5.horizontalSpace,
                      const Text(
                        "Or Log in with Email",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      )
                    ],
                  ),
                ),
                10.verticalSpace,
                const Row(
                  children: [
                    Text(
                      "New Member? Sign Up",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
