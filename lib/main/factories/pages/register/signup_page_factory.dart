import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sua_saude_app/ui/pages/register/signup.dart';

import 'signup_presenter_factory.dart';

Widget makeSigUpPage() {
  final presenter = Get.put<FirebaseAuthPresenter>(makeGetxSignUpPresenter());
  return SignUpPage(presenter: presenter);
}
