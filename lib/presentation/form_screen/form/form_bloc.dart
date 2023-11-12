import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tehnician_assignment_uros/domain/entity/tier_entity.dart';
import 'package:flutter_tehnician_assignment_uros/presentation/form_screen/form/form_validation/email_address.dart';
import 'package:flutter_tehnician_assignment_uros/presentation/form_screen/form/form_validation/full_name.dart';
import 'package:flutter_tehnician_assignment_uros/presentation/form_screen/form/form_validation/phone_number.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_state.dart';
part 'form_event.dart';
part 'form_bloc.freezed.dart';

class FormScreenBloc extends Bloc<FormScreenEvent, FormScreenState> {
  FormScreenBloc() : super(FormScreenState.initial()) {
    on<FormScreenEvent>(
      (event, emit) async {
        await event.when<FutureOr<void>>(
          emailChanged: (email) => _onEmailChanged(emit, email),
          fullNameChanged: (fullName) => _onFullNameChanged(emit, fullName),
          phoneNumberChanged: (phoneNumber) => _phoneNumberChanged(emit, phoneNumber),
          onNextClick: () => _onNextClick(emit),
          onBackClick: () => _onBackClick(emit),
          selectTier: (tier) => _selectTier(emit, tier),
          setYearly: (isYearly) => _setYearlyTier(emit, isYearly),
        );
      },
    );
  }

  FutureOr<void> _setYearlyTier(Emitter<FormScreenState> emit, bool isTierYeary) {
    emit(state.copyWith(isTierYearly: isTierYeary));
  }

  FutureOr<void> _onEmailChanged(Emitter<FormScreenState> emit, String email) {
    emit(state.copyWith(emailAddress: EmailAddress(email)));
  }

  FutureOr<void> _onFullNameChanged(Emitter<FormScreenState> emit, String fullName) {
    emit(state.copyWith(fullName: FullName(fullName)));
  }

  FutureOr<void> _phoneNumberChanged(Emitter<FormScreenState> emit, String phoneNumber) {
    emit(state.copyWith(phoneNumber: PhoneNumber(phoneNumber)));
  }

  FutureOr<void> _onNextClick(Emitter<FormScreenState> emit) async {
    final isEmailValid = state.emailAddress.value.isRight();
    final isFullNameValid = state.fullName.value.isRight();
    final isPhoneNumberValid = state.phoneNumber.value.isRight();

    if (isEmailValid && isFullNameValid && isPhoneNumberValid) {
      emit(
        state.copyWith(
          currentFormStep: state.currentFormStep + 1,
        ),
      );
    }
  }

  FutureOr<void> _onBackClick(Emitter<FormScreenState> emit) async {
    emit(state.copyWith(currentFormStep: state.currentFormStep - 1));
  }

  FutureOr<void> _selectTier(Emitter<FormScreenState> emit, Tier tier) {
    List<Tier> tiers = state.tiers;
    late Tier selectedTier;

    for (int i = 0; i < tiers.length; i++) {
      tiers[i].isSelected = false;
      if (tiers[i] == tier) {
        tiers[i].isSelected = !tiers[i].isSelected;
        selectedTier = tiers[i];
      }
    }
    emit(state.copyWith(tiers: [...tiers], selectedTier: selectedTier));
  }
}
