import 'package:get/get.dart';

import '../../ui/helpers/errors/errors.dart';

mixin UIErrorManager on GetxController {
  final _mainErrorObs = Rxn<UIError?>(null);
  Rxn<UIError?> get mainError => _mainErrorObs;
  set isSetMainError(UIError? value) => _mainErrorObs.value = value;
}
