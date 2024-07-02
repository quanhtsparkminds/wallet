import 'package:flutter/cupertino.dart';
import 'package:iphone_has_notch/iphone_has_notch.dart';
import 'dart:io';
import 'dart:ui' as ui;

class Screen {
  static double getWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static EdgeInsets padding(BuildContext context) {
    return MediaQuery.of(context).padding;
  }

  static double resizeWidthUtil(BuildContext context, double value) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenDesignWidth = 750;
    return (screenWidth * value) / screenDesignWidth;
  }

  static double resizeHeightUtil(BuildContext context, double value) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenDesignHeight = 1334;
    return (screenHeight * value) / screenDesignHeight;
  }

  static double resizeFitDevice(BuildContext context, double value) {
    if (isSmallDevice) {
      return resizeWidthUtil(context, value);
    }
    return resizePoint(context, value);
  }

  static double resizePoint(BuildContext context, double value) {
    return (value / 2);
  }

  static double calculateWidthAndPositionXButton(
      BuildContext context, double value, widthPortraitG4) {
    var screenWidth = MediaQuery.of(context).size.width;
    return ((value * screenWidth) / widthPortraitG4).toDouble();
  }

  static double calculateHeightAndPositionYButton(
      BuildContext context, double value, heightPortraitG4) {
    var screenHeight = MediaQuery.of(context).size.height;
    return ((value * screenHeight) / heightPortraitG4).toDouble();
  }

  // new for air_iremocon
  static double calculateWidthAndPositionXButtonNew(
      BuildContext context, num value, widthPortraitG4) {
    var screenWidth = MediaQuery.of(context).size.width;
    return ((value * screenWidth) / widthPortraitG4).toDouble();
  }

  static double calculateHeightAndPositionYButtonNew(
      BuildContext context, num value, heightPortraitG4,
      {double valueSlide = 1}) {
    var screenHeight = IphoneHasNotch.hasNotch
        ? MediaQuery.of(context).size.height / 1.9
        : MediaQuery.of(context).size.height / 1.5;
    return ((value * screenHeight * valueSlide) / heightPortraitG4).toDouble();
  }

  static double calculateAcSliderHeight(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    var screenDesignHeight = 1334;

    /// Background imageSize = 675x350;
    return ((350 / 675) * (screenWidth / screenHeight) * screenDesignHeight)
        .toDouble();
  }

  static double calculateAcSliderHeightWithoutSpace(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    var screenDesignHeight = 1334;

    return ((290 / 675) * (screenWidth / screenHeight) * screenDesignHeight)
        .toDouble();
  }

  static bool get isSmallDevice {
    if (Platform.isIOS &&
        // Iphone 4"
        (ui.window.physicalSize.height.toInt() == 568 ||
            ui.window.physicalSize.height.toInt() == 568 * 2 ||
            // Iphone 3.5"
            ui.window.physicalSize.height.toInt() == 480 ||
            ui.window.physicalSize.height.toInt() == 480 * 2)) {
      return true;
    } else if (Platform.isAndroid) {
      double ratioSize =
          ui.window.physicalSize.width / ui.window.physicalSize.height;
      if (ratioSize >= 9 / 16 &&
          ui.window.physicalSize.width < ui.window.physicalSize.height) {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }
}
