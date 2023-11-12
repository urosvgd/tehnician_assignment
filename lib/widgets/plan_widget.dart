import 'package:flutter/material.dart';
import 'package:flutter_tehnician_assignment_uros/constants/constants.dart';
import 'package:flutter_tehnician_assignment_uros/domain/entity/plan_entitiy.dart';

class PlanWidget extends StatelessWidget {
  final PlanEntity plan;

  const PlanWidget({
    super.key,
    required this.plan,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
              color: Colors.white70,
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
                    plan.name,
                    style: TypographyConstants.whiteText,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    plan.price.toString(),
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
