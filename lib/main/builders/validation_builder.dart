import 'package:sua_saude_app/validation/protocols/protocols.dart';

import '../../validation/validators/validators.dart';

class ValidationBuilder {
  static ValidationBuilder? _intance;
  String fieldName;
  List<FieldValidation> validations = [];

  ValidationBuilder._(this.fieldName);

  static ValidationBuilder field(String fieldName) {
    _intance = ValidationBuilder._(fieldName);
    return _intance!;
  }

  ValidationBuilder required() {
    validations.add(RequiredFieldValidation(fieldName));
    return this;
  }

  ValidationBuilder email() {
    validations.add(EmailValidation(fieldName));
    return this;
  }

  ValidationBuilder min(int size) {
    validations.add(MinLenghtValidation(field: fieldName, size: size));
    return this;
  }

  ValidationBuilder isEquals(String fieldToCompare) {
    validations.add(CompareFieldsValidation(
        field: fieldName, fieldToCompare: fieldToCompare));
    return this;
  }

  List<FieldValidation> build() => validations;
}
