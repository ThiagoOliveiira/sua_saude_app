import '../../domain/entities/entities.dart';

class UserModel {
  final String? userId;
  final String? email;
  final String? firstName;
  final String? lastName;

  const UserModel({
    required this.userId,
    required this.email,
    required this.firstName,
    required this.lastName,
  });

  factory UserModel.fromJson(Map json) {
    return UserModel(
      userId: json['userId'],
      email: json['email'],
      firstName: json['firstName'],
      lastName: json['lastName'],
    );
  }

  // UserEntity toEntity() => UserEntity(
  //       userId: userId,
  //       email: email,
  //       firstName: firstName,
  //       lastName: lastName,
  //     );
}
