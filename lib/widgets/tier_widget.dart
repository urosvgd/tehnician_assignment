import 'package:flutter/material.dart';
import 'package:flutter_tehnician_assignment_uros/constants/constants.dart';
import 'package:flutter_tehnician_assignment_uros/domain/entity/tier_entity.dart';

class TierWidget extends StatelessWidget {
  final Tier tier;
  final Function(Tier) onTap;

  const TierWidget({
    super.key,
    required this.tier,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white.withAlpha(50),
      child: InkWell(
        onTap: () {
          onTap(tier);
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
              color: tier.isSelected ? Colors.amber : Colors.white70,
              width: 1.0,
            ),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                ColorConstants.gradientColor1,
                ColorConstants.gradientColor2,
                ColorConstants.gradientColor3,
              ],
            ),
          ),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    tier.name,
                    style: TypographyConstants.whiteText,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "€${tier.price.toString()}",
                    style: TypographyConstants.whiteText,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}