import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';

class ConnectInternet {
  static OverlaySupportEntry? entryNoInternet;
  static OverlaySupportEntry? entryInternet;

  static void showNoInternet(BuildContext context) {
    entryInternet?.dismiss();
    entryNoInternet = showOverlayNotification((context) {
      return Card(
          margin: EdgeInsets.zero,
          child: SafeArea(
            child: Container(
              padding: EdgeInsets.all(5.0),
              color: Colors.blueAccent,
              child: Row(children: [
                Container(
                  margin: const EdgeInsets.only(right:6.00),
                  child: Icon(Icons.info, color: Colors.white),
                ), // icon for error message

                Text('Không có internet',
                    style: TextStyle(color: Colors.white)),
                //show error message text
              ]),
            ),

          ),
      );
    },   duration:  const Duration(seconds: 10),
      key: ModalKey(const Object()),);

    Future.delayed(Duration(seconds: 10)).then((value) => {
      entryNoInternet?.dismiss(),
    });
  }

  static void showInternet(BuildContext context) {
    entryNoInternet?.dismiss();

    entryInternet = showOverlayNotification((context) {
      return Card(
        margin: EdgeInsets.zero,
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(5.0),
            color: Colors.green,
            child: Row(children: [
              Container(
                margin: EdgeInsets.only(right:6.00),
                child: Icon(Icons.emoji_emotions_outlined, color: Colors.white),
              ), // icon for error message

              Text( 'Kết nối với internet',
                  style: TextStyle(color: Colors.white)),
              //show error message text
            ]),
          ),

        ),
      );
    },   duration:  Duration(seconds: 10),
      key: ModalKey(const Object()),);

    Future.delayed(Duration(seconds: 10)).then((value) => {
      entryInternet?.dismiss(),
    });
  }


}
