import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../helpers/errors/errors.dart';

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
              decoration: InputDecoration(
                filled: true,
                labelText: 'Primeiro Nome',
                errorText: presenter.firstNameError.value?.description,
              ),
              onChanged: presenter.validateFirstName,
            ),
          ),
        ),
        const SizedBox(width: 5),
        Obx(
          () => Expanded(
            child: TextField(
              controller: presenter.lastNameEditionController.value,
              decoration: InputDecoration(
                filled: true,
                labelText: 'Último Nome',
                errorText: presenter.lastNameError.value?.description,
              ),
              onChanged: presenter.validateLastName,
            ),
          ),
        ),
      ],
    );
  }
}
