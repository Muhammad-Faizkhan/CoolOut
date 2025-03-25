import 'package:_cool_out/lets_start_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    bool isChecked = false;

    return Scaffold(
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
          "Log In",
          style: TextStyle(
            fontSize: 29,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: ListView(
        children: [
          20.verticalSpace,
          const Center(
            child: Text(
              "Ready to Cool Out",
              style: TextStyle(
                fontSize: 26,
                color: Color(0xff95C2C5),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          10.verticalSpace,
          const Center(
            child: Text(
              "Sign In and start your journey.",
              style: TextStyle(
                fontSize: 17,
                color: Color(0xff929292),
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          10.verticalSpace,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              width: 322.w,
              height: 59.h,
              decoration: BoxDecoration(
                color: const Color(0xff95C2C5),
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  35.horizontalSpace,
                  const Icon(
                    Icons.facebook,
                    color: Colors.white,
                  ),
                  5.horizontalSpace,
                  const Text(
                    "Sign In with Facebook",
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
          10.verticalSpace,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              width: 322.w,
              height: 59.h,
              decoration: BoxDecoration(
                color: const Color(0xff95C2C5),
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  35.horizontalSpace,
                  const Icon(
                    Icons.apple,
                    color: Colors.white,
                  ),
                  5.horizontalSpace,
                  const Text(
                    "Sign In with Apple",
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
          10.verticalSpace,
          const Center(
            child: Text(
              "Or via email",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Color(0xff6D6D6D),
                fontSize: 20,
              ),
            ),
          ),
          10.verticalSpace,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              ),
            ),
          ),
          20.verticalSpace,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'Forget Password ?',
                style: TextStyle(color: Color(0xff95C2C5)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Checkbox(
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = !isChecked;
                    });
                  },
                  activeColor: Colors.blue,
                ),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      text: 'I agree to Cool Out ',
                      style: TextStyle(color: Colors.grey[600]),
                      children: const [
                        TextSpan(
                          text: 'Terms of Services',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(text: ' and '),
                        TextSpan(
                          text: 'Privacy Policy.',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          30.verticalSpace,
          GestureDetector(
            onTap: () {
              Get.to(() => const LetsStartScreen());
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                width: 322.w,
                height: 59.h,
                decoration: BoxDecoration(
                  color: const Color(0xff95C2C5),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Continue",
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
        ],
      ),
    );
  }
}
