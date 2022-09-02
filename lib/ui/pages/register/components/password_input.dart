import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../signup.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final presenter = Get.find<FirebaseAuthPresenter>();

    return Obx(
      () => TextFormField(
        controller: presenter.passwordEditionController.value,
        keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(
          filled: true,
          labelText: 'Senha',
          prefixIcon: const Icon(Icons.lock_outline),
          suffixIcon: IconButton(
            icon: const Icon(Icons.remove_red_eye),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
