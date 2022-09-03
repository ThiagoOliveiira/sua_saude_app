import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sua_saude_app/domain/entities/add_user_entity.dart';
import 'package:sua_saude_app/domain/entities/registered_user.dart';
import 'package:sua_saude_app/domain/helpers/helpers.dart';
import 'package:sua_saude_app/ui/helpers/errors/errors.dart';

import '../../domain/repositories/repositories.dart';
import '../../ui/pages/register/signup.dart';
import '../mixins/mixins.dart';
import '../protocols/protocols.dart';

class GetxSignUpPresenter extends GetxController
    with FormManager, UIErrorManager, LoadingManager
    implements FirebaseAuthPresenter {
  final FirebaseAuthRepository firebaseAuthRepository;
  final FirebaseUserRepository firebaseUserRepository;
  final Validation validation;

  GetxSignUpPresenter(
      {required this.firebaseAuthRepository,
      required this.firebaseUserRepository,
      required this.validation});

  @override
  Rx<TextEditingController> emailEditionController =
      TextEditingController().obs;

  @override
  Rx<TextEditingController> firstNameEditionController =
      TextEditingController().obs;

  @override
  Rx<TextEditingController> lastNameEditionController =
      TextEditingController().obs;

  @override
  Rx<TextEditingController> passwordEditionController =
      TextEditingController().obs;

  @override
  Rx<TextEditingController> passwordConfirmationEditionController =
      TextEditingController().obs;

  @override
  RxBool obscurePassword = true.obs;

  String? _email;
  String? _firstName;
  String? _lastName;
  String? _password;
  String? _passwordConfirmation;

  @override
  Rxn<UIError?> emailError = Rxn<UIError?>();

  @override
  Rxn<UIError?> firstNameError = Rxn<UIError?>();

  @override
  Rxn<UIError?> lastNameError = Rxn<UIError?>();

  @override
  Rxn<UIError?> passwordError = Rxn<UIError?>();

  @override
  Rxn<UIError?> passwordConfirmationError = Rxn<UIError?>();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void validateEmail(String email) {
    _email = email;
    emailError.value = _validateField('email');
    _validateForm();
  }

  @override
  void validateFirstName(String firstName) {
    _firstName = firstName;
    firstNameError.value = _validateField('firstName');
    _validateForm();
  }

  @override
  void validateLastName(String lastName) {
    _lastName = lastName;
    lastNameError.value = _validateField('lastName');
    _validateForm();
  }

  @override
  void validatePassword(String password) {
    // ignore: unrelated_type_equality_checks
    passwordEditionController.value.text !=
            passwordEditionController.value.text.length - 1
        ? passwordConfirmationEditionController.value.text = ''
        : passwordConfirmationEditionController.value.text;
    _password = password;
    passwordError.value = _validateField('password');
    _validateForm();
  }

  @override
  void validatePasswordConfirmation(String passwordConfirmation) {
    _passwordConfirmation = passwordConfirmation;
    passwordConfirmationError.value = _validateField('passwordConfirmation');
    _validateForm();
  }

  UIError? _validateField(String field) {
    final formData = {
      'firstName': _firstName,
      'lastName': _lastName,
      'email': _email,
      'password': _password,
      'passwordConfirmation': _passwordConfirmation
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

  void _validateForm() {
    isFormValid.value = emailError.value == null &&
        firstNameError.value == null &&
        lastNameError.value == null &&
        passwordError.value == null &&
        passwordConfirmationError.value == null &&
        _email != null &&
        _firstName != null &&
        _lastName != null &&
        _password != null &&
        _passwordConfirmation != null;
  }

  @override
  Future<void> signUp() async {
    try {
      mainError.value = null;
      isSetLoading = true;

      final params = RegisteredUserEntity(
        email: _email,
        password: _password,
      );

      UserCredential? user = await firebaseAuthRepository.signUp(params);

      addNewUser(user!.user!.uid);
    } on DomainError catch (error) {
      switch (error) {
        case DomainError.emailInUse:
          mainError.value = UIError.emailInUse;
          break;
        default:
          mainError.value = UIError.unexpected;
          break;
      }
    }
    // isLoading.value = false;
  }

  @override
  Future<UserCredential> login(RegisteredUserEntity params) async {
    return await firebaseAuthRepository.logIn(params);
  }

  @override
  Future<void> signOut(String userId) async {
    return await firebaseAuthRepository.signOut(userId: userId);
  }

  @override
  Future<void> addNewUser(String uid) async {
    final newUser = AddUserEntity(
        email: _email!,
        firstName: _firstName!,
        lastName: _lastName!,
        userId: uid);
    return await firebaseUserRepository.addNewUser(newUser);
  }
}
