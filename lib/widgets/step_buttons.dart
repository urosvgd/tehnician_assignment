import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:flutter_tehnician_assignment_uros/constants/locale.dart';
import 'package:flutter_tehnician_assignment_uros/widgets/text_widget.dart';
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
            child: TextWidget(
              currentStep == 0 ? AppLocale.formCancelButton.getString(context) : AppLocale.formBackButton.getString(context),
            ),
          ),
          const Gap(15),
          ElevatedButton(
            onPressed: () {
              onNext();
            },
            child: TextWidget(
              currentStep == 2 ? AppLocale.formConfirmButton.getString(context) : AppLocale.formNextButton.getString(context),
            ),
          ),
        ],
      ),
    );
  }
}
