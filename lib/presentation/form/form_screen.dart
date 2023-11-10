// ignore_for_file: must_be_immutable

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tehnician_assignment_uros/domain/entity/plan_entitiy.dart';
import 'package:flutter_tehnician_assignment_uros/typography.dart';
import 'package:flutter_tehnician_assignment_uros/validators.dart';
import 'package:flutter_tehnician_assignment_uros/widgets/background_widget.dart';
import 'package:flutter_tehnician_assignment_uros/widgets/plan.dart';
import 'package:gap/gap.dart';

class FormScreen extends StatefulWidget {
  bool isYearly = false;
  FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();

  int _currentStep = 0;
  final int step1 = 0;
  final int step2 = 1;
  final int step3 = 2;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundWidget(
            showLogo: false,
          ),
          Form(
            key: _formKey,
            child: Stepper(
              physics: const ScrollPhysics(),
              currentStep: _currentStep,
              steps: getSteps(widget.isYearly),
              controlsBuilder: (context, ControlsDetails details) {
                if (details.currentStep == step1) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          if (_currentStep > step1) {
                            setState(() {
                              _currentStep--;
                            });
                          } else {
                            context.router.pop();
                          }
                        },
                        child: const Text(
                          "Cancel",
                          style: Typohraphy.whiteText,
                        ),
                      ),
                      const Gap(15),
                      ElevatedButton(
                        onPressed: () {
                          final isLastStep = _currentStep == getSteps(widget.isYearly).length - 1;
                          final bool isFormValide = _formKey.currentState!.validate();
                          if (isLastStep) {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text("Form submitted"),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: const Text("Ok"),
                                    ),
                                  ],
                                );
                              },
                            );
                          } else {
                            if (isFormValide) {
                              setState(() {
                                _currentStep++;
                              });
                            }
                          }
                        },
                        child: const Text("Next"),
                      ),
                    ],
                  );
                } else if (details.currentStep == step2) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            _currentStep--;
                          });
                        },
                        child: const Text(
                          "Back",
                          style: Typohraphy.whiteText,
                        ),
                      ),
                      const Gap(15),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _currentStep++;
                          });
                        },
                        child: const Text("Next"),
                      ),
                    ],
                  );
                } else {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            _currentStep--;
                          });
                        },
                        child: const Text(
                          "Back",
                          style: Typohraphy.whiteText,
                        ),
                      ),
                      const Gap(15),
                      ElevatedButton(
                        onPressed: () {
                          final isLastStep = _currentStep == getSteps(widget.isYearly).length - 1;
                          final bool isFormValide = _formKey.currentState!.validate();
                          if (isLastStep) {
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
                          } else {
                            if (isFormValide) {
                              setState(() {
                                _currentStep++;
                              });
                            }
                          }
                        },
                        child: const Text("Confirm"),
                      ),
                    ],
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  List<Step> getSteps(bool isYearly) {
    return <Step>[
      _getFirstStep(),
      _getSecondStep(),
      _getThirdStep(),
    ];
  }

  Step _getThirdStep() {
    return Step(
      state: _currentStep > 2 ? StepState.complete : StepState.indexed,
      isActive: _currentStep >= 2,
      title: const Text(
        'Review',
        style: Typohraphy.whiteText,
      ),
      content: const Column(
        children: [
          Text(
            "You've selected that packet",
            style: Typohraphy.whiteText,
          ),
          Text(
            "Total to play: \$5.0",
            style: Typohraphy.whiteText,
          ),
        ],
      ),
    );
  }

  Step _getSecondStep() {
    return Step(
      state: _currentStep > 1 ? StepState.complete : StepState.indexed,
      isActive: _currentStep >= 1,
      title: const Text(
        'Choose plan',
        style: Typohraphy.whiteText,
      ),
      content: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Plan(
              plan: PlanEntity(tier: SubscriptionTier.basic),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Plan(
              plan: PlanEntity(tier: SubscriptionTier.normal),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Plan(
              plan: PlanEntity(tier: SubscriptionTier.advanced),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Pay annually",
                style: Typohraphy.whiteText,
              ),
              Switch(
                value: widget.isYearly,
                onChanged: (value) {
                  setState(() {
                    widget.isYearly = value;
                  });
                },
              ),
            ],
          ),
          widget.isYearly
              ? const Text(
                  "You have 2 months free",
                  style: Typohraphy.whiteText,
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
        style: Typohraphy.whiteText,
      ),
      content: Column(
        children: [
          const SizedBox(height: 10),
          TextFormField(
            style: Typohraphy.whiteText,
            controller: _fullNameController,
            decoration: const InputDecoration(
              labelText: 'Full name',
              border: OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
              hintStyle: Typohraphy.whiteText,
              labelStyle: Typohraphy.whiteText,
              errorStyle: Typohraphy.errorText,
            ),
            validator: (String? value) {
              return FormValidator.validateFullName(value);
            },
          ),
          const SizedBox(height: 10),
          TextFormField(
            style: Typohraphy.whiteText,
            controller: _emailController,
            validator: (String? value) {
              return FormValidator.validateEmail(value);
            },
            decoration: const InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
              hintStyle: Typohraphy.whiteText,
              labelStyle: Typohraphy.whiteText,
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            style: Typohraphy.whiteText,
            controller: _phoneNumberController,
            decoration: const InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
              labelText: 'Phone number',
              border: OutlineInputBorder(),
              hintStyle: Typohraphy.whiteText,
              labelStyle: Typohraphy.whiteText,
            ),
            validator: (String? value) {
              return FormValidator.validatePhoneNumber(value);
            },
          )
        ],
      ),
    );
  }
}
