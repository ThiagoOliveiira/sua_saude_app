import 'package:equatable/equatable.dart';
import 'package:sua_saude_app/presentation/protocols/validation.dart';
import 'package:sua_saude_app/validation/protocols/protocols.dart';

class CompareFieldsValidation extends Equatable implements FieldValidation {
  final String field;
  final String fieldToCompare;

  const CompareFieldsValidation(
      {required this.field, required this.fieldToCompare});

  @override
  List get props => [field, fieldToCompare];

  @override
  ValidationError? validate(Map input) => input[field] != null &&
          input[fieldToCompare] != null &&
          input[field] != input[fieldToCompare]
      ? ValidationError.invalidField
      : null;
}
