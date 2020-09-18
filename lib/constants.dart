import 'package:flutter/material.dart';

const Color kPrimaryColor = Colors.black;
const Color kAccentColor = Colors.white;

//constant functions
double sizeFromHeight(BuildContext context, double fraction,
    {bool removeAppBarSize = true}) {
  double deviceHeight = MediaQuery.of(context).size.height;
  fraction = (removeAppBarSize
      ? (deviceHeight - AppBar().preferredSize.height)
      : deviceHeight) /
      (fraction == 0 ? 1 : fraction);
  return fraction;
}

double sizeFromWidth(BuildContext context, double fraction) {
  fraction = MediaQuery.of(context).size.width / (fraction == 0 ? 1 : fraction);
  return fraction;
}