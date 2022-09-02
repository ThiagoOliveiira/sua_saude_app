import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:sua_saude_app/config/themes/app_themes.dart';

import '../firebase_options.dart';
import 'factories/pages/register/register.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    // final routeObserver = Get.put<RouteObserver>(RouteObserver<PageRoute>());

    return GetMaterialApp(
      title: '4Dev',
      debugShowCheckedModeBanner: false,
      // theme: makeAppTheme(),
      // navigatorObservers: [routeObserver],
      initialRoute: '/signUp',
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      getPages: [
        GetPage(name: '/signUp', page: makeSigUpPage, transition: Transition.fade),
        // GetPage(name: '/register', page: makeLoginPage, transition: Transition.fadeIn),
        // GetPage(name: '/signup', page: makeSignUpPage),
        // GetPage(name: '/surveys', page: makeSurveysPage, transition: Transition.fadeIn),
        // GetPage(name: '/survey_result/:survey_id', page: makeSurveyResultPage),
      ],
    );
  }
}
