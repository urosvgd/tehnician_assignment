import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_tehnician_assignment_uros/presentation/form_screen/form/form_validation/value_failure.dart';

class PhoneNumber extends Equatable {
  factory PhoneNumber(String input) => PhoneNumber._(_validatePhoneNumber(input));

  const PhoneNumber._(this.value);

  final Either<ValueFailure, String> value;

  @override
  List<Object?> get props => [value];
}

Either<ValueFailure, String> _validatePhoneNumber(String input) {
  const phoneNumberRegex = r"^(\+\d{1,2}\s?)?1?\-?\.?\s?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}$";
  if (RegExp(phoneNumberRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(
      ValueFailure.invalidPhoneNumber(failedValue: input),
    );
  }
}
