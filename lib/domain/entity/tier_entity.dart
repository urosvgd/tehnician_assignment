// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

class Tier extends Equatable {
  final String name;
  final double price;
  bool isYearly;
  bool isSelected;

  Tier({
    required this.name,
    required this.price,
    required this.isYearly,
    required this.isSelected,
  });

  @override
  List<Object?> get props => [name, price, isYearly, isSelected];
}

class BasicTier extends Tier {
  BasicTier({super.name = 'Basic', super.price = 9.0, super.isYearly = false, super.isSelected = false});
}

class NormalTier extends Tier {
  NormalTier({super.name = 'Normal', super.price = 12.0, super.isYearly = false, super.isSelected = false});
}

class AdvancedTier extends Tier {
  AdvancedTier({super.name = 'Advanced', super.price = 15.0, super.isYearly = false, super.isSelected = false});
}
