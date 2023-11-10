import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tehnician_assignment_uros/presentation/landing/bloc/landing_bloc.dart';
import 'package:flutter_tehnician_assignment_uros/widgets/background_widget.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocProvider(
          create: (context) => LandingBloc()..add(const LandingEvent.started()),
          child: BlocConsumer<LandingBloc, LandingState>(
            buildWhen: (previous, current) => previous != current,
            listener: _blocListener,
            builder: _blocBuilder,
          ),
        ),
      ),
    );
  }

  Widget _blocBuilder(BuildContext context, LandingState state) {
    return state.when(
      loadInProgress: () {
        return const SizedBox.shrink();
      },
      initial: (state) {
        return const LandingScreenView();
      },
    );
  }

  void _blocListener(BuildContext context, LandingState state) {}
}

class LandingScreenView extends StatelessWidget {
  const LandingScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return const BackgroundWidget(
      showLogo: true,
    );
  }
}
