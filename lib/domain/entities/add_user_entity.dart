import 'package:equatable/equatable.dart';

class AddUserEntity extends Equatable {
  final String? userId;
  final String email;
  final String firstName;
  final String lastName;

  @override
  List<Object> get props => [userId!, email, firstName, lastName];

  const AddUserEntity(
      {this.userId,
      required this.email,
      required this.firstName,
      required this.lastName});
}
