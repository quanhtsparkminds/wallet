// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:green_agri_merchant_app/exported_packages.dart';
// import 'package:green_agri_merchant_app/shared/widgets/popover/snack_bar.dart';
// import 'package:photo_view/photo_view.dart';

// class WidgetImageView extends StatelessWidget {
//   final String? url;
//   final String? path;

//   WidgetImageView({Key? key, this.url, this.path}) : super(key: key);
//   final spinKit = SpinKitCircle(
//     color: ColorConst.primaryColor,
//     size: 50.0,
//   );

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: ColorConst.grey,
//       // The image is stored as a file on the device. Use the `Image.file`
//       // constructor with the given path to display the image.

//       body: SafeArea(
//         child: Stack(
//           children: [
//             _photoView(),
//             GestureDetector(
//               onTap: () {
//                 Navigator.of(context).pop();
//               },
//               child: const Padding(
//                 padding: EdgeInsets.all(16.0),
//                 child: Icon(
//                   Icons.arrow_back_outlined,
//                   color: Colors.white,
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _photoView() {
//     ImageProvider? _imageProvider = getImage();

//     return PhotoView(
//       imageProvider: _imageProvider,
//       // Contained = the smallest possible size to fit one dimension of the screen
//       minScale: PhotoViewComputedScale.contained * 0.8,
//       // Covered = the smallest possible size to fit the whole screen
//       maxScale: PhotoViewComputedScale.covered * 3,
//       loadingBuilder: (context, event) {
//         return Center(child: spinKit);
//       },
//       // enableRotation: true,
//     );
//   }

//   getImage() {
//     if (path != null && path!.isNotEmpty) {
//       return FileImage(File(path!));
//     }
//     if (url != null && url!.isNotEmpty) {
//       return NetworkImage(url!);
//     }

//     showSnackBar(
//         title: "Thông báo",
//         textColor: AppColors.focus,
//         body: "Tập tin đang bị lội hiện tại chưa thể mở được",
//         backgroundColor: Colors.red);
//     return null;
//   }
// }
