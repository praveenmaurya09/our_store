import 'package:flutter/material.dart';
import 'package:our_store/utils/theme/custom_theme/appbar_theme.dart';
import 'package:our_store/utils/theme/custom_theme/bottom_sheet_theme.dart';
import 'package:our_store/utils/theme/custom_theme/checkbox_theme.dart';
import 'package:our_store/utils/theme/custom_theme/chip_theme.dart';
import 'package:our_store/utils/theme/custom_theme/elevated_button_theme.dart';
import 'package:our_store/utils/theme/custom_theme/outlined_button_theme.dart';
import 'package:our_store/utils/theme/custom_theme/text_field_theme.dart';
import 'package:our_store/utils/theme/custom_theme/text_theme.dart';

class KAppTheme {
  KAppTheme._();

  /// Light Theme & It's custom theme data
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: KTextTheme.lightTextTheme,
    chipTheme: KChipTheme.lightChipTheme,
    appBarTheme: KAppBarTheme.lightAppBarTheme,
    checkboxTheme: KCheckBoxTheme.lightCheckboxTheme,
    bottomSheetTheme: KBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: KElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: KOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: KTextFormFieldTheme.lightInputDecorationTheme,
  );


  /// Dark Theme & It's custom theme data
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: KTextTheme.darkTextTheme,
    chipTheme: KChipTheme.darkChipTheme,
    appBarTheme: KAppBarTheme.darkAppBarTheme,
    checkboxTheme: KCheckBoxTheme.darkCheckboxTheme,
    bottomSheetTheme: KBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: KElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: KOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: KTextFormFieldTheme.darkInputDecorationTheme
  );


}