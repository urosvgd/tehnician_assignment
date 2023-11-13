import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:flutter_tehnician_assignment_uros/constants/constants.dart';
import 'package:flutter_tehnician_assignment_uros/constants/locale.dart';
import 'package:flutter_tehnician_assignment_uros/widgets/text_form_field_widget.dart';

class StepOne extends StatefulWidget {
  final Function(String) onFullNameChange;
  final Function(String) onEmailChange;
  final Function(String) onPhoneNumberChange;

  final Function(String?) onFullNameValidator;
  final Function(String?) onEmailValidator;
  final Function(String?) onPhoneNumberValidator;

  const StepOne({
    super.key,
    required this.onFullNameChange,
    required this.onEmailChange,
    required this.onPhoneNumberChange,
    required this.onFullNameValidator,
    required this.onEmailValidator,
    required this.onPhoneNumberValidator,
  });

  @override
  State<StepOne> createState() => _StepOneState();
}

class _StepOneState extends State<StepOne> {
  final TextEditingController fullNameController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: DimensionConstants.verticalPadding8,
          child: TextFormFieldWidget(
            isNumberKeyboard: false,
            controller: fullNameController,
            onChange: (value) {
              widget.onFullNameChange(value);
            },
            labelText: AppLocale.fullName.getString(context),
            validator: (_) {
              return widget.onFullNameValidator(_);
            },
          ),
        ),
        TextFormFieldWidget(
          isNumberKeyboard: false,
          controller: emailController,
          labelText: AppLocale.email.getString(context),
          onChange: (value) {
            widget.onEmailChange(value);
          },
          validator: (String? value) {
            return widget.onEmailValidator(value);
          },
        ),
        Padding(
          padding: DimensionConstants.verticalPadding8,
          child: TextFormFieldWidget(
            isNumberKeyboard: true,
            controller: phoneNumberController,
            labelText: AppLocale.phoneNumber.getString(context),
            onChange: (value) {
              widget.onPhoneNumberChange(value);
            },
            validator: (String? value) {
              return widget.onPhoneNumberValidator(value);
            },
          ),
        ),
      ],
    );
  }
}
