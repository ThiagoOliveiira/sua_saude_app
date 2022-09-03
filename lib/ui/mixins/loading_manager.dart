import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

import '../components/components.dart';

mixin LoadingManager {
  void handleLoading(BuildContext context, RxBool isLoading) async {
    isLoading.listen((isLoading) {
      if (isLoading) {
        showLoading(context);
      } else {
        hideLoading(context);
      }
    });
  }
}
