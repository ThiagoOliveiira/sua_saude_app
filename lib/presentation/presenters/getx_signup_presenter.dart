import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sua_saude_app/domain/entities/registered_user.dart';
import 'package:sua_saude_app/ui/helpers/errors/errors.dart';

import '../../domain/repositories/repositories.dart';
import '../../ui/pages/register/signup.dart';
import '../protocols/protocols.dart';

class GetxSignUpPresenter extends GetxController implements FirebaseAuthPresenter {
  final FirebaseAuthRepository firebaseAuthRepository;
  final FirebaseUserRepository firebaseUserRepository;
  final Validation validation;

  GetxSignUpPresenter({required this.firebaseAuthRepository, required this.firebaseUserRepository, required this.validation});

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
  RxBool isLoading = false.obs;

  String? _email;
  String? _firstName;
  String? _lastName;

  @override
  Rxn<UIError?> emailError = Rxn<UIError?>();

  @override
  Rxn<UIError?> firstNameError = Rxn<UIError?>();

  @override
  Rxn<UIError?> lastNameError = Rxn<UIError?>();

  @override
  void onInit() {
    // RegisteredUserEntity params = const RegisteredUserEntity(email: 'thiago123@gmail.com', password: '12345678');
    // print("Iniciando");

    // signUp(params);
    super.onInit();
  }

  @override
  void validateEmail(String email) {
    _email = email;
    emailError.value = _validateField('email');
  }

  @override
  void validateFirstName(String firstName) {
    _firstName = firstName;
    firstNameError.value = _validateField('firstName');
  }

  @override
  void validateLastName(String lastName) {
    _lastName = lastName;
    lastNameError.value = _validateField('lastName');
  }

  UIError? _validateField(String field) {
    final formData = {
      'firstName': _firstName,
      'lastName': _lastName,
      'email': _email,
      // 'password': _password,
      // 'passwordConfirmation': _passwordConfirmation
    };
    final error = validation.validate(field: field, input: formData);
    switch (error) {
      case ValidationError.invalidField:
        return UIError.invalidField;
      case ValidationError.requiredField:
        return UIError.requiredField;
      default:
        return null;
    }
  }

  @override
  Future<UserCredential> signUp(RegisteredUserEntity params) async {
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
