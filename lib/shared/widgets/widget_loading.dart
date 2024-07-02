import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:myapp/constants/app_color.dart';
import 'package:myapp/constants/style_constant.dart';

class WidgetLoading extends StatelessWidget {
  final bool notData;
  final int? count;
  final String? title;
  final String? titleNotData;

  WidgetLoading(
      {Key? key,
      this.notData = false,
      this.title,
      this.titleNotData,
      this.count = 0})
      : super(key: key);

  final spinkit = SpinKitCircle(
    color: ColorConst.primaryColor,
    size: 20.0,
  );

  getTextNotData() {
    if (count == 0) {
      return "Chưa có bài viết nào";
    }
    return "Không còn dữ liệu để hiển thị.";
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: notData
          ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                titleNotData ?? getTextNotData(),
                style: StyleConst.mediumStyle(fontStyle: FontStyle.italic),
                textAlign: TextAlign.center,
              ),
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                spinkit,
                const SizedBox(
                  width: 10,
                ),
                Text(
                  title ?? "Đang tải...",
                  style: StyleConst.regularStyle(),
                ),
              ],
            ),
    );
  }
}
