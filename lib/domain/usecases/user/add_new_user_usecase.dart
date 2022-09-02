import 'package:sua_saude_app/domain/entities/entities.dart';
import 'package:sua_saude_app/domain/repositories/firebase_user_repository.dart';

class AddNewUserUseCase {
  final FirebaseUserRepository _firebaseUserRepository;

  AddNewUserUseCase(this._firebaseUserRepository);

  Future<void> call({required AddUserEntity params}) {
    return _firebaseUserRepository.addNewUser(params);
  }
}
