import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:flutter_tehnician_assignment_uros/constants/constants.dart';
import 'package:flutter_tehnician_assignment_uros/constants/locale.dart';
import 'package:flutter_tehnician_assignment_uros/domain/entity/tier_entity.dart';
import 'package:flutter_tehnician_assignment_uros/widgets/text_widget.dart';
import 'package:flutter_tehnician_assignment_uros/widgets/tier_widget.dart';

class StepTwo extends StatelessWidget {
  final List<Tier> tiers;
  final Function(Tier) onTierTap;
  final Function(bool) onToggleYearly;
  final bool isTierYearly;

  const StepTwo({
    super.key,
    required this.tiers,
    required this.onTierTap,
    required this.onToggleYearly,
    required this.isTierYearly,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: tiers
              .map((e) => Padding(
                    padding: DimensionConstants.verticalPaddingAll8,
                    child: TierWidget(
                      onTap: (tier) {
                        onTierTap(tier);
                      },
                      tier: e,
                    ),
                  ))
              .toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextWidget(
              AppLocale.monthlyLabelTier.getString(context),
            ),
            Switch(
              value: isTierYearly,
              onChanged: (value) {
                onToggleYearly(value);
              },
            ),
            TextWidget(
              AppLocale.yearlyLabelTier.getString(context),
            ),
          ],
        ),
        isTierYearly
            ? TextWidget(
                AppLocale.twoMonthsFree.getString(context),
              )
            : const SizedBox.shrink()
      ],
    );
  }
}
