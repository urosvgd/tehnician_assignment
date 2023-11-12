import 'package:flutter/material.dart';

class PlanSelectionWidget extends StatefulWidget {
  const PlanSelectionWidget({super.key});

  @override
  State<PlanSelectionWidget> createState() => _PlanSelectionWidgetState();
}

class _PlanSelectionWidgetState extends State<PlanSelectionWidget> {
  List<bool> flags = [true, false, false];
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextButton(
        onPressed: () {
          setState(() {
            _setFlags(0);
          });
        },
        child: Container(
          color: flags[0] ? Colors.amber : Colors.white,
          child: const Text(" 1"),
        ),
      ),
      TextButton(
        onPressed: () {
          setState(() {
            _setFlags(1);
          });
        },
        child: Container(
          color: flags[1] ? Colors.amber : Colors.white,
          child: const Text(" 2"),
        ),
      ),
      TextButton(
        onPressed: () {
          setState(() {
            _setFlags(2);
          });
        },
        child: Container(
          color: flags[2] ? Colors.amber : Colors.white,
          child: const Text(" 3"),
        ),
      ),
    ]);
  }

  void _setFlags(int index) {
    for (var i = 0; i < flags.length; i++) {
      flags[i] = false;
    }
    flags[index] = true;
  }
}
