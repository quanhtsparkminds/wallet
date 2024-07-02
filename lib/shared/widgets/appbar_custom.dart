import 'package:flutter/material.dart';
import 'package:myapp/commands/core/screen_edit.dart';
import 'package:myapp/constants/app_color.dart';
import 'package:myapp/shared/widgets/app_text/app_text.types.dart';
import 'package:myapp/shared/widgets/app_text/text_custom.dart';

Widget appBarCustom(BuildContext context,
        {required Function leadingPress,
        Function? rightPress,
        String title = '',
        String titleLeading = '',
        bool hideBackground = false,
        Widget? titleCustom,
        double elevation = 0,
        Color leadingIconColor = const Color(0xff504D49),
        Color? appBarColor,
        LeadingType leadingType = LeadingType.drawer,
        bool isLongAction = false,
        List<Widget> action = const [],
        double appbarSize = 88}) =>
    PreferredSize(
      preferredSize:
          Size.fromHeight(Screen.resizeFitDevice(context, appbarSize)),
      child: AppBar(
        flexibleSpace: hideBackground
            ? Container()
            : Container(
                color: appBarColor,
              ),
        backgroundColor: Colors.transparent,
        elevation: elevation,
        centerTitle: true,
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        title: Row(
          children: [
            SizedBox(
                width: Screen.resizeFitDevice(context, 196),
                child: LeadingButtonCustom(
                  leadingPress: leadingPress,
                  titleLeading: titleLeading,
                  leadingType: leadingType,
                )),
            Expanded(
                child: titleCustom ??
                    TextCustom(
                      title,
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      fontCustom: FontCustom.notoSansJPRegular,
                    )),
            SizedBox(
                width: Screen.resizeFitDevice(context, 196),
                child: Container(
                  alignment: Alignment.centerRight,
                  child: FittedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(width: Screen.resizeFitDevice(context, 10)),
                        Row(
                          children: action,
                        ),
                        const TextCustom(''),
                        SizedBox(
                          width: Screen.resizeFitDevice(context, 24),
                        )
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );

class LeadingButtonCustom extends StatefulWidget {
  final Function? leadingPress;
  final LeadingType leadingType;
  final String titleLeading;

  const LeadingButtonCustom({
    Key? key,
    this.leadingPress,
    required this.leadingType,
    required this.titleLeading,
  }) : super(key: key);

  @override
  State<LeadingButtonCustom> createState() => _LeadingButtonCustomState();
}

class _LeadingButtonCustomState extends State<LeadingButtonCustom> {
  bool isTapDown = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTapDown: (details) {
        setState(() {
          isTapDown = true;
        });
      },
      onTapUp: (details) {
        setState(() {
          isTapDown = false;
        });
      },
      onTapCancel: () {
        setState(() {
          isTapDown = false;
        });
      },
      onTap: () {
        widget.leadingPress ?? Navigator.of(context).pop();
      },
      child: widget.leadingType == LeadingType.drawer
          ? Row(
              children: [
                SizedBox(width: Screen.resizeFitDevice(context, 56)),
                Icon(
                  Icons.menu_outlined,
                  color: isTapDown ? AppColors.balaGray : AppColors.balaGray,
                ),
              ],
            )
          : widget.leadingType == LeadingType.none
              ? Row(
                  children: [
                    SizedBox(width: Screen.resizeFitDevice(context, 56)),
                  ],
                )
              : Row(
                  children: [
                    SizedBox(width: Screen.resizeFitDevice(context, 24)),
                    SizedBox(
                      width: Screen.resizeFitDevice(context, 32),
                      child: Image.asset(
                        'assets/icons/back-button-icon.png',
                        color:
                            isTapDown ? AppColors.balaGray : AppColors.balaGray,
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(
                            vertical: Screen.resizeFitDevice(context, 40)),
                        child: TextCustom(
                          widget.titleLeading != ''
                              ? widget.titleLeading
                              : widget.leadingType == LeadingType.top
                                  ? 'TOP'
                                  : 'BACK',
                          style: TextStyle(
                            color: isTapDown
                                ? AppColors.balaGray
                                : AppColors.balaGray,
                            fontSize: Screen.resizeFitDevice(context, 28),
                          ),
                          overflow: TextOverflow.ellipsis,
                          fontCustom: FontCustom.notoSansJPRegular,
                        ))
                  ],
                ),
    );
  }
}

enum LeadingType { drawer, top, back, none }
