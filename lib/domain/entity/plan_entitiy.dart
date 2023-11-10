import 'package:equatable/equatable.dart';

enum SubscriptionTier {
  basic,
  normal,
  advanced,
}

class PlanEntity extends Equatable {
  late String name;
  late double price;

  final SubscriptionTier tier;

  PlanEntity({
    required this.tier,
  }) {
    if (tier == SubscriptionTier.basic) {
      name = 'Basic';
      price = 9.0;
    } else if (tier == SubscriptionTier.normal) {
      name = 'Normal';
      price = 12.0;
    } else {
      name = 'Advanced';
      price = 15.0;
    }
  }

  @override
  List<Object?> get props => [name, tier, price];
}
