import 'package:flutter/material.dart';
import 'package:flutter_tehnician_assignment_uros/constants/constants.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final bool isNumberKeyboard;
  final Function(String?) validator;
  final Function(String) onChange;

  const TextFormFieldWidget({
    super.key,
    required this.labelText,
    required this.controller,
    required this.validator,
    required this.onChange,
    required this.isNumberKeyboard,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: isNumberKeyboard ? TextInputType.phone : TextInputType.text,
      style: TypographyConstants.whiteText,
      controller: controller,
      onChanged: (String value) {
        onChange(value);
      },
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
