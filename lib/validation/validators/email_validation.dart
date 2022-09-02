import 'package:equatable/equatable.dart';
import 'package:sua_saude_app/presentation/protocols/protocols.dart';

import '../protocols/field_validation.dart';

class EmailValidation extends Equatable implements FieldValidation {
  final String field;

  @override
  List<Object?> get props => [field];

  const EmailValidation(this.field);

  @override
  ValidationError? validate(Map input) {
    final regex = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    final isValid = input[field]?.isNotEmpty != true || regex.hasMatch(input[field]);
    return isValid ? null : ValidationError.invalidField;
  }
}
