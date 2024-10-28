
import 'package:eccomm/utils/theme/custom_themes/appbar_theme.dart';
import 'package:eccomm/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:eccomm/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:eccomm/utils/theme/custom_themes/chip_theme.dart';
import 'package:eccomm/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:eccomm/utils/theme/custom_themes/outlinebotton_them.dart';
import 'package:eccomm/utils/theme/custom_themes/text_theme.dart';
import 'package:eccomm/utils/theme/custom_themes/textformfield_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme{
  TAppTheme._();
//LIGHTTHEME
  static ThemeData lightThem = ThemeData(
     useMaterial3: true,
     brightness: Brightness.light,
     primaryColor: Colors.blue,
     textTheme: TTextTheme.lightTextTheme,
     chipTheme: TChipTheme.lightChipTheme,
     scaffoldBackgroundColor: Colors.white,
     bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
     elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
     checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
     appBarTheme: TAppBarTheme.lightAppBarTheme,
     outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
     inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );

///DARK THEME
 static ThemeData darkThem = ThemeData(
  useMaterial3: true,
     brightness: Brightness.dark,
     primaryColor: Colors.blue,
     textTheme: TTextTheme.darkTextTheme,
     scaffoldBackgroundColor: Colors.black,
     chipTheme: TChipTheme.darktChipTheme,
     bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
     elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
     checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
     appBarTheme: TAppBarTheme.darkAppBarTheme,
     outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
     inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
 
 );
}