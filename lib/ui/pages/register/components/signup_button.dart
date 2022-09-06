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
          child: Obx(() => ElevatedButton(
                onPressed: presenter.isFormValid.value
                    ? () async {
                        // handleLoading(context, presenter.isLoading);

                        await presenter.signUp();
                      }
                    : null,
                child: const Text('CRIAR CONTA'),
                style: ButtonStyle(
                  backgroundColor: presenter.isFormValid.value
                      ? MaterialStateProperty.all(
                          Theme.of(context).secondaryHeaderColor)
                      : MaterialStateProperty.all(Theme.of(context).hintColor),
                  padding: MaterialStateProperty.all(const EdgeInsets.all(15)),
                ),
              )),
        ),
      ],
    );
  }
}
