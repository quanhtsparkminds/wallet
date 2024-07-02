import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:myapp/constants/app_color.dart';
import 'package:myapp/gen/assets.gen.dart';

class WidgetImageNetWork extends StatelessWidget {
  final String? url;
  final double? width;
  final double? height;
  final Function? onTap;
  final BoxFit? fit;

  const WidgetImageNetWork(
      {Key? key, this.url, this.height, this.width, this.onTap, this.fit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final spinKit = SpinKitCircle(
      color: AppColors.bg1,
      size: height != null ? height! / 2 : 50.0,
    );
    if (url != null && url!.isNotEmpty && url != "null") {
      return GestureDetector(
        onTap: () {
          onTap?.call();
        },
        child: CachedNetworkImage(
          imageUrl: url!,
          fit: fit ?? BoxFit.cover,
          height: height,
          width: width,
          placeholder: (context, url) => SizedBox(
              height: height, width: width, child: Center(child: spinKit)),
          errorWidget: (context, url, error) => Assets.images.logo.image(
            height: height,
            width: width,
            fit: fit ?? BoxFit.cover,
          ),
        ),
      );
    }
    return GestureDetector(
        onTap: () {
          onTap?.call();
        },
        child: Assets.images.logo.image(
          height: height,
          width: width,
          fit: BoxFit.contain,
        ));
  }
}
