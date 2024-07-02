import 'package:flutter/material.dart';
import 'package:myapp/commands/core/app_color.dart';
import 'package:myapp/gen/assets.gen.dart';
import 'package:myapp/shared/widgets/widget_circle_avatar.dart';

class AppBarDashBoardView extends StatelessWidget {
  const AppBarDashBoardView({
    Key? key,
    required this.theme,
    required MediaQueryData mediaQueryData,
  })  : _mediaQueryData = mediaQueryData,
        super(key: key);

  final ThemeData theme;
  final MediaQueryData _mediaQueryData;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryColor,
      padding: EdgeInsets.only(
        bottom: 16,
        right: 20,
        top: 16 + _mediaQueryData.padding.top,
        left: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Assets.images.logoWithTextDark.image(
            width: 100,
            height: 60,
            fit: BoxFit.contain,
          ),
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {},
                child: Assets.images.icBell.image(
                  width: 20.5,
                  height: 20.5,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(
                width: 22,
              ),
              WidgetCircleAvatar(
                url: "",
                onTap: () {},
                width: 40,
                height: 40,
              )
            ],
          )
        ],
      ),
    );
  }
}

// Container(
//               // header5t4 (135:1110)
//               width: double.infinity,
//               height: 103.55 * fem,
//               decoration: BoxDecoration(
//                 color: Color(0xfff77737),
//                 borderRadius: BorderRadius.only(
//                   bottomRight: Radius.circular(12 * fem),
//                   bottomLeft: Radius.circular(12 * fem),
//                 ),
//               ),
//               child: Stack(
//                 children: [
//                   Positioned(
//                     // group35162RPW (140:1140)
//                     left: 272 * fem,
//                     top: 48.1591796875 * fem,
//                     child: Container(
//                       width: 27 * fem,
//                       height: 27.68 * fem,
//                       child: Stack(
//                         children: [
//                           Positioned(
//                             // icbell39z (140:1141)
//                             left: 2.578704834 * fem,
//                             top: 9.0986328125 * fem,
//                             child: Align(
//                               child: SizedBox(
//                                 width: 14.84 * fem,
//                                 height: 16.66 * fem,
//                                 child: Image.asset(
//                                   'assets/learnex-app/images/ic-bell-QbJ.png',
//                                   width: 14.84 * fem,
//                                   height: 16.66 * fem,
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Positioned(
//                             // group35161GYY (140:1142)
//                             left: 9 * fem,
//                             top: 0 * fem,
//                             child: Container(
//                               width: 18 * fem,
//                               height: 18.45 * fem,
//                               decoration: BoxDecoration(
//                                 image: DecorationImage(
//                                   fit: BoxFit.cover,
//                                   image: AssetImage(
//                                     'assets/learnex-app/images/ellipse-801.png',
//                                   ),
//                                 ),
//                               ),
//                               child: Center(
//                                 child: Text(
//                                   '5',
//                                   style: SafeGoogleFont(
//                                     'Mulish',
//                                     fontSize: 8 * ffem,
//                                     fontWeight: FontWeight.w700,
//                                     height: 1 * ffem / fem,
//                                     color: Color(0xffffffff),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     // logom7v (220:1046)
//                     left: 1 * fem,
//                     top: 34 * fem,
//                     child: Align(
//                       child: SizedBox(
//                         width: 149 * fem,
//                         height: 51 * fem,
//                         child: Image.asset(
//                           'assets/learnex-app/images/logo-1YC.png',
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     // ellipse803RCU (220:1047)
//                     left: 311 * fem,
//                     top: 41 * fem,
//                     child: Align(
//                       child: SizedBox(
//                         width: 44 * fem,
//                         height: 44 * fem,
//                         child: Container(
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(22 * fem),
//                             image: DecorationImage(
//                               fit: BoxFit.cover,
//                               image: AssetImage(
//                                 'assets/learnex-app/images/ellipse-803-bg-iWC.png',
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),