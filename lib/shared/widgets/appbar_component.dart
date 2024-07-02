import 'package:flutter/material.dart';
import 'package:myapp/commands/core/app_color.dart';
import 'package:myapp/commands/core/app_style.dart';
import 'package:myapp/shared/widgets/widget_circle_avatar.dart';

class AppBarComponent extends StatelessWidget {
  final String title;
  final bool? showBack;
  final Function? callBack;
  const AppBarComponent(
      {Key? key, required this.title, this.showBack = true, this.callBack})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          // left: 16,
          top: 15 + MediaQuery.of(context).padding.top,
          bottom: 15,
          right: 16),
      color: AppColors.primaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              color: Colors.transparent,
              child: Row(
                children: [
                  showBack == true
                      ? GestureDetector(
                          onTap: () async {
                            (callBack != null) ? callBack?.call() : null;
                          },
                          child: Container(
                            color: Colors.transparent,
                            padding: const EdgeInsets.only(
                                right: 10, top: 10, left: 16, bottom: 10),
                            child: const Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        )
                      : const SizedBox(
                          width: 16,
                        ),
                  Expanded(
                    child: Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyles.header.copyWith(color: AppColors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              // GestureDetector(
              //   onTap: () {},
              //   child: Assets.icons.iconNotification.image(
              //     width: 20.5,
              //     height: 20.5,
              //     fit: BoxFit.contain,
              //   ),
              // ),
              const SizedBox(
                width: 22,
              ),
              WidgetCircleAvatar(
                url: "",
                onTap: () {},
                width: 40,
                height: 40,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
