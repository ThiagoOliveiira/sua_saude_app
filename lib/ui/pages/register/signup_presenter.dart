import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sua_saude_app/ui/helpers/errors/errors.dart';

abstract class FirebaseAuthPresenter implements Listenable {
  RxBool get isLoading;

  Rx<TextEditingController> get emailEditionController;
  Rx<TextEditingController> get passwordEditionController;
  Rx<TextEditingController> get passwordConfirmationEditionController;

  Rx<TextEditingController> get firstNameEditionController;
  Rx<TextEditingController> get lastNameEditionController;

  Rxn<UIError?> get firstNameError;
  Rxn<UIError?> get lastNameError;
  Rxn<UIError?> get emailError;
  Rxn<UIError?> get passwordError;
  Rxn<UIError?> get passwordConfirmationError;
  RxBool get isFormValid;
  RxBool get obscurePassword;

  void validateEmail(String email);
  void validateFirstName(String firstName);
  void validateLastName(String lastName);
  void validatePassword(String password);
  void validatePasswordConfirmation(String passwordConfirmation);

  Future<void> signUp();
  Future<void> addNewUser(String uid);
  Future<void> signOut(String userId);
}
