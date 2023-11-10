import 'package:flutter/material.dart';
import 'package:flutter_tehnician_assignment_uros/domain/entity/plan_entitiy.dart';
import 'package:flutter_tehnician_assignment_uros/typography.dart';

class Plan extends StatelessWidget {
  final PlanEntity plan;

  const Plan({
    super.key,
    required this.plan,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
            Color(0xff3B7C99),
            Color(0xff4395B2),
            Color(0xff835E8A),
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
                style: Typohraphy.whiteText,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                plan.price.toString(),
                style: Typohraphy.whiteText,
              ),
            )
          ],
        ),
      ),
    );
  }
}
