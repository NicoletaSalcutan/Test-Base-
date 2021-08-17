import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'theme_data.dart';

TextStyle get body1 =>
    GoogleFonts.roboto(fontSize: 16.0, color: AppColor.secondary2);
TextStyle get body2 => GoogleFonts.roboto(
    fontSize: 20.0,
    color: AppColor.secondary,
    fontWeight: FontWeight.w700,
    letterSpacing: 1.0);
TextStyle get body3 => GoogleFonts.roboto(
    fontSize: 15.0, color: AppColor.secondary2, fontWeight: FontWeight.w500);
TextStyle get body4 => GoogleFonts.roboto(
      fontSize: 14.0,
      color: Colors.white,
    );
TextStyle get copyright => GoogleFonts.roboto(
      fontSize: 12.0,
      color: AppColor.primary3,
    );
