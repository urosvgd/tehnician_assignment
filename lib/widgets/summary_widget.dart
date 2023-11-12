import 'package:flutter/material.dart';
import 'package:flutter_tehnician_assignment_uros/constants/constants.dart';

class SummaryWidget extends StatelessWidget {
  const SummaryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Plan:",
                style: TypographyConstants.whiteText,
              ),
              Text(
                "Normal",
                style: TypographyConstants.whiteText,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 4.0, bottom: 4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Billing schedule:",
                style: TypographyConstants.whiteText,
              ),
              Text(
                "Yearly",
                style: TypographyConstants.whiteText,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 4.0, bottom: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Discount:",
                style: TypographyConstants.whiteText,
              ),
              Text(
                "2 months",
                style: TypographyConstants.whiteText,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 4.0, bottom: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total:",
                style: TypographyConstants.whiteText,
              ),
              Text(
                "9euros",
                style: TypographyConstants.whiteText,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
