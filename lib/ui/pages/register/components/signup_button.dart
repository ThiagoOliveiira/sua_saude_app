import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../signup.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final presenter = Get.find<FirebaseAuthPresenter>();

    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              print(presenter.emailEditionController.value.text);
              print(presenter.passwordEditionController.value.text);
            },
            child: const Text('CRIAR CONTA'),
            style: ButtonStyle(padding: MaterialStateProperty.all(const EdgeInsets.all(15))),
          ),
        ),
      ],
    );
  }
}
