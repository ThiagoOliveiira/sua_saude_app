import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../signup.dart';

class NameInput extends StatelessWidget {
  const NameInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final presenter = Get.find<FirebaseAuthPresenter>();

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Obx(
          () => Expanded(
            child: TextField(
              controller: presenter.firstNameEditionController.value,
              decoration: const InputDecoration(filled: true, labelText: 'Primeiro Nome'),
            ),
          ),
        ),
        const SizedBox(width: 5),
        Obx(
          () => Expanded(
            child: TextField(
              controller: presenter.passwordEditionController.value,
              decoration: const InputDecoration(filled: true, labelText: 'Último Nome'),
            ),
          ),
        ),
      ],
    );
  }
}
