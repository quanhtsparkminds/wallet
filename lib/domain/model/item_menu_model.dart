import 'package:flutter/material.dart';

class ItemMenuModel {
  final String title;
  final Image imageAssets;
  final Function onTap;

  ItemMenuModel(
      {required this.title, required this.imageAssets, required this.onTap});
}

class BottomNavigationModel {
  Widget? title;
  Widget? icon;
  Widget? activeIcon;

  BottomNavigationModel({this.title, this.icon, this.activeIcon});
}
