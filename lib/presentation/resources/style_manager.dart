import 'package:flutter/material.dart';
import 'package:tuts/presentation/resources/font_manager.dart';


TextStyle _getTextStyle(double fontSize,FontWeight fontWeight,Color color){
  return TextStyle(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
    fontFamily: FontConstance.fontFamily
  );
}

// light Style

TextStyle getLightStyle({double fontSize = FontSize.s12,required Color color}){
  return _getTextStyle(fontSize, FontWeightManager.light, color);
}

// regular Style

TextStyle getRegularStyle({double fontSize = FontSize.s12,required Color color}){
  return _getTextStyle(fontSize, FontWeightManager.regular, color);
}

// medium Style

TextStyle getMediumStyle({double fontSize = FontSize.s12,required Color color}){
  return _getTextStyle(fontSize, FontWeightManager.medium, color);
}

// semiBold Style

TextStyle getSemiBoldStyle({double fontSize = FontSize.s12,required Color color}){
  return _getTextStyle(fontSize, FontWeightManager.semiBold, color);
}

// bold Style

TextStyle getBoldStyle({double fontSize = FontSize.s12,required Color color}){
  return _getTextStyle(fontSize, FontWeightManager.bold, color);
}



