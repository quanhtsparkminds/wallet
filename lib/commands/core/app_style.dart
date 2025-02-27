import 'package:flutter/material.dart';
import 'package:myapp/commands/core/app_color.dart';

const List<Color> colorList = [
  Color(0xFFF4511E),
  Color(0xFFFDD835),
  Color(0xFF7CB342),
  Color(0xFF00ACC1),
  Color(0xFF673AB7),
  Color(0xFFE53935),
  Color(0xFFD81B60),
  Color(0xFF8E24AA),
  Color(0xFF3949AB),
  Color(0xFF1E88E5),
  Color(0xFF039BE5),
  Color(0xFF00ACC1),
  Color(0xFF00897B),
  Color(0xFF43A047),
  Color(0xFF7CB342),
  Color(0xFFC0CA33),
];

const headLine6 = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w500,
  color: Colors.grey,
  overflow: TextOverflow.ellipsis,
);

const headLine5 = TextStyle(fontSize: 15, fontWeight: FontWeight.bold);

const headLine4 = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w700,
  overflow: TextOverflow.ellipsis,
);

const headLine3 = TextStyle(
  fontSize: 17,
  fontWeight: FontWeight.w700,
  overflow: TextOverflow.ellipsis,
);

const headLine2 = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.bold,
  overflow: TextOverflow.ellipsis,
);

const headLine1 = TextStyle(fontSize: 20, fontWeight: FontWeight.w900);

const focusedBorder = OutlineInputBorder(
  borderSide: BorderSide(color: Colors.black54, width: 2.0),
  borderRadius: BorderRadius.all(Radius.circular(10.0)),
);

const enabledBorder = OutlineInputBorder(
  borderSide: BorderSide(color: Colors.black12, width: 1.0),
  borderRadius: BorderRadius.all(Radius.circular(10.0)),
);

const errorBorder = OutlineInputBorder(
  borderSide: BorderSide(width: 3, color: Colors.redAccent),
  borderRadius: BorderRadius.all(Radius.circular(10.0)),
);

const inputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(10.0)),
  borderSide: BorderSide(color: Colors.redAccent),
);

const focusedErrorBorder = OutlineInputBorder(
  borderSide: BorderSide(width: 3, color: Colors.redAccent),
  borderRadius: BorderRadius.all(
    Radius.circular(10.0),
  ),
);

class Times {
  static const Duration fastest = Duration(milliseconds: 150);
  static const fast = Duration(milliseconds: 250);
  static const medium = Duration(milliseconds: 350);
  static const slow = Duration(milliseconds: 700);
  static const slower = Duration(milliseconds: 1000);
}

class Sizes {
  static double hitScale = 1;
  static double get hit => 40 * hitScale;
  static const double smallPhone = 500;
  static const double largePhone = 700;
}

class IconSizes {
  static const double scale = 1;
  static const double med = 24;
}

class Insets {
  static double scale = 1;
  static double offsetScale = 1;
  // Regular paddings
  static double get xs => 4 * scale;
  static double get sm => 8 * scale;
  static double get med => 12 * scale;
  static double get lg => 16 * scale;
  static double get xl => 32 * scale;
  // Offset, used for the edge of the window, or to separate large sections in the app
  static double get offset => 40 * offsetScale;
}

OutlineInputBorder kOutlineInputBorder = OutlineInputBorder(
  borderSide: const BorderSide(
      width: 1, style: BorderStyle.solid, color: AppColors.borderInputColor),
  borderRadius: BorderRadius.circular(10),
  gapPadding: 10,
);
InputDecoration kDefaultInputDecoration = InputDecoration(
    alignLabelWithHint: true,
    fillColor: Colors.white,
    focusColor: Colors.white,
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
    enabledBorder: kOutlineInputBorder,
    disabledBorder: kOutlineInputBorder,
    border: kOutlineInputBorder,
    errorBorder: kOutlineInputBorder.copyWith(
        borderSide: const BorderSide(color: Colors.red)),
    focusedErrorBorder: kOutlineInputBorder.copyWith(
        borderSide: const BorderSide(color: Colors.red)),
    focusedBorder: kOutlineInputBorder.copyWith(
        borderSide: const BorderSide(color: AppColors.primaryColor)),
    filled: true,
    labelStyle: const TextStyle(height: -1));

class Corners {
  static const double sm = 3;
  static const BorderRadius smBorder = BorderRadius.all(smRadius);
  static const Radius smRadius = Radius.circular(sm);

  static const double med = 5;
  static const BorderRadius medBorder = BorderRadius.all(medRadius);
  static const Radius medRadius = Radius.circular(med);

  static const double lg = 8;
  static const BorderRadius lgBorder = BorderRadius.all(lgRadius);
  static const Radius lgRadius = Radius.circular(lg);
}

class Strokes {
  static const double thin = 1;
  static const double thick = 4;
}

class Shadows {
  static List<BoxShadow> get universal => [
        BoxShadow(
            color: Color(0xff000000).withOpacity(.11),
            spreadRadius: 0,
            blurRadius: 7,
            offset: Offset(1, 2)),
      ];
  static List<BoxShadow> get small => [
        BoxShadow(
            color: Color(0xff333333).withOpacity(.15),
            spreadRadius: 0,
            blurRadius: 3,
            offset: Offset(0, 1)),
      ];
}

/// Font Sizes
/// You can use these directly if you need, but usually there should be a predefined style in TextStyles.
class FontSizes {
  /// Provides the ability to nudge the app-wide font scale in either direction
  static double get scale => 1;
  static double get s10 => 10 * scale;
  static double get s11 => 11 * scale;
  static double get s12 => 12 * scale;
  static double get s13 => 13 * scale;
  static double get s14 => 14 * scale;
  static double get s15 => 15 * scale;
  static double get s16 => 16 * scale;
  static double get s18 => 18 * scale;

  static double get s24 => 24 * scale;
  static double get s48 => 48 * scale;
}

/// Fonts - A list of Font Families, this is uses by the TextStyles class to create concrete styles.
class Fonts {
  static const String raleway = 'Raleway';
  static const String fraunces = 'Fraunces';
  static const String cabin = 'Cabin';
}

/// TextStyles - All the core text styles for the app should be declared here.
/// Don't try and create every variant in existence here, just the high level ones.
/// More specific variants can be created on the fly using `style.copyWith()`
/// `newStyle = TextStyles.body1.copyWith(lineHeight: 2, color: Colors.red)`
class TextStyles {
  //Declare a base style for each Family
  static const TextStyle raleway = TextStyle(
    fontFamily: Fonts.raleway,
    fontWeight: FontWeight.w400,
    height: 1,
  );
  static const TextStyle fraunces = TextStyle(
      fontFamily: Fonts.fraunces, fontWeight: FontWeight.w400, height: 1);
  static TextStyle cabin = TextStyle(
      fontFamily: Fonts.cabin,
      fontWeight: FontWeight.w400,
      height: 1,
      color: AppColors.grey);

  // static TextStyle get h1 => fraunces.copyWith(
  //     fontWeight: FontWeight.w600,
  //     fontSize: FontSizes.s48,
  //     letterSpacing: -1,
  //     height: 1.17);
  // static TextStyle get h2 =>
  //     h1.copyWith(fontSize: FontSizes.s24, letterSpacing: -.5, height: 1.16);
  // static TextStyle get h3 =>
  //     h1.copyWith(fontSize: FontSizes.s14, letterSpacing: -.05, height: 1.29);
  // static TextStyle get title1 => raleway.copyWith(
  //     fontWeight: FontWeight.bold, fontSize: FontSizes.s16, height: 1.31);
  // static TextStyle get title2 => title1.copyWith(
  //     fontWeight: FontWeight.w500, fontSize: FontSizes.s14, height: 1.36);
  // static TextStyle get body1 => raleway.copyWith(
  //     fontWeight: FontWeight.normal, fontSize: FontSizes.s14, height: 1.71);
  // static TextStyle get body2 =>
  //     body1.copyWith(fontSize: FontSizes.s12, height: 1.5, letterSpacing: .2);
  // static TextStyle get body4 =>
  //     body1.copyWith(fontSize: FontSizes.s14, height: 1.5, letterSpacing: .2);

  // static TextStyle get body3 => body1.copyWith(
  //     fontSize: FontSizes.s12, height: 1.5, fontWeight: FontWeight.bold);
  // static TextStyle get body5 => body1.copyWith(
  //     fontSize: FontSizes.s14, height: 1.5, fontWeight: FontWeight.bold);
  static TextStyle get callout1 => raleway.copyWith(
      fontWeight: FontWeight.w800,
      fontSize: FontSizes.s12,
      height: 1.17,
      letterSpacing: .5);
  static TextStyle get callout2 =>
      callout1.copyWith(fontSize: FontSizes.s10, height: 1, letterSpacing: .25);
  static TextStyle get caption => raleway.copyWith(
      fontWeight: FontWeight.w500, fontSize: FontSizes.s11, height: 1.36);

  static TextStyle get header => cabin.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: FontSizes.s18,
      );
  static TextStyle get bigPrice => cabin.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: FontSizes.s15,
      );
  static TextStyle get smallPrice => cabin.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: FontSizes.s13,
      );
  static TextStyle get titleBold => cabin.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: FontSizes.s14,
      );
  static TextStyle get titleMed => cabin.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: FontSizes.s14,
      );
  static TextStyle get titleReg => cabin.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: FontSizes.s14,
      );
  static TextStyle get defaultBold => cabin.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: FontSizes.s13,
      );
  static TextStyle get defaultMed => cabin.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: FontSizes.s13,
      );
  static TextStyle get defaultReg => cabin.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: FontSizes.s13,
        height: 1.50,
        color: AppColors.greyWeak,
      );
  static TextStyle get defaultError => cabin.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: FontSizes.s13,
        height: 1.50,
        color: Colors.red,
      );
}
