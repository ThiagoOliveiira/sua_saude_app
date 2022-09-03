import 'package:get/get.dart';

mixin LoadingManager on GetxController {
  final _isLoadingObs = false.obs;
  RxBool get isLoading => _isLoadingObs;
  set isSetLoading(bool value) => _isLoadingObs.value = value;
}
