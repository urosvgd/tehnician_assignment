import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:flutter_tehnician_assignment_uros/constants/locale.dart';

Future<void> showAlertDialog(context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(AppLocale.confirmationDialogTitle.getString(context)),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(AppLocale.confirmationDialogBody.getString(context)),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: Text(AppLocale.declineButtonText.getString(context)),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: Text(AppLocale.confirmButtonText.getString(context)),
            onPressed: () {
              context.router.pushNamed('/');
            },
          ),
        ],
      );
    },
  );
}
