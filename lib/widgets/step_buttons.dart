import 'package:flutter/material.dart';
import 'package:flutter_tehnician_assignment_uros/constants/constants.dart';
import 'package:gap/gap.dart';

class StepButtons extends StatelessWidget {
  final int currentStep;
  final Function onNext;
  final Function onBack;
  const StepButtons({
    super.key,
    required this.currentStep,
    required this.onNext,
    required this.onBack,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(
            onPressed: () {
              onBack();
            },
            child: Text(
              currentStep == 0 ? "Cancel" : 'Back',
              style: TypographyConstants.whiteText,
            ),
          ),
          const Gap(15),
          ElevatedButton(
            onPressed: () {
              onNext();
            },
            child: Text(
              currentStep == 2 ? "Confirm" : 'Next',
              style: TypographyConstants.whiteText,
            ),
          ),
        ],
      ),
    );
  }
}
