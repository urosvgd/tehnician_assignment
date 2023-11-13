import 'package:flutter/material.dart';
import 'package:flutter_tehnician_assignment_uros/constants/constants.dart';
import 'package:flutter_tehnician_assignment_uros/responsive.dart';
import 'package:flutter_tehnician_assignment_uros/widgets/background_widget.dart';
import 'package:flutter_tehnician_assignment_uros/widgets/stepper/stepper_widget.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundWidget(
            showLogo: false,
          ),
          Center(
            child: Container(
              width: Responsive.isDesktop(context) || Responsive.isTablet(context) ? 400 : MediaQuery.of(context).size.width,
              margin: DimensionConstants.horizontalAndVertical30,
              decoration: BoxDecoration(
                borderRadius: DimensionConstants.standardBorderRadius,
                color: ColorConstants.grey.withOpacity(0.7),
              ),
              child: Form(
                key: _formKey,
                child: StepperWidget(
                  formKey: _formKey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
