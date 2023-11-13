import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tehnician_assignment_uros/constants/constants.dart';
import 'package:flutter_tehnician_assignment_uros/domain/entity/tier_entity.dart';
import 'package:flutter_tehnician_assignment_uros/presentation/form_screen/form/form_bloc.dart';
import 'package:flutter_tehnician_assignment_uros/widgets/text_widget.dart';

class SummaryWidget extends StatelessWidget {
  final Tier tier;
  final bool isYearly;

  const SummaryWidget({
    super.key,
    required this.tier,
    required this.isYearly,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: DimensionConstants.verticalPadding8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Full Name:",
                style: TypographyConstants.whiteText,
                maxLines: 3,
                textScaleFactor: 0.7,
              ),
              Text(
                context.read<FormScreenBloc>().state.fullName.value.fold((l) => '', (r) => r),
                style: TypographyConstants.whiteText,
                maxLines: 3,
                textScaleFactor: 0.7,
              ),
            ],
          ),
        ),
        Padding(
          padding: DimensionConstants.verticalPadding8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const TextWidget.scaledDown(
                "Email:",
              ),
              TextWidget.scaledDown(context.read<FormScreenBloc>().state.emailAddress.value.fold((l) => '', (r) => r)),
            ],
          ),
        ),
        Padding(
          padding: DimensionConstants.verticalPadding8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const TextWidget.scaledDown("Phone number:"),
              TextWidget.scaledDown(
                context.read<FormScreenBloc>().state.phoneNumber.value.fold((l) => '', (r) => r),
              ),
            ],
          ),
        ),
        Padding(
          padding: DimensionConstants.verticalPadding8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const TextWidget.scaledDown("Plan:"),
              TextWidget.scaledDown(tier.name),
            ],
          ),
        ),
        Padding(
          padding: DimensionConstants.verticalPadding4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const TextWidget.scaledDown("Billing schedule:"),
              TextWidget.scaledDown(isYearly ? 'Yearly' : 'Monthly'),
            ],
          ),
        ),
        Padding(
          padding: DimensionConstants.verticalPadding4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const TextWidget.scaledDown("Discount:"),
              TextWidget.scaledDown(isYearly ? '2 months discount' : 'No discount'),
            ],
          ),
        ),
        Padding(
          padding: DimensionConstants.verticalPadding4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const TextWidget.scaledDown("Total:"),
              TextWidget.scaledDown("€${tier.price.toString()}"),
            ],
          ),
        ),
      ],
    );
  }
}
