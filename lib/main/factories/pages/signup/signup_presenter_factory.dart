import 'package:sua_saude_app/presentation/presenters/getx_signup_presenter.dart';
import 'package:sua_saude_app/ui/pages/signup/signup.dart';

import '../../usecases/firebase_usecase.dart';
import '../../usecases/user/firestore_user_usecase.dart';

FirebaseAuthPresenter makeGetxSignUpPresenter() {
  return GetxSignUpPresenter(
      firebaseAuthRepository: makeFirebase(),
      firebaseUserRepository: makeUserFirebase());
}
