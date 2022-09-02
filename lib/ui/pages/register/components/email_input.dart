import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
        decoration: const InputDecoration(
          filled: true,
          labelText: 'E-mail',
          prefixIcon: Icon(Icons.email),
        ),
      ),
    );
  }
}
