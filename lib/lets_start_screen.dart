import 'package:_cool_out/assesment_1.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LetsStartScreen extends StatefulWidget {
  const LetsStartScreen({super.key});

  @override
  State<LetsStartScreen> createState() => _LetsStartScreenState();
}

class _LetsStartScreenState extends State<LetsStartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/VIP_Icon.png"),
            5.horizontalSpace,
            const Text(
              "Your VIP Access",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Color(0xffAE8625),
                fontSize: 24,
              ),
            )
          ],
        ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          backgroundColor: const Color(0xff95C2C5),
          title: const Text(
            "Let’s Start Now",
            style: TextStyle(
              fontSize: 29,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: ListView(
          padding: EdgeInsets.zero,
          children: [
            20.verticalSpace,
            const Center(
              child: Text(
                "Ready to uplift your\nmood?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 26,
                  color: Color(0xff95C2C5),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            50.verticalSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    "Stop Negative\nFeelings",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xffFE7490),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  5.horizontalSpace,
                  Image.asset("assets/Group 1000011260.png"),
                  const Spacer(),
                  const Text(
                    "Feel Good",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff2BD182),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  5.horizontalSpace,
                  Image.asset("assets/istockphoto-1281326263-612x612 1.png"),
                ],
              ),
            ),
            15.verticalSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  // 15.horizontalSpace,
                  Image.asset("assets/Group 1000011263.png"),
                  const Text(
                    "Own Your\nConfidence",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xffF2CE06),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  "Shape your\nMindset",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff00BACB),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Image.asset("assets/17366778 4.png"),
                20.horizontalSpace,
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Love Life",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xffFA0207),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Image.asset("assets/3571617 1.png"),
                35.horizontalSpace,
              ],
            ),
            20.verticalSpace,
            const Center(
              child: Text(
                "Facing challenges",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17,
                  color: Color(0xff000000),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            15.verticalSpace,
            const Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Discover skills that can boost your mindset. Take a moment to answer a few questions and personalise your uplifting feel-good journey.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17,
                    color: Color(0xff000000),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            20.verticalSpace,
            GestureDetector(
              onTap: () {
                Get.to(() => const AssesmentPageOne());
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  width: 322.w,
                  height: 59.h,
                  decoration: BoxDecoration(
                    color: const Color(0xff95C2C5),
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Start Today",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            20.verticalSpace,
          ],
        ));
  }
}
