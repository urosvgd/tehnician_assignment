import 'package:flutter/material.dart';
import 'package:flutter_tehnician_assignment_uros/constants/constants.dart';
import 'package:flutter_tehnician_assignment_uros/domain/entity/tier_entity.dart';
import 'package:flutter_tehnician_assignment_uros/widgets/tier_widget.dart';

class StepTwo extends StatelessWidget {
  final List<Tier> tiers;
  final Function(Tier) onTierTap;
  final Function(bool) onToggleYearly;
  final bool isTierYearly;
  const StepTwo({super.key, required this.tiers, required this.onTierTap, required this.onToggleYearly, required this.isTierYearly});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: tiers
              .map((e) => Padding(
                    padding: const EdgeInsets.all(8.0),
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
            const Text(
              "Monthly",
              style: TypographyConstants.whiteText,
            ),
            Switch(
              value: isTierYearly,
              onChanged: (value) {
                onToggleYearly(value);
              },
            ),
            const Text(
              "Yearly",
              style: TypographyConstants.whiteText,
            ),
          ],
        ),
        isTierYearly
            ? const Text(
                "You have 2 months free",
                style: TypographyConstants.whiteText,
              )
            : const SizedBox.shrink()
      ],
    );
  }
}
