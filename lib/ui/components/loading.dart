import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sua_saude_app/config/colors/color_manager.dart';

Future<void> showLoading(BuildContext context) async {
  await Future.delayed(Duration.zero);
  await showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => SimpleDialog(
      backgroundColor: ColorManager.transparent,
      elevation: 0,
      children: [
        Column(
          children: const [
            CircularProgressIndicator(),
          ],
        )
      ],
    ),
  );
}

void hideLoading(BuildContext context) {
  if (Navigator.canPop(context)) {
    Navigator.of(context).pop();
  }
}
