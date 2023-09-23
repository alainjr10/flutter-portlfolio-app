import 'package:dyce_portfolio/app/utils/constants.dart';
import 'package:flutter/material.dart';

Widget buildScrollableButton(BuildContext context, String title, GlobalKey key,
    {bool popBack = true}) {
  return TextButton(
    onPressed: () {
      Scrollable.ensureVisible(
        key.currentContext!,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
      popBack ? Navigator.pop(context) : null;
    },
    style: kHeadingTextButtonStyle,
    child: Text(title),
  );
}
