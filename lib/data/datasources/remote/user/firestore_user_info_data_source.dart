import '../../../../domain/entities/entities.dart';

abstract class FirestoreUser {
  Future<void> addNewUser(AddUserEntity newUserModel);
}
