import 'package:_cool_out/widgets/slider_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeCoolOutScreen extends StatefulWidget {
  const HomeCoolOutScreen({super.key});

  @override
  State<HomeCoolOutScreen> createState() => _HomeCoolOutScreenState();
}

class _HomeCoolOutScreenState extends State<HomeCoolOutScreen> {
  final List<Map<String, dynamic>> categories = [
    {
      "image": "assets/Group 1000011360.png",
      "name": "Enjoy",
      "color": Colors.blue
    },
    {
      "image": "assets/thanks-greeting-10-512 1.png",
      "name": "Thankful",
      "color": Colors.green
    },
    {
      "image": "assets/Vector 17756.png",
      "name": "Goals",
      "color": Colors.blueGrey
    },
    {"image": "assets/image 1685.png", "name": "Relief", "color": Colors.cyan},
    {
      "image": "assets/images__1_-removebg-preview 1.png",
      "name": "Focus",
      "color": Colors.lightGreen
    },
    {
      "image": "assets/13354657 1.png",
      "name": "Breathe",
      "color": Colors.greenAccent
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        backgroundColor: const Color(0xff95C2C5),
        title: const Text(
          "Cool Out",
          style: TextStyle(
            fontSize: 29,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: ListView(
        children: [
          75.verticalSpace,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.topCenter,
              children: [
                Container(
                  width: 1.sw,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      50.verticalSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/flag_icon.png"),
                          5.horizontalSpace,
                          const Text(
                            "My Route",
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xffAEAEAE),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      const Text(
                        "Ready to Begin Your First Route?",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xffAEAEAE),
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      5.verticalSpace,
                      Container(
                        width: 1.sw,
                        height: 195.h,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/RELAXING IMAGE 1.png"),
                          ),
                        ),
                      ),
                      5.verticalSpace,
                      const Text(
                        "Overcome Negative Thinking",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xffAEAEAE),
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      5.verticalSpace,
                      const Text(
                        "Part 1 : Start Depositing Positive Emotions in\nYour Bank",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xffAEAEAE),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      5.verticalSpace,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Container(
                          width: 1.sw,
                          height: 69.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            color: const Color(0xff95C2C5),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              width: 1.sw,
                              height: 65.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.r),
                                color: const Color(0xff95C2C5),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.white,
                                    spreadRadius: 2,
                                    blurRadius: 10,
                                    offset: Offset(3, 0),
                                  ),
                                ],
                              ),
                              child: const Center(
                                child: Text(
                                  "START PART 1",
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      25.verticalSpace,
                    ],
                  ),
                ),
                Positioned(
                    top: -40,
                    child: Container(
                      width: 77.w,
                      height: 77.h,
                      decoration: BoxDecoration(
                        color: const Color(0xff4BCF8F),
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 5.w,
                          color: const Color(0xffE2E2E2),
                        ),
                        image: const DecorationImage(
                          image: AssetImage("assets/profileIcon.png"),
                        ),
                      ),
                    ))
              ],
            ),
          ),
          20.verticalSpace,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              width: 1.sw,
              height: 75.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: const Center(
                child: Text(
                  "Explore Route Plans",
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xff95C2C5),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          20.verticalSpace,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
                width: 1.sw,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    50.verticalSpace,
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Image.asset("assets/Stats_image.png"),
                      5.horizontalSpace,
                      const Text(
                        "My Action Plan",
                        style: TextStyle(
                          fontSize: 22,
                          color: Color(0xff95C2C5),
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ]),
                    20.verticalSpace,
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        return CategorySlider(
                          index: index,
                          categories: categories,
                        );
                      },
                    ),
                    10.verticalSpace,
                    const Text(
                      "My Scoreboard",
                      style: TextStyle(
                        fontSize: 19,
                        color: Color(0xff95C2C5),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    25.verticalSpace,
                  ],
                )),
          ),
          20.verticalSpace,
          const Center(
            child: Text(
              "How’s your mood at this time?",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Inner text color
                shadows: [
                  Shadow(
                    offset: Offset(0, 0),
                    blurRadius: 3.0,
                    color: Colors.lightBlueAccent, // Outline color
                  ),
                ],
              ),
            ),
          ),
          20.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    width: 94.w,
                    height: 43.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: const Color(0xff95C2C5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/Group 1000011341-1.png"),
                        5.horizontalSpace,
                        const Text(
                          "Sad",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ),
                  10.verticalSpace,
                  Container(
                    width: 94.w,
                    height: 43.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: const Color(0xff95C2C5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/Group 1000011341.png"),
                        5.horizontalSpace,
                        const Text(
                          "Anger",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ),
                  10.verticalSpace,
                  Container(
                    width: 94.w,
                    height: 43.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: const Color(0xff95C2C5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/image 1684.png"),
                        5.horizontalSpace,
                        const Text(
                          "Stress",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ),
                  10.verticalSpace,
                  Container(
                    width: 94.w,
                    height: 43.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: const Color(0xff95C2C5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/Ellipse 3759.png"),
                        5.horizontalSpace,
                        const Text(
                          "Crying",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              100.horizontalSpace,
              Container(
                width: 153.w,
                height: 56.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: const Color(0xff95C2C5),
                ),
                child: const Center(
                  child: Text(
                    "MOOD TIPS",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              )
            ],
          ),
          50.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 0.45.sw,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ]),
                child: Column(
                  children: [
                    10.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/Group 1000011359.png"),
                        10.verticalSpace,
                        const Text(
                          "The Positive Side",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff888888),
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    5.verticalSpace,
                    Container(
                      width: 150.w,
                      height: 95.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        image: const DecorationImage(
                          image: AssetImage("assets/image.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    5.verticalSpace,
                    const Text(
                      "How Mental Rest Recharges Your Brain",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff888888),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    10.verticalSpace,
                    Container(
                      width: 150.w,
                      height: 1.5.h,
                      color: Colors.grey,
                    ),
                    10.verticalSpace,
                    const Text(
                      "View Now",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff95C2C5),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    10.verticalSpace,
                  ],
                ),
              ),
              10.horizontalSpace,
              Container(
                width: 0.45.sw,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ]),
                child: Column(
                  children: [
                    10.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/Vector 17704.png"),
                        5.horizontalSpace,
                        const Text(
                          "Updates",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff888888),
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    10.verticalSpace,
                    Container(
                      width: 150.w,
                      height: 95.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        image: const DecorationImage(
                          image: AssetImage("assets/image_2.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    5.verticalSpace,
                    const Text(
                      "I’m Looking Forward To...\n",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff888888),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    10.verticalSpace,
                    Container(
                      width: 150.w,
                      height: 1.5.h,
                      color: Colors.grey,
                    ),
                    10.verticalSpace,
                    const Text(
                      "See All My Posts",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff95C2C5),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    10.verticalSpace,
                  ],
                ),
              )
            ],
          ),
          20.verticalSpace,
        ],
      ),
    );
  }
}
