import 'package:flutter/material.dart';
import 'package:flutter_tehnician_assignment_uros/constants/constants.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final Function(String?) validator;
  const TextFormFieldWidget({
    super.key,
    required this.labelText,
    required this.controller,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TypographyConstants.whiteText,
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        border: const OutlineInputBorder(),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        hintStyle: TypographyConstants.whiteText,
        labelStyle: TypographyConstants.whiteText,
        errorStyle: TypographyConstants.errorText,
      ),
      validator: (String? value) {
        return validator(value);
      },
    );
  }
}
