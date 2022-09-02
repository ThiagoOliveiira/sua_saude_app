import 'package:sua_saude_app/domain/repositories/repositories.dart';

class SignOutAuthUseCase {
  final FirebaseAuthRepository _firebaseAuthRepository;

  SignOutAuthUseCase(this._firebaseAuthRepository);

  Future<void> call({required String userId}) async {
    return await _firebaseAuthRepository.signOut(userId: userId);
  }
}
