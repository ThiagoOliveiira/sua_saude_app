import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/components.dart';
import '../helpers/errors/errors.dart';

// import '../helpers/errors/errors.dart';

mixin UIErrorManager {
  void handleMainError(BuildContext context, Rx<UIError?> error) {
    error.listen((error) {
      if (error != null) {
        showErrorMessage(context, error.description);
      }
    });
  }
}
