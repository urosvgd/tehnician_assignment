part of 'landing_bloc.dart';

@freezed
class LandingState with _$LandingState {
  const factory LandingState.initial({required bool isMultiFormOpen}) = _Initial;
  const factory LandingState.loadInProgress() = _LoadInProgress;
}
