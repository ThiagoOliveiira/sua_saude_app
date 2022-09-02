import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sua_saude_app/ui/pages/signup/signup.dart';

class SignUpPage extends StatelessWidget {
  final FirebaseAuthPresenter presenter;
  const SignUpPage({Key? key, required this.presenter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Cadastre-se',
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge
                        ?.copyWith(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Text(
              'Crie sua conta para que seus lembretes estejam disponíveis onde você estiver.',
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontSize: 18),
            ),
            const SizedBox(height: 20),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Obx(
                    () => TextField(
                      controller: presenter.emailEditionController.value,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        filled: true,
                        labelText: 'E-mail',
                        prefixIcon: Icon(Icons.email),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Obx(
                    () => TextField(
                      controller: presenter.passwordEditionController.value,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        filled: true,
                        labelText: 'Senha',
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: IconButton(
                          icon: const Icon(Icons.remove_red_eye),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Obx(
                        () => Expanded(
                          child: TextField(
                            controller:
                                presenter.firstNameEditionController.value,
                            decoration: const InputDecoration(
                              filled: true,
                              labelText: 'Primeiro Nome',
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Obx(
                        () => Expanded(
                          child: TextField(
                            controller:
                                presenter.passwordEditionController.value,
                            decoration: const InputDecoration(
                              filled: true,
                              labelText: 'Último Nome',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            print(presenter.emailEditionController.value.text);
                            print(
                                presenter.passwordEditionController.value.text);
                          },
                          child: const Text('CRIAR CONTA'),
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all(
                                  const EdgeInsets.all(15))),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
