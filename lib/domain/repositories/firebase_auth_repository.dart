import 'package:firebase_auth/firebase_auth.dart';

import '../entities/entities.dart';

abstract class FirebaseAuthRepository {
  Future<UserCredential?> signUp(RegisteredUserEntity newUserInfo);
  Future<UserCredential> logIn(RegisteredUserEntity userInfo);
  Future<void> signOut({required String userId});
}
