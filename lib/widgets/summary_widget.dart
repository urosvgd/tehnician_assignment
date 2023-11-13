import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:flutter_tehnician_assignment_uros/constants/constants.dart';
import 'package:flutter_tehnician_assignment_uros/constants/locale.dart';
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
    String tierName = '';
    if (tier.name == 'basic') {
      tierName = AppLocale.basicTier.getString(context);
    } else if (tier.name == 'normal') {
      tierName = AppLocale.normalTier.getString(context);
    } else {
      tierName = AppLocale.advancedTier.getString(context);
    }
    return Column(
      children: [
        Padding(
          padding: DimensionConstants.verticalPadding8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWidget.scaledDown(
                AppLocale.fullName.getString(context),
              ),
              TextWidget.scaledDown(
                context.read<FormScreenBloc>().state.fullName.value.fold((l) => '', (r) => r),
              ),
            ],
          ),
        ),
        Padding(
          padding: DimensionConstants.verticalPadding8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWidget.scaledDown(
                AppLocale.email.getString(context),
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
              TextWidget.scaledDown(
                AppLocale.phoneNumber.getString(context),
              ),
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
              TextWidget.scaledDown(
                AppLocale.plan.getString(context),
              ),
              TextWidget.scaledDown(tierName),
            ],
          ),
        ),
        Padding(
          padding: DimensionConstants.verticalPadding4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWidget.scaledDown(
                AppLocale.billingSchedule.getString(context),
              ),
              TextWidget.scaledDown(
                isYearly ? AppLocale.yearlyLabelTier.getString(context) : AppLocale.monthlyLabelTier.getString(context),
              ),
            ],
          ),
        ),
        Padding(
          padding: DimensionConstants.verticalPadding4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWidget.scaledDown(
                AppLocale.discount.getString(context),
              ),
              TextWidget.scaledDown(
                isYearly ? AppLocale.discountTwoMonths.getString(context) : AppLocale.noDiscount.getString(context),
              ),
            ],
          ),
        ),
        Padding(
          padding: DimensionConstants.verticalPadding4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWidget.scaledDown(
                AppLocale.total.getString(context),
              ),
              TextWidget.scaledDown("€${tier.price.toString()}"),
            ],
          ),
        ),
      ],
    );
  }
}
