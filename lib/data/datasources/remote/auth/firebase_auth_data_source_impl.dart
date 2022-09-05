import 'package:firebase_auth/firebase_auth.dart';
import 'package:sua_saude_app/data/http/auth_exception_handler.dart';

import 'auth.dart';

class FirebaseAuthDataSourceImp implements FirebaseAuthentication {
  final FirebaseAuth auth;

  FirebaseAuthDataSourceImp({required this.auth});

  @override
  Future<UserCredential> logIn({required String email, required String password}) async {
    return await auth.signInWithEmailAndPassword(email: email, password: password);
  }

  @override
  Future<void> signOut({required String userId}) async => await auth.signOut();

  @override
  Future<dynamic> signUp({required String email, required String password}) async {
    try {
      return await auth.createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (error) {
      AuthExceptionHandler.handleException(error);
    }
  }
}

// void _handleFirebaseLoginWithCredentialsException(FirebaseAuthException e, StackTrace s) {
//   print(e.code);
//   if (e.code == 'email-already-in-use') {
//     print('Email já cadastrado!');
//   } else if (e.code == 'wrong-password') {
//     print('Senha muito pequena!');
//   } else if (e.code == 'invalid-email') {
//     //'O domínio do e-mail informado é inválido.'
//   } else if (e.code == 'wrong-password') {
//     //'A senha informada está incorreta.'
//   } else {
//     //Outro problema
//   }
// }
