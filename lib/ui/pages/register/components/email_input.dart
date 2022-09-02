import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../helpers/errors/errors.dart';

import '../signup.dart';

class EmailInput extends StatelessWidget {
  const EmailInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final presenter = Get.find<FirebaseAuthPresenter>();
    return Obx(
      () => TextFormField(
        controller: presenter.emailEditionController.value,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          filled: true,
          labelText: 'E-mail',
          prefixIcon: const Icon(Icons.email_outlined),
          errorText: presenter.emailError.value?.description,
        ),
        onChanged: presenter.validateEmail,
      ),
    );
  }
}
