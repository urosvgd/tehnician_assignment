import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tehnician_assignment_uros/constants/constants.dart';
import 'package:flutter_tehnician_assignment_uros/domain/entity/tier_entity.dart';
import 'package:flutter_tehnician_assignment_uros/presentation/form_screen/form/form_bloc.dart';

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
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Full Name:",
                style: TypographyConstants.whiteText,
                maxLines: 3,
              ),
              Text(
                context.read<FormScreenBloc>().state.fullName.value.fold((l) => '', (r) => r),
                style: TypographyConstants.whiteText,
                maxLines: 3,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Expanded(
                child: Text(
                  "Email:",
                  style: TypographyConstants.whiteText,
                  maxLines: 3,
                ),
              ),
              Expanded(
                child: Text(
                  context.read<FormScreenBloc>().state.emailAddress.value.fold((l) => '', (r) => r),
                  style: TypographyConstants.whiteText,
                  maxLines: 3,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Expanded(
                child: Text(
                  "Phone number:",
                  style: TypographyConstants.whiteText,
                ),
              ),
              Expanded(
                child: Text(
                  context.read<FormScreenBloc>().state.phoneNumber.value.fold((l) => '', (r) => r),
                  style: TypographyConstants.whiteText,
                  maxLines: 3,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Plan:",
                style: TypographyConstants.whiteText,
                maxLines: 3,
              ),
              Text(
                tier.name,
                style: TypographyConstants.whiteText,
                maxLines: 3,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Billing schedule:",
                style: TypographyConstants.whiteText,
              ),
              Text(
                isYearly ? 'Yearly' : 'Monthly',
                style: TypographyConstants.whiteText,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4.0, bottom: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Discount:",
                style: TypographyConstants.whiteText,
              ),
              Text(
                isYearly ? '2 months discount' : 'No discount',
                style: TypographyConstants.whiteText,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4.0, bottom: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Total:",
                style: TypographyConstants.whiteText,
              ),
              Text(
                "€${tier.price.toString()}",
                style: TypographyConstants.whiteText,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
