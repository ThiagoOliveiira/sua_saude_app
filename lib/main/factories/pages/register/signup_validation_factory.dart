import 'package:sua_saude_app/main/builders/builders.dart';
import 'package:sua_saude_app/presentation/protocols/validation.dart';

import '../../../../validation/protocols/protocols.dart';
import '../../../composites/composites.dart';

Validation makeSignUpValidation() => ValidationComposite(makeSignUpValidations());

List<FieldValidation> makeSignUpValidations() => [
      ...ValidationBuilder.field('email').required().email().build(),
      ...ValidationBuilder.field('firstName').required().min(3).build(),
      ...ValidationBuilder.field('lastName').required().min(3).build(),
    ];
