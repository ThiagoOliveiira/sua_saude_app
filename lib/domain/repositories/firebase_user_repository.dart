import 'package:sua_saude_app/domain/entities/entities.dart';

abstract class FirebaseUserRepository {
  Future<void> addNewUser(AddUserEntity newUserEntity);
}
