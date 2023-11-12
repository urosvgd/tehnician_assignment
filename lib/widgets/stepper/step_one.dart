import 'package:flutter/material.dart';
import 'package:flutter_tehnician_assignment_uros/widgets/textformfield_widget.dart';

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
        const SizedBox(height: 10),
        TextFormFieldWidget(
          isNumberKeyboard: false,
          controller: fullNameController,
          onChange: (value) {
            widget.onFullNameChange(value);
          },
          labelText: 'Full name',
          validator: (_) {
            return widget.onFullNameValidator(_);
          },
        ),
        const SizedBox(height: 10),
        TextFormFieldWidget(
          isNumberKeyboard: false,
          controller: emailController,
          labelText: 'Email',
          onChange: (value) {
            widget.onEmailChange(value);
          },
          validator: (String? value) {
            return widget.onEmailValidator(value);
          },
        ),
        const SizedBox(height: 10),
        TextFormFieldWidget(
          isNumberKeyboard: true,
          controller: phoneNumberController,
          labelText: 'Phone number',
          onChange: (value) {
            widget.onPhoneNumberChange(value);
          },
          validator: (String? value) {
            return widget.onPhoneNumberValidator(value);
          },
        ),
      ],
    );
  }
}
