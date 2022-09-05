import 'package:firebase_auth/firebase_auth.dart';

import '../entities/entities.dart';

abstract class FirebaseAuthRepository {
  Future<void> signUp(RegisteredUserEntity newUserInfo);
  Future<UserCredential> logIn(RegisteredUserEntity userInfo);
  Future<void> signOut({required String userId});
}
