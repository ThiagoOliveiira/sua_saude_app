import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../domain/entities/entities.dart';

abstract class FirebaseAuthPresenter implements Listenable {
  RxBool get isLoading;

  Rx<TextEditingController> get emailEditionController;
  Rx<TextEditingController> get passwordEditionController;
  Rx<TextEditingController> get passwordConfirmationEditionController;

  Rx<TextEditingController> get firstNameEditionController;
  Rx<TextEditingController> get lastNameEditionController;

  Future<UserCredential> signUp(RegisteredUserEntity registeredUserEntity);
  Future<void> signOut(String userId);
}
