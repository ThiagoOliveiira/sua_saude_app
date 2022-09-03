import 'package:get/get.dart';

import '../../ui/helpers/errors/errors.dart';

mixin UIErrorManager on GetxController {
  final mainError = Rx<UIError?>(null);
}
