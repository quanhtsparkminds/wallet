import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/commands/core/screen_edit.dart';
import 'package:myapp/commands/core/app_color.dart';
import 'package:myapp/shared/widgets/app_text/app_text.types.dart';
import 'package:myapp/shared/widgets/app_text/text_custom.dart';

Widget rowItemInLine(BuildContext context,
        {String title = '',
        Widget? subWidget,
        Function? onItemTap,
        SubItemType subItemType = SubItemType.TEXT,
        LineColor lineColor = LineColor.WHITE,
        Color bgColor = Colors.white,
        bool isEnd = false,
        String subTitle = '',
        Function? onSubTap}) =>
    CupertinoButton(
      onPressed: onItemTap?.call(),
      padding: EdgeInsets.zero,
      color: bgColor,
      disabledColor: bgColor,
      pressedOpacity: 0.4,
      borderRadius: BorderRadius.zero,
      child: Container(
        margin: EdgeInsets.only(left: Screen.resizeFitDevice(context, 30)),
        padding: EdgeInsets.only(right: Screen.resizeFitDevice(context, 30)),
        height: Screen.resizeFitDevice(context, 106),
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    width: Screen.resizeFitDevice(context, 1),
                    color: isEnd
                        ? AppColors.transparent
                        : lineColor == LineColor.WHITE
                            ? AppColors.white
                            : AppColors.lineGreyRow))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextCustom(
              title,
              fontCustom: FontCustom.robotoRegular,
              style: TextStyle(
                fontSize: Screen.resizeFitDevice(context, 28),
              ),
            ),
            SizedBox(width: Screen.resizeFitDevice(context, 16)),
            subItemType == SubItemType.TEXT
                ? Expanded(
                    child: TextCustom(
                      subTitle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      fontCustom: FontCustom.robotoRegular,
                      textAlign: TextAlign.right,
                    ),
                  )
                : GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: onSubTap?.call(),
                    child: subWidget)
          ],
        ),
      ),
    );

Widget iconArrow() => Image.asset(
      'assets/icons_glamo_smart_lock/icon_arrow_forward_2.png',
      height: 22,
    );

enum SubItemType { TEXT, CUSTOM }

enum LineColor { WHITE, GREY }
