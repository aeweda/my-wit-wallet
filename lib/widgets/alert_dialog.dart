import 'package:flutter/material.dart';

buildAlertDialog({
  required BuildContext context,
  required List<Widget> actions,
  IconData? icon,
  required String title,
  required Widget content,
}) {
  final theme = Theme.of(context);
  return Future.delayed(
      Duration.zero,
      () => showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              title: Text(
                title,
                style: theme.textTheme.displayMedium,
              ),
              backgroundColor: theme.colorScheme.background,
              icon: Icon(icon, size: 24),
              content: content,
              actions: actions,
            ),
          ));
}
