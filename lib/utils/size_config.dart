import 'package:flutter/cupertino.dart';

class SizeConfig
{
  static const double desktop = 1200;
  static const double tablet = 800;
  static late double width;
  static late double height;

  static init (BuildContext context)
  {
    width = MediaQuery.sizeOf(context).width;
    height = MediaQuery.sizeOf(context).height;
  }
}