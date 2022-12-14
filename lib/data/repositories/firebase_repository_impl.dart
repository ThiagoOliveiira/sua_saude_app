import 'package:sua_saude_app/domain/entities/registered_user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sua_saude_app/domain/repositories/repositories.dart';

import '../datasources/datasources.dart';

class FirebaseAuthRepositoryImpl implements FirebaseAuthRepository {
  final FirebaseAuthentication _firebaseAuthentication;

  const FirebaseAuthRepositoryImpl(this._firebaseAuthentication);

  @override
  Future<UserCredential> logIn(RegisteredUserEntity params) async {
    try {
      return await _firebaseAuthentication.logIn(
          email: params.email!, password: params.password!);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  @override
  Future<void> signOut({required String userId}) async {
    try {
      return await _firebaseAuthentication.signOut(userId: userId);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  @override
  Future<UserCredential> signUp(RegisteredUserEntity params) async {
    try {
      return await _firebaseAuthentication.signUp(
          email: params.email!, password: params.password!);
    } catch (e) {
      return Future.error(e.toString());
    }
  }
}
