import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum IconSize { small, medium, large, extraLarge, extraSmall }

class WidgetIcon extends StatelessWidget {
  final IconData? iconData;
  final IconSize? size;
  final double? customSize;
  final Color? color;
  final String? semanticLabel;
  final Color? backgroundColor;
  final double? radius;
  final double? padding;
  final double? height;

  static const double EXTRA_LARGE = 45.0;
  static const double LARGE_SIZE = 30.0;
  static const double MEDIUM_SIZE = 25.0;
  static const double SMALL_SIZE = 19.0;
  static const double EXTRA_SMALL = 14.0;

  const WidgetIcon(this.iconData,
      {this.height,
      this.size,
      this.customSize,
      this.color,
      this.semanticLabel,
      this.backgroundColor,
      this.padding,
      this.radius});

  @override
  Widget build(BuildContext context) {
    double iconSize;

    if (this.customSize != null) {
      iconSize = this.customSize!;
    } else {
      var finalSize = size ?? IconSize.small;
      switch (finalSize) {
        case IconSize.extraLarge:
          iconSize = EXTRA_LARGE;
          break;
        case IconSize.large:
          iconSize = LARGE_SIZE;
          break;
        case IconSize.medium:
          iconSize = MEDIUM_SIZE;
          break;
        case IconSize.small:
          iconSize = SMALL_SIZE;
          break;
        case IconSize.extraSmall:
          iconSize = EXTRA_SMALL;
          break;
        default:
          throw 'Unsupported IconSize';
      }
    }

    return Container(
        height: height,
        width: height,
        padding: EdgeInsets.all(padding ?? 0),
        decoration: BoxDecoration(
            color: backgroundColor ?? Colors.transparent,
            borderRadius: BorderRadius.all(Radius.circular(radius ?? 0))),
        child: Image.asset(
          'assets/icon/${iconData?.filename}',
          height: iconSize,
          color: color,
        ));
  }
}

@immutable
class IconData {
  final String? filename;

  const IconData({
    this.filename,
  });
}

class WidgetIcons {
  static const staff = IconData(filename: 'cancel.png');
  static const check_ok = IconData(filename: "check_ok.png");
  static const wheel = IconData(filename: "wheel.png");
  static const support = IconData(filename: "support.png");
  static const star_shone = IconData(filename: "star_shine.png");
  static const search = IconData(filename: "search.png");
  static const home_profile = IconData(filename: "home_profile.png");
  static const home_profile_on = IconData(filename: "home_profile_on.png");

  static const notification = IconData(filename: "notification.png");
  static const notification_on = IconData(filename: "notification_on.png");

  static const voucher_menu = IconData(filename: "voucher_menu.png");
  static const voucher_menu_on = IconData(filename: "voucher_menu_on.png");

  static const store = IconData(filename: "store.png");
  static const store_on = IconData(filename: "store_on.png");

  static const message = IconData(filename: "message.png");
  static const message_on = IconData(filename: "message_on.png");

  static const share = IconData(filename: "share.png");
  static const shopping = IconData(filename: "shopping.png");
  static const facebook = IconData(filename: "facebook_social.png");
  static const twitter = IconData(filename: "twitter_social.png");
  static const instagram = IconData(filename: "instagram_social.png");
  static const pinterest = IconData(filename: "pinterest_social.png");
  static const tumblr = IconData(filename: "tumble_social.png");
  static const delete = IconData(filename: "delete.png");
  static const rating = IconData(filename: "rating.png");
  static const reward_point = IconData(filename: "reward_point.png");
  static const branch = IconData(filename: "branch.png");
  static const ctv_info = IconData(filename: "ctv_info.png");
  static const history_order = IconData(filename: "history_order.png");
  static const history_reward = IconData(filename: "history_reward.png");
  static const collaborator = IconData(filename: "collaborator.png");
  static const ios_arrow_top = IconData(filename: "ios_arrow_top.png");
  static const ios_back = IconData(filename: "ios_back.png");
  static const share_fill = IconData(filename: "share_fill.png");
  static const location_branch = IconData(filename: "location_branch.png");
  static const cancel = IconData(filename: "cancel.png");
  static const sale_mark = IconData(filename: "sale_mark.png");
  static const search_white = IconData(filename: "search_white.png");

  static const star_rate_product = IconData(filename: "star_rate_product.png");

  static const send_chat = IconData(filename: "send_chat.png");
  static const image_chat = IconData(filename: "image_chat.png");

  static const discount = IconData(filename: "discount.png");
  static const people = IconData(filename: "people.png");
  static const star_shine = IconData(filename: "star_shine.png");
  static const phone = IconData(filename: "phone.png");

  static const person = IconData(filename: "person.png");
  static const edit = IconData(filename: "edit.png");
  static const add_note = IconData(filename: "add_note.png");

  static const post = IconData(filename: "post.png");
  static const video = IconData(filename: "video.png");
  static const sale_feed = IconData(filename: "sale_feed.png");
  static const play_video = IconData(filename: "play_video.png");
  static const copy = IconData(filename: "copy.png");
  static const tip = IconData(filename: "tip.png");
  static const download = IconData(filename: "download.png");
  static const upload = IconData(filename: "upload.png");
  static const create_commission = IconData(filename: "create_commission.png");
  static const rounded_star = IconData(filename: "rounded_star.png");
  static const edit_product = IconData(filename: "edit_product.png");
  static const payment_promotion = IconData(filename: "payment_promotion.png");
  static const payment_method = IconData(filename: "payment_method.png");
  static const payment_user_info = IconData(filename: "payment_user_info.png");
  static const payment_list_order =
      IconData(filename: "payment_list_order.png");

  static const store_home = IconData(filename: "store/home.png");
  static const store_collaborator =
      IconData(filename: "store/collaborator.png");
  static const store_history = IconData(filename: "store/history.png");
  static const store_contact = IconData(filename: "store/contact.png");
  static const store_profile = IconData(filename: "store/profile.png");
  static const store_wheel = IconData(filename: "store/wheel.png");
  static const store_promotion = IconData(filename: "store/promotion.png");
  static const store_logout = IconData(filename: "store/logout.png");

  static const profile_name = IconData(filename: "profile_user/name.png");
  static const profile_info = IconData(filename: "profile_user/info.png");
  static const profile_phone = IconData(filename: "profile_user/phone.png");
  static const profile_location =
      IconData(filename: "profile_user/location.png");
}
