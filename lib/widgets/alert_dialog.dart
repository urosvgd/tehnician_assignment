import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

Future<void> showAlertDialog(context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Confirmation dialog'),
        content: const SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text("After confirming you're going to enjoy tier!"),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('No'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: const Text('Yes'),
            onPressed: () {
              context.router.pushNamed('/');
            },
          ),
        ],
      );
    },
  );
}
