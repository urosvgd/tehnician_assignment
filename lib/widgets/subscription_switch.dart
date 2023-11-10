import 'package:flutter/material.dart';

class SubscriptionSwitch extends StatefulWidget {
  final Function(bool) onChanged;
  bool _isYearly = false;

  SubscriptionSwitch({super.key, required this.onChanged});

  bool get isYearly => _isYearly;

  @override
  State<SubscriptionSwitch> createState() => _SubscriptionSwitchState();
}

class _SubscriptionSwitchState extends State<SubscriptionSwitch> {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: widget._isYearly,
      activeColor: Colors.red,
      onChanged: (bool value) {
        widget.onChanged(value);

        setState(() {
          widget._isYearly = value;
        });
      },
    );
  }
}
