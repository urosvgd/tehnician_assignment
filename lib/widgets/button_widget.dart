import 'package:flutter/material.dart';
import 'package:flutter_tehnician_assignment_uros/constants/constants.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final bool showArrow;
  final bool isPrimary;
  final IconData icon;
  final Function onPressed;
  final Widget? rightPartOfButton;
  final Widget? leftPartOfButton;

  const ButtonWidget({
    super.key,
    required this.text,
    required this.onPressed,
    required this.icon,
    this.leftPartOfButton,
    this.isPrimary = true,
    this.rightPartOfButton,
    this.showArrow = false,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          onPressed();
        },
        child: Container(
          width: 400,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          decoration: BoxDecoration(
            color: isPrimary ? ColorConstants.primaryColor : Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 18.0),
                      child: Icon(
                        icon,
                        color: isPrimary ? Colors.white : ColorConstants.primaryColor,
                      ),
                    ),
                    Text(
                      text,
                      style: TextStyle(
                        color: isPrimary ? Colors.white : ColorConstants.primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              showArrow
                  ? const Icon(
                      Icons.arrow_right,
                      color: Colors.white,
                    )
                  : const SizedBox.shrink()
            ],
          ),
        ),
      ),
    );
  }
}
