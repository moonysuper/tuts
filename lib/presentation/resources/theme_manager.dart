import 'package:flutter/material.dart';
import 'package:tuts/presentation/resources/color_manager.dart';
import 'package:tuts/presentation/resources/font_manager.dart';
import 'package:tuts/presentation/resources/style_manager.dart';
import 'package:tuts/presentation/resources/value_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    //main Color
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.lightPrimary,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey1,
    splashColor: ColorManager.lightPrimary,

    //CardView theme
    cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.grey,
      elevation: AppSize.s4,
    ),

    //appBar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.primary,
      elevation: AppSize.s4,
      shadowColor: ColorManager.lightPrimary,
      titleTextStyle: getRegularStyle(color: ColorManager.white,fontSize: FontSize.s16),
    ),

    //button theme
    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      disabledColor: ColorManager.grey1,
      buttonColor: ColorManager.primary,
      splashColor: ColorManager.lightPrimary,

    ),
    // elevated Button Theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(color: ColorManager.white,fontSize: AppSize.s17),
        primary: ColorManager.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12)
        ),
      )
    ),

    //text Theme
  textTheme: TextTheme(
    displayLarge: getSemiBoldStyle(color: ColorManager.darkGrey,fontSize: AppSize.s16),
    headlineLarge: getSemiBoldStyle(color: ColorManager.darkGrey,fontSize: AppSize.s16),
    headlineMedium: getRegularStyle(color: ColorManager.darkGrey,fontSize: AppSize.s14),
    titleMedium: getMediumStyle(color: ColorManager.primary,fontSize: AppSize.s16),
    bodyLarge: getRegularStyle(color: ColorManager.grey1),
    bodySmall: getRegularStyle(color: ColorManager.grey),

  ),


    //input decoration theme (text form filed)
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(AppPadding.p8),
      hintStyle: getRegularStyle(color: ColorManager.grey,fontSize: AppSize.s14),
      labelStyle: getMediumStyle(color: ColorManager.grey,fontSize: AppSize.s14),
      errorStyle: getRegularStyle(color: ColorManager.error),

      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.primary,width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.grey,width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.error,width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
      focusedErrorBorder:OutlineInputBorder(
    borderSide: BorderSide(color: ColorManager.primary,width: AppSize.s1_5),
    borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
  ),

    ),






  );
}