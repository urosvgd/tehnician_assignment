import 'package:flutter/material.dart';
import 'package:flutter_tehnician_assignment_uros/widgets/background_widget.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: BackgroundWidget(
          showLogo: true,
        ),
      ),
    );
  }
}
