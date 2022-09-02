import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sua_saude_app/domain/entities/registered_user.dart';

import '../../domain/repositories/repositories.dart';
import '../../ui/pages/register/signup.dart';

class GetxSignUpPresenter extends GetxController implements FirebaseAuthPresenter {
  FirebaseAuthRepository firebaseAuthRepository;
  FirebaseUserRepository firebaseUserRepository;

  GetxSignUpPresenter({required this.firebaseAuthRepository, required this.firebaseUserRepository});

  @override
  Rx<TextEditingController> emailEditionController = TextEditingController().obs;

  @override
  Rx<TextEditingController> firstNameEditionController = TextEditingController().obs;

  @override
  Rx<TextEditingController> lastNameEditionController = TextEditingController().obs;

  @override
  Rx<TextEditingController> passwordEditionController = TextEditingController().obs;

  @override
  Rx<TextEditingController> passwordConfirmationEditionController = TextEditingController().obs;

  @override
  void onInit() {
    // RegisteredUserEntity params = const RegisteredUserEntity(email: 'thiago123@gmail.com', password: '12345678');
    // print("Iniciando");

    // signUp(params);
    super.onInit();
  }

  @override
  RxBool isLoading = false.obs;

  @override
  Future<UserCredential> signUp(RegisteredUserEntity params) async {
    print("criando");

    return await firebaseAuthRepository.signUp(params);
  }

  @override
  Future<UserCredential> login(RegisteredUserEntity params) async {
    return await firebaseAuthRepository.logIn(params);
  }

  @override
  Future<void> signOut(String userId) async {
    return await firebaseAuthRepository.signOut(userId: userId);
  }
}
