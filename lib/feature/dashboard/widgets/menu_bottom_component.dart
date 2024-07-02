import 'package:flutter/material.dart';
import 'package:myapp/constants/style_constant.dart';

class MenuBottomComponent extends StatelessWidget {
  final List<MenuBottomModel> listData;
  const MenuBottomComponent({Key? key, required this.listData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 88,
      padding: const EdgeInsets.only(top: 16, bottom: 12, right: 16, left: 16),
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffe8eaed), width: 1),
          color: const Color(0xffffffff)),
      child: Row(
        children: List.generate(listData.length,
            (index) => Expanded(child: itemMenu(data: listData[index]))),
      ),
    );
  }

  Widget itemMenu({required MenuBottomModel data}) {
    return GestureDetector(
      onTap: () {
        data.onTap.call();
      },
      child: Container(
        color: Colors.transparent,
        child: Column(
          children: [
            data.icon,
            const SizedBox(
              height: 10,
            ),
            Text(
              data.title,
              style: StyleConst.mediumStyle(color: data.color),
            )
          ],
        ),
      ),
    );
  }
}

class MenuBottomModel {
  final String title;
  final Widget icon;
  final Function onTap;
  final Color color;

  MenuBottomModel(
      {required this.title,
      required this.icon,
      required this.onTap,
      required this.color});
}
