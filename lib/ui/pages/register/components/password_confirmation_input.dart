import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../signup.dart';

class PasswordConfirmationInput extends StatelessWidget {
  const PasswordConfirmationInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final presenter = Get.find<FirebaseAuthPresenter>();

    return Obx(
      () => TextFormField(
        controller: presenter.passwordConfirmationEditionController.value,
        keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(
          filled: true,
          labelText: 'Confirme sua senha',
          prefixIcon: const Icon(Icons.lock),
          suffixIcon: IconButton(
            icon: const Icon(Icons.remove_red_eye),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
