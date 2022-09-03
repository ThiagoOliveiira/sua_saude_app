import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sua_saude_app/config/colors/color_manager.dart';

import '../../../helpers/errors/errors.dart';

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
              icon: Icon(
                Icons.remove_red_eye,
                color: presenter.obscurePassword.value
                    ? ColorManager.grey
                    : ColorManager.blue,
              ),
              onPressed: () {
                presenter.obscurePassword.value =
                    !presenter.obscurePassword.value;
              }),
          errorText: presenter.passwordError.value?.description,
        ),
        obscureText: presenter.obscurePassword.value,
        onChanged: presenter.validatePassword,
      ),
    );
  }
}
