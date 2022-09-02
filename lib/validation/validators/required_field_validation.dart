import 'package:equatable/equatable.dart';
import 'package:sua_saude_app/presentation/protocols/validation.dart';

import '../protocols/protocols.dart';

class RequiredFieldValidation extends Equatable implements FieldValidation {
  final String field;

  @override
  List<Object?> get props => [field];

  const RequiredFieldValidation(this.field);

  @override
  ValidationError? validate(Map input) {
    input[field]?.isNotEmpty == true ? null : ValidationError.requiredField;
  }
}
