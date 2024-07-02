import 'package:flutter/material.dart';
import 'package:myapp/commands/core/app_color.dart';

import 'widget_image.dart';
import 'widget_image_network.dart';

class WidgetCircleAvatar extends StatefulWidget {
  final String? url;
  final double? width;
  final double? height;
  final Function? onTap;
  final double? radius;
  final Color? borderColor;

  const WidgetCircleAvatar(
      {Key? key,
      this.height,
      this.width,
      this.url,
      this.onTap,
      this.radius,
      this.borderColor})
      : super(key: key);

  @override
  State<WidgetCircleAvatar> createState() => _WidgetCircleAvatarState();
}

class _WidgetCircleAvatarState extends State<WidgetCircleAvatar> {
  @override
  Widget build(BuildContext context) {
    return widget.url != null
        ? Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
              color: Colors.white,
              border: Border.all(
                  color: widget.borderColor ?? ColorConst.borderInputColor),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                100,
              ),
              child: WidgetImage(
                url: widget.url ?? '',
                onTap: () {
                  widget.onTap?.call();
                },
                height: widget.height ?? MediaQuery.of(context).size.width / 5,
                width: widget.width ?? MediaQuery.of(context).size.width / 5,
                fit: BoxFit.cover,
              ),
            ),
          )
        : Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
              color: Colors.white,
              border: Border.all(
                  color: widget.borderColor ?? ColorConst.borderInputColor),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                100,
              ),
              child: WidgetImageNetWork(
                url: "",
                onTap: () {
                  widget.onTap?.call();
                },
                height: widget.height ?? MediaQuery.of(context).size.width / 5,
                width: widget.width ?? MediaQuery.of(context).size.width / 5,
                fit: BoxFit.cover,
              ),
            ),
          );
  }
}
