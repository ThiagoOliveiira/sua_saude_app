import 'package:firebase_auth/firebase_auth.dart';

abstract class FirebaseAuthentication {
  Future<void> signUp({required String email, required String password});
  Future<UserCredential> logIn({required String email, required String password});
  Future<void> signOut({required String userId});
}
