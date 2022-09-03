import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sua_saude_app/config/colors/color_manager.dart';

import '../../../helpers/errors/errors.dart';

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
          prefixIcon: const Icon(Icons.lock_outline),
          suffixIcon: IconButton(
            icon: presenter.passwordConfirmationError.value != null
                ? const Icon(
                    Icons.error_outline,
                    color: ColorManager.red,
                  )
                : Icon(
                    Icons.check,
                    color: presenter.passwordConfirmationError.value == null &&
                            presenter.passwordConfirmationEditionController
                                .value.text.isNotEmpty
                        ? Colors.green
                        : Colors.grey,
                  ),
            onPressed: () {},
          ),
          errorText: presenter.passwordConfirmationError.value?.description,
        ),
        obscureText: presenter.obscurePassword.value,
        onChanged: presenter.validatePasswordConfirmation,
      ),
    );
  }
}
