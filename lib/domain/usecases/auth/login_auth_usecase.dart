import 'package:firebase_auth/firebase_auth.dart';
import 'package:sua_saude_app/domain/entities/entities.dart';

import '../../repositories/repositories.dart';

class GetCreateCurrentUserUseCase {
  final FirebaseAuthRepository _firebaseAuthRepository;

  GetCreateCurrentUserUseCase(this._firebaseAuthRepository);

  Future<UserCredential> call({required RegisteredUserEntity params}) async {
    return await _firebaseAuthRepository.logIn(params);
  }
}
