// ignore_for_file: must_be_immutable

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tehnician_assignment_uros/constants/constants.dart';
import 'package:flutter_tehnician_assignment_uros/domain/entity/plan_entitiy.dart';
import 'package:flutter_tehnician_assignment_uros/validators.dart';
import 'package:flutter_tehnician_assignment_uros/widgets/background_widget.dart';
import 'package:flutter_tehnician_assignment_uros/widgets/step_buttons.dart';
import 'package:flutter_tehnician_assignment_uros/widgets/plan_widget.dart';
import 'package:flutter_tehnician_assignment_uros/widgets/summary_widget.dart';
import 'package:flutter_tehnician_assignment_uros/widgets/textformfield_widget.dart';

class FormScreen extends StatefulWidget {
  bool isYearly = false;
  FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _fullNameController = TextEditingController(text: 'uros');
  final TextEditingController _emailController = TextEditingController(text: 'urosvgd@gmail.com');
  final TextEditingController _phoneNumberController = TextEditingController(text: '+381638912427');

  int _currentStep = 0;
  final int step1 = 0;
  final int step2 = 1;
  final int step3 = 2;

  List<Step> getSteps() {
    return <Step>[
      _getFirstStep(),
      _getSecondStep(),
      _getThirdStep(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundWidget(
            showLogo: false,
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey.withOpacity(0.7),
              ),
              child: Form(
                key: _formKey,
                child: Stepper(
                  physics: const ScrollPhysics(),
                  currentStep: _currentStep,
                  steps: getSteps(),
                  controlsBuilder: _controlBuilder,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _controlBuilder(BuildContext context, ControlsDetails details) {
    if (details.currentStep == step1) {
      return StepButtons(
        currentStep: _currentStep,
        onNext: () {
          final bool isFormValid = _formKey.currentState!.validate();
          if (isFormValid) {
            setState(() {
              _currentStep++;
            });
          }
        },
        onBack: () {
          if (_currentStep > step1) {
            setState(() {
              _currentStep--;
            });
          } else {
            context.router.pop();
          }
        },
      );
    } else if (details.currentStep == step2) {
      return StepButtons(
        currentStep: _currentStep,
        onNext: () {
          final bool isValid = _formKey.currentState!.validate();
          if (isValid) {
            setState(() {
              _currentStep++;
            });
          }
        },
        onBack: () {
          setState(() {
            _currentStep--;
          });
        },
      );
    } else {
      return StepButtons(
        currentStep: _currentStep,
        onNext: () {
          final isLastStep = _currentStep == getSteps().length - 1;
          final bool isFormValide = _formKey.currentState!.validate();
          if (isLastStep && isFormValide) {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text("Form submitted"),
                  actions: [
                    TextButton(
                      onPressed: () {
                        context.router.replaceNamed('/');
                      },
                      child: const Text("Ok"),
                    ),
                  ],
                );
              },
            );
          }
        },
        onBack: () {
          setState(() {
            _currentStep--;
          });
        },
      );
    }
  }

  Step _getThirdStep() {
    return Step(
      state: _currentStep > 2 ? StepState.complete : StepState.indexed,
      isActive: _currentStep >= 2,
      title: const Text(
        'Review',
        style: TypographyConstants.whiteText,
      ),
      content: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(8),
        ),
        child: SummaryWidget(),
      ),
    );
  }

  Step _getSecondStep() {
    return Step(
      state: _currentStep > 1 ? StepState.complete : StepState.indexed,
      isActive: _currentStep >= 1,
      title: const Text(
        'Choose plan',
        style: TypographyConstants.whiteText,
      ),
      content: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: PlanWidget(
              plan: PlanEntity(tier: SubscriptionTier.basic),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: PlanWidget(
              plan: PlanEntity(
                tier: SubscriptionTier.normal,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: PlanWidget(
              plan: PlanEntity(tier: SubscriptionTier.advanced),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Monthly",
                style: TypographyConstants.whiteText,
              ),
              Switch(
                value: widget.isYearly,
                onChanged: (value) {
                  setState(() {
                    widget.isYearly = value;
                  });
                },
              ),
              const Text(
                "Yearly",
                style: TypographyConstants.whiteText,
              ),
            ],
          ),
          widget.isYearly
              ? const Text(
                  "You have 2 months free",
                  style: TypographyConstants.whiteText,
                )
              : const SizedBox.shrink()
        ],
      ),
    );
  }

  Step _getFirstStep() {
    return Step(
      state: _currentStep > 0 ? StepState.complete : StepState.indexed,
      isActive: _currentStep >= 0,
      title: const Text(
        'Personal informations',
        style: TypographyConstants.whiteText,
      ),
      content: Column(
        children: [
          const SizedBox(height: 10),
          TextFormFieldWidget(
            controller: _fullNameController,
            labelText: 'Full name',
            validator: (String? value) {
              return FormValidator.validateFullName(value);
            },
          ),
          const SizedBox(height: 10),
          TextFormFieldWidget(
            controller: _emailController,
            labelText: 'Email',
            validator: (String? value) {
              return FormValidator.validateEmail(value);
            },
          ),
          const SizedBox(height: 10),
          TextFormFieldWidget(
            labelText: 'Phone number',
            controller: _phoneNumberController,
            validator: (String? value) {
              return FormValidator.validatePhoneNumber(value);
            },
          ),
        ],
      ),
    );
  }
}
