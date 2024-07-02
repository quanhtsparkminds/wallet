import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:myapp/commands/core/app_color.dart';
import 'package:myapp/gen/assets.gen.dart';

import 'widget_image_network.dart';

class WidgetImage extends StatelessWidget {
  final String? url;
  final double? width;
  final double? height;
  final Function? onTap;
  final BoxFit? fit;

  WidgetImage(
      {Key? key, this.url, this.height, this.width, this.onTap, this.fit})
      : super(key: key);

  final spinKit = SpinKitCircle(
    color: ColorConst.primaryColor,
    size: 50.0,
  );

  @override
  Widget build(BuildContext context) {
    if (url != null && url!.contains('assets/')) {
      return Image.asset(
        url!,
        height: height,
        width: width,
        fit: fit ?? BoxFit.cover,
      );
    }
    if (url != null || url == '' || url == 'null') {
      if (url?.contains('http') == true) {
        return WidgetImageNetWork(
          url: url,
          height: height,
          onTap: onTap,
          width: width,
          fit: fit ?? BoxFit.cover,
        );
      } else {
        return Image(
          image: FileImage(File(url!)),
          height: height,
          width: width,
          fit: fit ?? BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return Container(
                height: height,
                width: width,
                child: Assets.images.logo.image(fit: fit ?? BoxFit.cover));
          },
        );
      }
    }
    return Container(
        height: height,
        width: width,
        child: Assets.images.logo.image(fit: fit ?? BoxFit.cover));
  }
}
