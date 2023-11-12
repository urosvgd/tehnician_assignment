import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_tehnician_assignment_uros/presentation/form_screen/form/form_validation/value_failure.dart';

class FullName extends Equatable {
  factory FullName(String input) => FullName._(_validateFullName(input));

  const FullName._(this.value);

  final Either<ValueFailure, String> value;

  @override
  List<Object?> get props => [value];
}

Either<ValueFailure, String> _validateFullName(String input) {
  if (input.length >= 3 && input.contains(' ')) {
    return right(input);
  } else {
    return left(
      ValueFailure.invalidFullName(failedValue: input),
    );
  }
}
