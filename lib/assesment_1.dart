import 'package:_cool_out/create_account_screen.dart';
import 'package:_cool_out/widgets/step_progress_widget.dart';

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AssesmentPageOne extends StatefulWidget {
  const AssesmentPageOne({super.key});

  @override
  State<AssesmentPageOne> createState() => _AssesmentPageOneState();
}

class _AssesmentPageOneState extends State<AssesmentPageOne> {
  final List<String> questions = [
    "We’d like to learn more about you.\nCould you share your gender ?",
    "Select your age range ?",
    "Select your race ?"
        "Select your rank?",
    "Do you have a partner ?",
    "Do you have children ?",
    "How many children do you have?",
    "What are their ages?",
    "Do you want to feel more connected with others?",
    "How do you manage stress ?",
    "When you’re not on duty Do you consume alcohol?",
    "Are you stuck in the past uncertain about the future ?",
    "How do you feel about meditation?",
    "How do you feel about mindfulness?"
  ];
  int currentStep = 1;
  final List<int> subSteps = [3, 1, 1, 2];
  void moveToNextStep() {
    int totalSteps = subSteps.fold(1, (sum, s) => sum + s + 1);

    if (currentStep < totalSteps) {
      setState(() {
        currentStep++;
      });
    } else {
      Get.to(() => const CreateAccountScreen());
    }
  }

  String? _selectedGender;

  final List<List<String>> options = [
    ["Male", "Female", "Other", "Prefer not to say"],
    [
      "18-24 years",
      "25-34 years",
      "34-44 years",
      "45-54 years",
      "55-64 years",
      "65+ years"
    ],
    [
      "Black",
      "White",
      "Asian",
      "Indian",
      "Mixed Race",
      "Other",
      "Prefer not to say"
    ],
    [
      "Police Constable",
      "Sergeant",
      "Inspector",
      "Chief Inspector",
      "Superintendent",
      "Chief Superintendent",
      "Assistant Chief Constable",
      "Deputy Chief Constable",
      "Chief Constable",
      "Detective Constable",
      "Detective Sergeant",
      "Detective Inspector",
      "Detective Chief Inspector",
      "Detective Superintendent",
      "Detective Chief Superintendent",
      "Police Staff"
    ],
    [
      "Single",
      "Dating",
      "Married",
      "Divorced",
      "Widowed",
      "Engaged",
      "Separated",
      " Long-term relationship",
      " Living together"
    ],
    ["Yes", "No", "Prefer not to say"],
    ["1", "2", "3", "4", "5", "5 or more"],
    ["0-5 years", "5-12 years", "12-18 years", "18+ years"],
    ["Yes", "Sometimes", "Unsure", "Very much"],
    ["Not very well", "Fairly well", "Not so good", "Very good"],
    ["Never", "Sometimes", "Daily", "Weekly", "Social Occasions"],
    ["Yes", "No", "Sometimes", "Often"],
    [
      "I’m somewhat sceptical",
      "Never tried",
      "I wonder if it would work",
      "Unsure about this",
      "I'm all set to investigate this"
    ],
    [
      "I’m somewhat sceptical",
      "Never tried",
      "I wonder if it would work",
      "Unsure about this",
      "Unsure about this"
    ],
  ];
  void moveToPreviousStep() {
    if (currentStep > 1) {
      setState(() {
        currentStep--; // Move backward
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: StepProgressIndicator(
          currentStep: currentStep,
          subSteps: subSteps,
        ),
      ),
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
          "Assessment",
          style: TextStyle(
            fontSize: 29,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.refresh,
              size: 35,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            width: 1.sw,
            height: 265.h,
            color: const Color(0xff95C2C5),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (currentStep > 1) {
                          moveToPreviousStep();
                        }
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                    SizedBox(
                      width: 0.8.sw,
                      child: Text(
                        questions[currentStep - 1],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          20.verticalSpace,
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              "Select your answers",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Color(0xff666666),
                fontSize: 15,
              ),
            ),
          ),
          15.verticalSpace,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: options[currentStep - 1].map((option) {
              return RadioListTile<String>(
                activeColor: const Color(0xff95C2C5),
                title: Text(
                  option,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xff666666),
                    fontSize: 15,
                  ),
                ),
                value: option,
                groupValue: _selectedGender,
                onChanged: (String? value) {
                  setState(() {
                    _selectedGender = value;
                  });
                },
              );
            }).toList(),
          ),
          30.verticalSpace,
          GestureDetector(
            onTap: () {
              moveToNextStep();
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
                      "Let’s move on",
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
          10.verticalSpace,
          const Text(
            "Your answers will remain completely confidential.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              color: Color(0xffB6B6B6),
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
