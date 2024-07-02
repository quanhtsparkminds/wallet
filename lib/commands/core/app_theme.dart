// import 'package:flutter/material.dart';
// import 'package:myapp/commands/core/app_string.dart';
// import 'package:myapp/commands/core/app_style.dart';
// import 'package:myapp/constants/app_color.dart';

// class AppTheme {
//   AppTheme._();

//   static ThemeData darkAppTheme = ThemeData(
//     appBarTheme: const AppBarTheme(color: Color(0xFFF4511E), centerTitle: true),
//     dialogTheme: const DialogTheme(
//       shape: RoundedRectangleBorder(
//         side: BorderSide(color: Color(0xFFF4511E), width: 1.0),
//         borderRadius: BorderRadius.all(Radius.circular(15.0)),
//       ),
//     ),
//     inputDecorationTheme: const InputDecorationTheme(
//       enabledBorder: enabledBorder,
//       focusedBorder: focusedBorder,
//       errorBorder: errorBorder,
//       border: inputBorder,
//       filled: true,
//     ),
//     elevatedButtonTheme: ElevatedButtonThemeData(
//       style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFF4511E)),
//     ),
//     floatingActionButtonTheme: const FloatingActionButtonThemeData(
//       backgroundColor: Color(0xFFF4511E),
//     ),
//     textTheme: const TextTheme(
//       titleLarge: TextStyle(
//           fontSize: 36.0, color: Colors.white, fontWeight: FontWeight.w600),
//       headlineSmall: TextStyle(
//         fontWeight: FontWeight.w600,
//         fontSize: 14,
//         color: Color(0xff00FFE0),
//         // fontFamily: 'OpenSansRegular',
//       ),
//       headlineMedium: TextStyle(
//         fontWeight: FontWeight.w700,
//         fontSize: 15,
//         // color: Color(0xff00FFE0),
//         color: Color(0xff1c1b1f),
//       ),
//       titleMedium:
//           TextStyle(fontWeight: FontWeight.w600, color: AppColors.grey7Light),
//       bodySmall:
//           TextStyle(fontWeight: FontWeight.w400, color: AppColors.grey7Light),
//       bodyMedium:
//           TextStyle(fontWeight: FontWeight.w400, color: AppColors.grey7Light),
//       bodyLarge:
//           TextStyle(fontWeight: FontWeight.w600, color: AppColors.grey7Light),
//       titleSmall:
//           TextStyle(fontWeight: FontWeight.w400, color: AppColors.grey6Light),
//     ),
//     fontFamily: AppString.appFont,
//     textButtonTheme: TextButtonThemeData(
//       style: TextButton.styleFrom(
//         foregroundColor: Colors.black54,
//         shape: const RoundedRectangleBorder(
//           side: BorderSide(color: Colors.grey),
//         ),
//       ),
//     ),
//     timePickerTheme: TimePickerThemeData(
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.all(Radius.circular(8)),
//         side: BorderSide(color: Colors.grey, width: 2),
//       ),
//       dialHandColor: const Color(0xFFF4511E),
//       hourMinuteColor: MaterialStateColor.resolveWith(
//         (states) => states.contains(MaterialState.selected)
//             ? const Color(0xFFF4511E)
//             : Colors.black12,
//       ),
//       hourMinuteTextColor: MaterialStateColor.resolveWith(
//         (states) => states.contains(MaterialState.selected)
//             ? Colors.black54
//             : Colors.grey,
//       ),
//       dayPeriodBorderSide: const BorderSide(color: Colors.grey),
//       dayPeriodShape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(5),
//       ),
//       dayPeriodColor: Colors.transparent,
//       dayPeriodTextColor: MaterialStateColor.resolveWith(
//         (states) => states.contains(MaterialState.selected)
//             ? const Color(0xFFF4511E)
//             : Colors.black12,
//       ),
//       hourMinuteShape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10),
//         side: const BorderSide(color: Colors.black12),
//       ),
//     ),
//     bottomSheetTheme: const BottomSheetThemeData(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(20),
//           topRight: Radius.circular(20),
//         ),
//       ),
//     ),
//   );
// }
