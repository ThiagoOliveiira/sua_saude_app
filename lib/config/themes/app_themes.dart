import 'package:flutter/material.dart';
import 'package:sua_saude_app/config/colors/color_manager.dart';

import '../fonts/fonts.dart';

class AppTheme {
  static ThemeData get light {
    return ThemeData(
      primaryColor: ColorManager.white,
      primaryColorLight: ColorManager.lightGrey,
      primarySwatch: Colors.blue, // Underline Border
      hintColor: ColorManager.lowOpacityGrey, // LabelText unselect
      shadowColor: ColorManager.veryLowOpacityGrey,
      bottomAppBarColor: ColorManager.black26,
      focusColor: ColorManager.black,
      disabledColor: ColorManager.black54,
      dialogBackgroundColor: ColorManager.black87,
      hoverColor: ColorManager.black45,
      indicatorColor: ColorManager.black38,
      dividerColor: ColorManager.black12,
      backgroundColor: ColorManager.lightBlack,
      scaffoldBackgroundColor: ColorManager.white,
      iconTheme: const IconThemeData(color: ColorManager.black38),
      chipTheme:
          const ChipThemeData(backgroundColor: ColorManager.veryLowOpacityGrey),
      errorColor: ColorManager.black,
      canvasColor: ColorManager.transparent,
      splashColor: ColorManager.white,
      appBarTheme: AppBarTheme(
        elevation: 0,
        color: ColorManager.white,
        shadowColor: ColorManager.lowOpacityGrey,
        iconTheme: const IconThemeData(color: ColorManager.black),
        titleTextStyle:
            getNormalStyle(fontSize: FontSize.s16, color: ColorManager.black),
      ),

      textTheme: TextTheme(
        // headline1: getMediumStyle(color: ColorManager.customGrey),
        // headline2: getMediumStyle(color: ColorManager.customGrey),
        // headline3: getMediumStyle(color: ColorManager.customGrey),
        // headline4: getMediumStyle(color: ColorManager.customGrey),
        // headline5: getMediumStyle(color: ColorManager.naveBlue),
        // headline6: getMediumStyle(color: ColorManager.customGrey),
        // bodyText1: getMediumStyle(color: ColorManager.customGrey),
        // bodyText2: getMediumStyle(color: ColorManager.customGrey)

        bodyLarge: getNormalStyle(color: ColorManager.black),
        bodyMedium:
            getNormalStyle(color: ColorManager.imageGrey), // Color Text()
        bodySmall: getNormalStyle(color: ColorManager.grey),
        displayLarge: getNormalStyle(color: ColorManager.blue, fontSize: 25),
        displayMedium: getBoldStyle(color: ColorManager.black, fontSize: 15),
        displaySmall: getMediumStyle(color: ColorManager.black, fontSize: 15),
        headlineSmall: getNormalStyle(color: ColorManager.shimmerLightGrey),
        titleLarge: getNormalStyle(color: ColorManager.blue),
        titleSmall: getNormalStyle(color: ColorManager.darkWhite),
        titleMedium:
            getNormalStyle(color: ColorManager.naveBlue), // Usado nos TextField
      ),
    );
  }

  static ThemeData get dark {
    return ThemeData(
      primaryColor: ColorManager.white,
      primaryColorLight: ColorManager.black54,
      primarySwatch: Colors.grey,
      hintColor: ColorManager.darkGray,
      shadowColor: ColorManager.darkGray,
      focusColor: ColorManager.white,
      dialogBackgroundColor: ColorManager.white,
      hoverColor: ColorManager.grey,
      indicatorColor: ColorManager.grey,
      dividerColor: ColorManager.grey,
      bottomAppBarColor: ColorManager.grey,
      iconTheme: const IconThemeData(color: ColorManager.white),
      chipTheme:
          const ChipThemeData(backgroundColor: ColorManager.lightDarkGray),
      backgroundColor: ColorManager.darkGray,
      errorColor: ColorManager.grey,
      disabledColor: ColorManager.white,
      scaffoldBackgroundColor: ColorManager.black,
      canvasColor: ColorManager.transparent,
      splashColor: ColorManager.darkGray,
      appBarTheme: AppBarTheme(
        elevation: 0,
        iconTheme: const IconThemeData(color: ColorManager.white),
        color: ColorManager.black,
        shadowColor: ColorManager.lowOpacityGrey,
        titleTextStyle:
            getNormalStyle(fontSize: FontSize.s16, color: ColorManager.white),
      ),
      textTheme: TextTheme(
        bodyLarge: getNormalStyle(color: ColorManager.white),
        bodyMedium: getNormalStyle(color: ColorManager.darkGray),
        bodySmall: getNormalStyle(color: ColorManager.lightGrey),
        displayLarge: getNormalStyle(color: ColorManager.grey, fontSize: 15),
        displayMedium: getBoldStyle(color: ColorManager.white, fontSize: 15),
        displaySmall: getMediumStyle(color: ColorManager.white, fontSize: 15),
        headlineSmall: getNormalStyle(color: Colors.grey[500]!),
        titleLarge: getNormalStyle(color: ColorManager.shimmerDarkGrey),
        titleSmall: getNormalStyle(color: ColorManager.darkGray),
        titleMedium: getNormalStyle(color: ColorManager.darkGray),
      ),
    );
  }
}
