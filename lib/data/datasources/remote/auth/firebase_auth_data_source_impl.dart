import 'package:firebase_auth/firebase_auth.dart';

import 'auth.dart';

class FirebaseAuthDataSourceImp implements FirebaseAuthentication {
  final FirebaseAuth auth;

  FirebaseAuthDataSourceImp({required this.auth});

  @override
  Future<UserCredential> logIn(
      {required String email, required String password}) async {
    return await auth.signInWithEmailAndPassword(
        email: email, password: password);
  }

  @override
  Future<void> signOut({required String userId}) async => await auth.signOut();

  @override
  Future<UserCredential> signUp(
      {required String email, required String password}) async {
    UserCredential user = await auth.createUserWithEmailAndPassword(
        email: email, password: password);
    return user;
  }
}
