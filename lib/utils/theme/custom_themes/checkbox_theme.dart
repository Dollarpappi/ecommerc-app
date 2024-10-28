
import 'package:flutter/material.dart';

///custom class for light and dark text themes
class TCheckboxTheme{
 TCheckboxTheme._();

 //CUSTOMIZABLE LIGHT TEXT TEME
 static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(4)
  ),
  checkColor: WidgetStateProperty.resolveWith((states){
    if(states.contains(WidgetState.selected)){
      return Colors.white;
    }else{
      return Colors.black;
    }
  }),
  fillColor: WidgetStateProperty.resolveWith((states){
    if(states.contains(WidgetState.selected)){
      return Colors.blue;
    }else{
      return Colors.transparent;
    }
  })
 );


 //CUSTOMIZABLE  DARK THEME
 static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(4)
  ),
  checkColor: WidgetStateProperty.resolveWith((states){
    if(states.contains(WidgetState.selected)){
      return Colors.white;
    }else{
      return Colors.black;
    }
  }),
  fillColor: WidgetStateProperty.resolveWith((states){
    if(states.contains(WidgetState.selected)){
      return Colors.blue;
    }else{
      return Colors.transparent;
    }
  })
 );
}