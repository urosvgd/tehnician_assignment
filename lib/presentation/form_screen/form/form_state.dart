part of 'form_bloc.dart';

@freezed
class FormScreenState with _$FormScreenState {
  const factory FormScreenState({
    required EmailAddress emailAddress,
    required FullName fullName,
    required PhoneNumber phoneNumber,
    required List<Tier> tiers,
    required Tier selectedTier,
    required DateTime date,
    @Default(false) bool isTierYearly,
    @Default(0) int currentFormStep,
  }) = _FormScreenState;

  factory FormScreenState.initial() => FormScreenState(
      emailAddress: EmailAddress(''),
      fullName: FullName(''),
      phoneNumber: PhoneNumber(''),
      date: DateTime.now(),
      tiers: [
        BasicTier(),
        NormalTier(),
        AdvancedTier(),
      ],
      selectedTier: Tier(
        name: '',
        price: 0,
        isYearly: false,
        isSelected: false,
      ));
}
