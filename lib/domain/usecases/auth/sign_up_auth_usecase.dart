import 'package:firebase_auth/firebase_auth.dart';
import 'package:sua_saude_app/domain/entities/entities.dart';
import 'package:sua_saude_app/domain/repositories/repositories.dart';

class SignUpAuthUseCase {
  final FirebaseAuthRepository _firebaseAuthRepository;

  SignUpAuthUseCase(this._firebaseAuthRepository);

  Future<void> call({required RegisteredUserEntity params}) async {
    return await _firebaseAuthRepository.signUp(params);
  }
}
