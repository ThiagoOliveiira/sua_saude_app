import 'package:sua_saude_app/domain/entities/add_user_entity.dart';

import '../../domain/repositories/repositories.dart';
import '../datasources/remote/user/user.dart';

class FirestoreUserRepositoryImpl implements FirebaseUserRepository {
  final FirestoreUser _firestoreUser;

  FirestoreUserRepositoryImpl(this._firestoreUser);

  @override
  Future<void> addNewUser(AddUserEntity newUserEntity) async {
    return await _firestoreUser.addNewUser(newUserEntity);
  }
}

class AddUserParams {
  final String? userId;
  final String email;
  final String firstName;
  final String lastName;

  factory AddUserParams.fromDomain(AddUserEntity params) => AddUserParams(
        userId: params.userId,
        email: params.email,
        firstName: params.firstName,
        lastName: params.lastName,
      );

  Map<String, dynamic> toJson() => {
        'userId': userId,
        'email': email,
        'firstName': firstName,
        'lastName': lastName,
      };

  const AddUserParams(
      {required this.userId,
      required this.email,
      required this.firstName,
      required this.lastName});
}
