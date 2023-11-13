import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:flutter_tehnician_assignment_uros/constants/constants.dart';
import 'package:flutter_tehnician_assignment_uros/constants/locale.dart';
import 'package:flutter_tehnician_assignment_uros/domain/entity/tier_entity.dart';
import 'package:flutter_tehnician_assignment_uros/widgets/text_widget.dart';

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
    String tierName = '';
    if (tier.name == 'basic') {
      tierName = AppLocale.basicTier.getString(context);
    } else if (tier.name == 'normal') {
      tierName = AppLocale.normalTier.getString(context);
    } else {
      tierName = AppLocale.advancedTier.getString(context);
    }
    return Material(
      color: Colors.white.withAlpha(50),
      child: InkWell(
        onTap: () {
          onTap(tier);
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: DimensionConstants.standardBorderRadius,
            border: Border.all(
              color: tier.isSelected ? ColorConstants.cardSelected : ColorConstants.white70,
              width: 1.0,
            ),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: ColorConstants.gradientColors,
            ),
          ),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: DimensionConstants.verticalPaddingAll8,
                  child: Text(
                    tierName,
                    style: TypographyConstants.whiteText,
                  ),
                ),
                Padding(
                  padding: DimensionConstants.verticalPaddingAll8,
                  child: TextWidget(
                    "€${tier.price.toString()}",
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
