part of 'form_bloc.dart';

@freezed
class FormScreenEvent with _$FormScreenEvent {
  const factory FormScreenEvent.emailChanged({required String email}) = _EmailChanged;
  const factory FormScreenEvent.fullNameChanged({required String fullName}) = _FullNameChanged;
  const factory FormScreenEvent.phoneNumberChanged({required String phoneNumber}) = _PhoneNumberChanged;
  const factory FormScreenEvent.selectTier({required Tier tier}) = _SelectTier;
  const factory FormScreenEvent.setYearly({required bool isYearly}) = _SetYearly;

  const factory FormScreenEvent.onNextClick() = _OnNextClick;
  const factory FormScreenEvent.onBackClick() = _OnBackClick;
}
