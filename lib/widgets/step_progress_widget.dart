import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StepProgressIndicator extends StatelessWidget {
  final int currentStep; // The active step (includes sub-steps)
  final List<int> subSteps; // Number of sub-steps between each main step

  const StepProgressIndicator({
    Key? key,
    required this.currentStep,
    required this.subSteps, // Example: [2, 3, 1] → means step 1 → 2 has 2 sub-steps, etc.
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> steps = [];
    int stepCounter = 1; // Main step count
    int progressCounter = 1; // Includes sub-steps

    int totalMainSteps = subSteps.length + 1; // Including the last step

    for (int i = 0; i < totalMainSteps; i++) {
      bool isActive = progressCounter <= currentStep;

      // Main step (Large Circle with Number)
      steps.add(
        Container(
          width: 25.w,
          height: 25.h,
          decoration: BoxDecoration(
            color: isActive ? const Color(0xff92D2ED) : Colors.grey[400],
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              "$stepCounter", // Only number on main steps
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      );

      stepCounter++; // Move to next step count
      progressCounter++; // Move to next step/sub-step count

      // Add sub-steps if not the last main step
      if (i < subSteps.length) {
        for (int j = 0; j < subSteps[i]; j++) {
          bool isSubActive = progressCounter <= currentStep;

          // Connector line
          steps.add(
            Expanded(
              child: Container(
                height: 4.h,
                color: isSubActive ? const Color(0xff92D2ED) : Colors.grey[400],
              ),
            ),
          );

          // Sub-step circle (Smaller and without number)
          steps.add(
            Container(
              width: 12.w,
              height: 12.h,
              decoration: BoxDecoration(
                color: isSubActive ? const Color(0xff92D2ED) : Colors.grey[400],
                shape: BoxShape.circle,
              ),
            ),
          );

          progressCounter++; // Move to next step/sub-step count
        }

        // Final connector line before next main step
        steps.add(
          Expanded(
            child: Container(
              height: 4,
              color: progressCounter <= currentStep
                  ? const Color(0xff92D2ED)
                  : Colors.grey[400],
            ),
          ),
        );
      }
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: steps,
    );
  }
}
