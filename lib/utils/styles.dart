import 'package:flutter/material.dart';
import 'package:responsive_adaptive_admin_dashboard/utils/size_config.dart';

abstract class Styles {
  static TextStyle styleRegular12(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(
        context,
        fontSize: 12,
      ),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
      color: const Color(0xFFAAAAAA),
    );
  }

  static TextStyle styleRegular14(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(
        context,
        fontSize: 14,
      ),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
      color: const Color(0xFFAAAAAA),
    );
  }

  static TextStyle styleRegular16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(
        context,
        fontSize: 16,
      ),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
      color: const Color(0xff064060),
    );
  }

  static TextStyle styleMedium16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(
        context,
        fontSize: 16,
      ),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
      color: const Color(0xff064060),
    );
  }

  static TextStyle styleSemiBold16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(
        context,
        fontSize: 16,
      ),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
      color: const Color(0xff064060),
    );
  }

  static TextStyle styleBold16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(
        context,
        fontSize: 16,
      ),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
      color: const Color(0xff4EB7F2),
    );
  }

  static TextStyle styleSemiBold18(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(
        context,
        fontSize: 18,
      ),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
      color: const Color(0xffFFFFFF),
    );
  }

  static TextStyle styleMedium20(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(
        context,
        fontSize: 20,
      ),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
      color: const Color(0xffFFFFFF),
    );
  }

  static TextStyle styleSemiBold20(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(
        context,
        fontSize: 20,
      ),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
      color: const Color(0xff064060),
    );
  }

  static TextStyle styleSemiBold24(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(
        context,
        fontSize: 24,
      ),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
      color: const Color(0xff4EB7F2),
    );
  }
}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;

  double width = MediaQuery.sizeOf(context).width;

  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  }
  return width / 1920;
}
