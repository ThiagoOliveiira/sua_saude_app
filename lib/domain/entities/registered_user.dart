import 'package:equatable/equatable.dart';

class RegisteredUserEntity extends Equatable {
  final String? email;
  final String? password;

  @override
  List<Object?> get props => [email, password];

  const RegisteredUserEntity({required this.email, required this.password});
}
