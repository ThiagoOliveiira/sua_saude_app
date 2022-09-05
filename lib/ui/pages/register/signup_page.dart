import 'package:flutter/material.dart';
import 'package:sua_saude_app/ui/pages/register/signup.dart';

import '../../mixins/mixins.dart';
import 'components/components.dart';

class SignUpPage extends StatelessWidget with LoadingManager, UIErrorManager {
  final FirebaseAuthPresenter presenter;
  SignUpPage({Key? key, required this.presenter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: false,
      extendBodyBehindAppBar: true,
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      // ),
      body: Builder(builder: (context) {
        handleLoading(context, presenter.isLoading);
        handleMainError(context, presenter.mainError);

        return SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.12),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Cadastre-se',
                      style: Theme.of(context).textTheme.displayLarge?.copyWith(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Crie sua conta para que seus lembretes estejam disponíveis onde você estiver.',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 18),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  child: Column(
                    children: const [
                      EmailInput(),
                      SizedBox(height: 15),
                      PasswordInput(),
                      SizedBox(height: 15),
                      PasswordConfirmationInput(),
                      SizedBox(height: 15),
                      NameInput(),
                      SizedBox(height: 20),
                      SignUpButton(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
