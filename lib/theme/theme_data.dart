// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemeData {
  static const _lightFillColor = Colors.black;
  static const _darkFillColor = Colors.white;

  static final Color _lightFocusColor = Colors.black.withOpacity(0.12);
  static final Color _darkFocusColor = Colors.white.withOpacity(0.12);

  static ThemeData lightThemeData =
      themeData(lightColorScheme, _lightFocusColor);
  static ThemeData darkThemeData = themeData(darkColorScheme, _darkFocusColor);

  static ThemeData themeData(ColorScheme colorScheme, Color focusColor) {
    return ThemeData(
      inputDecorationTheme: InputDecorationTheme(
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.teal)
        ),
      ),
      colorScheme: colorScheme,
      primaryColor: AppColor.primary,
      textTheme: _textTheme,
      cardColor: Colors.white,
      // Matches manifest.json colors and background color.
      appBarTheme: AppBarTheme(
        textTheme: _textTheme.apply(bodyColor: colorScheme.onPrimary),
        color: colorScheme.background,
        elevation: 0,
        iconTheme: IconThemeData(color: colorScheme.primary),
        brightness: colorScheme.brightness,
      ),
      iconTheme: IconThemeData(color: colorScheme.onPrimary),
      canvasColor: colorScheme.background,
      scaffoldBackgroundColor: colorScheme.background,
      highlightColor: Colors.transparent,
      accentColor: colorScheme.primary,
      focusColor: focusColor,
      snackBarTheme: SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        backgroundColor: Color.alphaBlend(
          _lightFillColor.withOpacity(0.80),
          _darkFillColor,
        ),
        contentTextStyle: _textTheme.subtitle1?.apply(color: _darkFillColor),
      ),
    );
  }

  static ColorScheme lightColorScheme = ColorScheme(
    primary: AppColor.primary,
    primaryVariant: AppColor.primaryVar,
    secondary: AppColor.secondary,
    secondaryVariant: AppColor.primary2,
    background: AppColor.background,
    surface: Color(0xFFececec),
    onBackground: Colors.white,
    error: _lightFillColor,
    onError: _lightFillColor,
    onPrimary: _lightFillColor,
    onSecondary: Color(0xFF322942),
    onSurface: Color(0xFF241E30),
    brightness: Brightness.light,
  );

  static ColorScheme darkColorScheme = ColorScheme(
    primary: AppColor.primaryDark,
    primaryVariant: AppColor.primaryVariantDark,
    secondary: AppColor.secondaryDark,
    secondaryVariant: AppColor.secondaryVariantDark,
    background: AppColor.backgroundDark,
    surface: Color(0xFF1F1929),
    onBackground: Color(0x0D000000),
    // White with 0.05 opacity
    error: _darkFillColor,
    onError: _darkFillColor,
    onPrimary: _darkFillColor,
    onSecondary: _darkFillColor,
    onSurface: _darkFillColor,
    brightness: Brightness.dark,
  );

  static const _thin = FontWeight.w100;
  static const _extraLight = FontWeight.w200;
  static const _light = FontWeight.w300;
  static const _regular = FontWeight.w400;
  static const _medium = FontWeight.w500;
  static const _semiBold = FontWeight.w600;
  static const _bold = FontWeight.w700;
  static const _extraBold = FontWeight.w800;
  static const _black = FontWeight.w900;

  static final TextTheme _textTheme = TextTheme(
    headline1: GoogleFonts.roboto(
        color: AppColor.textColor, fontSize: 96, fontWeight: _light),
    headline2: GoogleFonts.roboto(
        color: AppColor.textColor, fontSize: 60, fontWeight: _light),
    headline3: GoogleFonts.roboto(
        color: AppColor.textColor, fontSize: 48, fontWeight: _regular),
    headline4: GoogleFonts.roboto(
        color: AppColor.textColor, fontSize: 34, fontWeight: _regular),
    headline5: GoogleFonts.roboto(
        color: AppColor.textColor, fontSize: 20, fontWeight: _bold),
    headline6: GoogleFonts.roboto(
        color: AppColor.textColor, fontSize: 20, fontWeight: _medium),
    subtitle1: GoogleFonts.roboto(
        fontSize: 15.0,
        color: AppColor.secondary2,
        fontWeight: FontWeight.w500),
    subtitle2: GoogleFonts.roboto(
      fontSize: 14.0,
      color: Colors.white,
    ),
    bodyText1: GoogleFonts.roboto(fontSize: 14.0, color: AppColor.secondary2),
    bodyText2: GoogleFonts.roboto(
        fontSize: 20.0,
        color: AppColor.secondary,
        fontWeight: FontWeight.w700),
    button: GoogleFonts.roboto(
        color: AppColor.primaryVar, fontSize: 14, fontWeight: _medium),
    caption: GoogleFonts.roboto(
        color: AppColor.textColor,
        fontSize: 12,
        fontWeight: _regular,
        letterSpacing: 0.4,
        fontStyle: FontStyle.italic),
    overline: GoogleFonts.roboto(
      fontSize: 12.0,
      color: AppColor.primary3,
    ),
  );
}

class AppColor {
  //light
  static final Color textColor = Color(0xff171717);
  static final Color background = Color(0xFFFFFFFF);

  static final Color primary = Color(0xff43c754);
  static final Color primaryVar = Color(0xff43c754);
  static final Color primary2 = Color(0x555aaaaf);
  static final Color primary01 = Color(0xfff0aac4);
  static final Color primary3 = Color(0xffb3ccd3);
  static final Color secondary3 = Color(0xff717074);
  static final Color secondary4 = Color(0xffa7a9ac);
  static final Color secondary2 = Color(0xff35363f);
  static final Color secondary = Color(0xff515454);

  //dark
  static final Color primaryDark = Color(0xff549132);
  static final Color primaryVariantDark = Color(0xffe8e8e8);
  static final Color secondaryVariantDark = Color(0xFF111111);
  static final Color secondaryDark = Color(0x80e8e8e8);
  static final Color secondaryDark2 = Color(0xff959595);
  static final Color starColorDark = Color(0xFFFFF714);
  static final Color backgroundDark = Color(0xff1e1118);

  static final MaterialColor myGreen = const MaterialColor(0xff549132, const {
    50: const Color(0x10549132),
    100: const Color(0x25549132),
    200: const Color(0x40549132),
    300: const Color(0x55549132),
    400: const Color(0x70549132),
    500: const Color(0x85549132),
    600: const Color(0xA0549132),
    700: const Color(0xB5549132),
    800: const Color(0xD0549132),
    900: const Color(0xE5549132)
  });
}
