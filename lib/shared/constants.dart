import 'package:flutter/material.dart';

//Colors
const kDarkColor = Color(0xFF1D1617);
const kDarkGrayColor = Color(0xFF7B6F72);
const kLightGrayColor = Color(0xFFADA4A5);
const kGrayColor = Color(0xFFDDDADA);
const kWhiteColor = Color(0xFFFFFFFF);

const kBorderColor = Color(0xFFF7F8F8);

//Brand Color

const kMain1BrandColor = Color(0xFF92A3FD);
const kMain2BrandColor = Color(0xFF9DCEFF);
const kSecondary1BrandColor = Color(0xFFC58BF2);
const kSecondary2BrandColor = Color(0xFFEEA4CE);

LinearGradient kBrandColor = LinearGradient(
  colors: [
    kMain2BrandColor,
    kMain1BrandColor,
  ],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);
LinearGradient kSecondaryColor = LinearGradient(
  colors: [
    kSecondary2BrandColor,
    kSecondary1BrandColor,
  ],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);
//Fonts

TextStyle k26TextStyle = TextStyle(
  fontSize: 26.0,
);
TextStyle k24TextStyle = TextStyle(
  fontSize: 24.0,
);
TextStyle k22TextStyle = TextStyle(
  fontSize: 26.0,
);
TextStyle k20TextStyle = TextStyle(
  fontSize: 24.0,
);
TextStyle k18TextStyle = TextStyle(
  fontSize: 18.0,
);
TextStyle k16TextStyle = TextStyle(
  fontSize: 24.0,
);
TextStyle k14TextStyle = TextStyle(
  fontSize: 14.0,
);
TextStyle k12TextStyle = TextStyle(
  fontSize: 12.0,
);
TextStyle k10TextStyle = TextStyle(
  fontSize: 10.0,
);
