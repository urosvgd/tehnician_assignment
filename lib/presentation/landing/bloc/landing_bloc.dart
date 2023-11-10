import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'landing_state.dart';
part 'landing_event.dart';
part 'landing_bloc.freezed.dart';

class LandingBloc extends Bloc<LandingEvent, LandingState> {
  LandingBloc() : super(const LandingState.initial(isMultiFormOpen: false)) {
    on<_Started>(_initial);
  }

  FutureOr<void> _initial(LandingEvent event, Emitter<LandingState> emit) async {
    emit(const LandingState.initial(isMultiFormOpen: false));
  }
}
