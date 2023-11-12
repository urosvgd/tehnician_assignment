// ignore_for_file: must_be_immutable

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tehnician_assignment_uros/constants/constants.dart';
import 'package:flutter_tehnician_assignment_uros/presentation/form_screen/form/form_bloc.dart';
import 'package:flutter_tehnician_assignment_uros/domain/entity/tier_entity.dart';
import 'package:flutter_tehnician_assignment_uros/widgets/alert_dialog.dart';
import 'package:flutter_tehnician_assignment_uros/widgets/step_buttons.dart';
import 'package:flutter_tehnician_assignment_uros/widgets/stepper/step_one.dart';
import 'package:flutter_tehnician_assignment_uros/widgets/stepper/step_two.dart';

import 'package:flutter_tehnician_assignment_uros/widgets/summary_widget.dart';

class StepperWidget extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  const StepperWidget({super.key, required this.formKey});

  @override
  State<StepperWidget> createState() => _StepperWidgetState();
}

class _StepperWidgetState extends State<StepperWidget> {
  final int step1 = 0;
  final int step2 = 1;
  final int step3 = 2;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FormScreenBloc(),
      child: BlocBuilder<FormScreenBloc, FormScreenState>(
        builder: (BuildContext context, FormScreenState state) {
          return Stepper(
            type: StepperType.vertical,
            physics: const ScrollPhysics(),
            currentStep: context.read<FormScreenBloc>().state.currentFormStep,
            steps: getSteps(context),
            controlsBuilder: _controlBuilder,
          );
        },
      ),
    );
  }

  List<Step> getSteps(BuildContext context) {
    return <Step>[
      _getFirstStep(context),
      _getSecondStep(context),
      _getThirdStep(context),
    ];
  }

  Widget _controlBuilder(BuildContext context, ControlsDetails details) {
    final bloc = context.read<FormScreenBloc>();
    final currentStepFromBloc = context.read<FormScreenBloc>().state.currentFormStep;
    if (details.currentStep == step1) {
      return StepButtons(
        currentStep: currentStepFromBloc,
        onNext: () {
          final bool isFormValid = widget.formKey.currentState!.validate();
          if (isFormValid) {
            bloc.add(const FormScreenEvent.onNextClick());
          }
        },
        onBack: () {
          if (currentStepFromBloc > step1) {
            bloc.add(const FormScreenEvent.onBackClick());
          } else {
            context.router.pop();
          }
        },
      );
    } else if (details.currentStep == step2) {
      return StepButtons(
        currentStep: currentStepFromBloc,
        onNext: () {
          final bool isValid = widget.formKey.currentState!.validate();
          if (isValid) {
            bloc.add(const FormScreenEvent.onNextClick());
          }
        },
        onBack: () {
          bloc.add(const FormScreenEvent.onBackClick());
        },
      );
    } else {
      return StepButtons(
        currentStep: currentStepFromBloc,
        onNext: () {
          final isLastStep = currentStepFromBloc == getSteps(context).length - 1;
          final bool isFormValide = widget.formKey.currentState!.validate();
          if (isLastStep && isFormValide) {
            showAlertDialog(context);
          }
        },
        onBack: () {
          bloc.add(const FormScreenEvent.onBackClick());
        },
      );
    }
  }

  Step _getThirdStep(BuildContext context) {
    final bloc = context.read<FormScreenBloc>();
    final currentStepFromBloc = bloc.state.currentFormStep;
    return Step(
      state: currentStepFromBloc > 2 ? StepState.complete : StepState.indexed,
      isActive: currentStepFromBloc >= 2,
      title: const Text(
        'Summary',
        style: TypographyConstants.whiteText,
      ),
      content: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(8),
        ),
        child: SummaryWidget(
          isYearly: bloc.state.isTierYearly,
          tier: bloc.state.selectedTier,
        ),
      ),
    );
  }

  Step _getSecondStep(BuildContext context) {
    final bloc = context.read<FormScreenBloc>();
    final currentStepFromBloc = bloc.state.currentFormStep;
    List<Tier> tiers = bloc.state.tiers;
    return Step(
      state: currentStepFromBloc > step2 ? StepState.complete : StepState.indexed,
      isActive: currentStepFromBloc >= step2,
      title: const Text(
        'Choose tier',
        style: TypographyConstants.whiteText,
      ),
      content: StepTwo(
        tiers: tiers,
        onTierTap: (tier) {
          bloc.add(FormScreenEvent.selectTier(tier: tier));
        },
        onToggleYearly: (value) {
          bloc.add(FormScreenEvent.setYearly(isYearly: value));
        },
        isTierYearly: bloc.state.isTierYearly,
      ),
    );
  }

  Step _getFirstStep(BuildContext context) {
    final bloc = context.read<FormScreenBloc>();

    final currentStepFromBloc = bloc.state.currentFormStep;

    return Step(
      state: currentStepFromBloc > 0 ? StepState.complete : StepState.indexed,
      isActive: currentStepFromBloc >= 0,
      title: const Text(
        'Personal informations',
        style: TypographyConstants.whiteText,
      ),
      content: StepOne(
        onFullNameChange: (value) {
          bloc.add(FormScreenEvent.fullNameChanged(fullName: value));
        },
        onFullNameValidator: (value) {
          return bloc.state.fullName.value.fold<String?>(
            (f) => f.maybeMap<String?>(
              invalidFullName: (_) => 'Invalid full name',
              orElse: () => null,
            ),
            (_) => null,
          );
        },
        onEmailChange: (value) {
          bloc.add(FormScreenEvent.emailChanged(email: value));
        },
        onEmailValidator: (value) {
          return bloc.state.emailAddress.value.fold<String?>(
            (f) => f.maybeMap<String?>(
              invalidEmail: (_) => 'Invalid email',
              orElse: () => null,
            ),
            (_) => null,
          );
        },
        onPhoneNumberChange: (value) {
          bloc.add(FormScreenEvent.phoneNumberChanged(phoneNumber: value));
        },
        onPhoneNumberValidator: (value) {
          return bloc.state.phoneNumber.value.fold<String?>(
            (f) => f.maybeMap<String?>(
              invalidPhoneNumber: (_) => 'Invalid phone number',
              orElse: () => null,
            ),
            (_) => null,
          );
        },
      ),
    );
  }
}
