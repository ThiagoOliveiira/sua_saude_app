import 'package:equatable/equatable.dart';
import 'package:sua_saude_app/presentation/protocols/validation.dart';

import '../protocols/protocols.dart';

class MinLenghtValidation extends Equatable implements FieldValidation {
  final String field;
  final int size;

  @override
  List<Object?> get props => [field, size];

  const MinLenghtValidation({required this.field, required this.size});

  @override
  ValidationError? validate(Map input) => input[field] != null && input[field].length >= size ? null : ValidationError.invalidField;
}
