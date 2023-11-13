import 'package:flutter/material.dart';
import 'package:flutter_tehnician_assignment_uros/constants/constants.dart';
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
            const TextWidget(
              "Monthly",
            ),
            Switch(
              value: isTierYearly,
              onChanged: (value) {
                onToggleYearly(value);
              },
            ),
            const TextWidget(
              "Yearly",
            ),
          ],
        ),
        isTierYearly
            ? const TextWidget(
                "You have 2 months free",
              )
            : const SizedBox.shrink()
      ],
    );
  }
}
