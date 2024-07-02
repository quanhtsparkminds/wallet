import 'package:flutter/material.dart';
import 'package:myapp/shared/helps/regexp_format.dart';

BuildContext? scrollContext;

BuildContext priorityContext(BuildContext context) {
  if (scrollContext != null) {
    try {
      RenderBox box = scrollContext!.findRenderObject() as RenderBox;
      Offset position = box.localToGlobal(Offset.zero);
      double lastY = position.dy;

      RenderBox currentBox = context.findRenderObject() as RenderBox;
      Offset currentPosition = currentBox.localToGlobal(Offset.zero);
      double currentY = currentPosition.dy;

      if (lastY > currentY) {
        scrollContext = context;
      }
    } catch (e) {
      scrollContext = context;
    }
  } else {
    scrollContext = context;
  }
  return scrollContext!;
}

class ValidateRole {
  final String type;
  final Function? validate;
  final Function? transform;

  ValidateRole(this.type, {this.validate, this.transform});
}

class ValidateBuilder {
  List<ValidateRole> roles = [];
  String? value(value) {
    for (var role in roles) {
      if (role.type == "validate") {
        String? errMsg = role.validate!(value);
        return errMsg;
      }
      if (role.type == "transform") {
        value = role.transform!(value);
      }
    }
    return null;
  }

  dynamic build() {
    return value;
  }

  ValidateBuilder empty(
      {FocusNode? focusNode,
      String errMsg = "Bắt buộc nhập",
      bool skip = false}) {
    if (skip) return this;
    roles.add(ValidateRole("validate", validate: (value) {
      if (value == null) {
        return errMsg;
      }
      if (value == "") {
        return errMsg;
      }
      if (value is List && value.length == 0) {
        return errMsg;
      }
      if (value.trim().isEmpty) {
        return errMsg;
      }
      return null;
    }));
    return this;
  }

  ValidateBuilder phone(
      {String errMsg = "Số điện thoại không hợp lệ", bool skip = false}) {
    if (skip) return this;
    roles.add(ValidateRole("validate", validate: (value) {
      if (value == null || (value as String).isEmpty) {
        return "Bắt buộc nhập";
      }
      RegExp phoneRex = new RegExp(r"^(?:\d{10}|\d{11})$");
      if (!phoneRex.hasMatch(value)) return errMsg;

      return null;
    }));
    return this;
  }

  ValidateBuilder email({String errMsg = "Bắt buộc nhập", bool skip = false}) {
    if (skip) return this;
    roles.add(ValidateRole("validate", validate: (value) {
      RegExp emailRex = new RegExp(
          r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
      if (!emailRex.hasMatch(value)) return errMsg;
      return null;
    }));
    return this;
  }

  ValidateBuilder password(
      {String errMsg = "Bắt buộc nhập", bool skip = false}) {
    if (skip) return this;
    roles.add(ValidateRole("validate", validate: (value) {
      RegExp passRex = new RegExp(r'^.{9,}$');
      if (value == null) {
        return errMsg = "Bắt buộc nhập";
      }
      if (!passRex.hasMatch(value)) return errMsg = "Mật khẩu phải có 8 kí tự";
      return null;
    }));
    return this;
  }

  ValidateBuilder date(
      {FocusNode? focusNode,
      String errMsg = "Ngày không đúng định dạng",
      bool skip = false}) {
    roles.add(ValidateRole("validate", validate: (value) {
      if (skip && (value == '')) return null;
      final dateRex = RegExpFormat.date;
      if (!dateRex.hasMatch(value)) {
        return errMsg;
      }
      return null;
    }));
    return this;
  }

  ValidateBuilder doubleWithRange(
      {String errMsg = "Số không đúng định dạng",
      required double? min,
      double? notDouble,
      required double? max,
      bool skip = false}) {
    roles.add(ValidateRole("validate", validate: (value) {
      if (skip && (value == '')) return null;
      if (value is List && value.length == 0) return 'Không được để trống';
      if (value.isEmpty) return 'Không được để trống';
      final dateRex = new RegExp(RegExpFormat.double);
      if (!dateRex.hasMatch(value)) return errMsg;
      double temp = double.parse(value);
      if (min != null) if (temp < min) return 'Số phải tối thiểu' + ' $min';
      if (notDouble != null) if (temp == notDouble)
        return 'Số phải khác' + ' $notDouble';
      if (max != null) if (temp > max) return 'Số phải tối đa' + ' $max';
      return null;
    }));
    return this;
  }

  ValidateBuilder integerWithRange(
      {String errMsg = "Số không đúng định dạng",
      required int? min,
      int? notDouble,
      required int? max,
      bool skip = false}) {
    roles.add(ValidateRole("validate", validate: (value) {
      if (skip && (value == '')) return null;
      if (value is List && value.length == 0) return 'Không được để trống';
      if (value.isEmpty) return 'Không được để trống';
      int? temp = int.tryParse(value);
      if (temp == null) return errMsg;
      if (min != null) if (temp < min) return 'Số phải tối thiểu' + ' $min';
      if (notDouble != null) if (temp == notDouble)
        return 'Số phải khác' + ' $notDouble';
      if (max != null) if (temp > max) return 'Số phải tối đa' + ' $max';
      return null;
    }));
    return this;
  }

  ValidateBuilder minLenght(
      {String? errMsg, required int length, bool skip = false}) {
    if (skip) return this;
    roles.add(ValidateRole("validate", validate: (value) {
      if (value.length < length)
        return errMsg ?? "Yêu cầu nhập tối thiểu $length ký tự";
      return null;
    }));
    return this;
  }

  ValidateBuilder maxLenght(
      {String? errMsg, required int length, bool skip = false}) {
    if (skip) return this;
    roles.add(ValidateRole("validate", validate: (value) {
      if (value.length > length)
        return errMsg ?? "Yêu cầu nhập không quá $length ký tự";
      return null;
    }));
    return this;
  }

  ValidateBuilder range(
      {String? errMsg, required int min, required int max, bool skip = false}) {
    if (skip) return this;
    roles.add(ValidateRole("validate", validate: (value) {
      if ((num.tryParse(value) ?? 0) < min)
        return errMsg ?? "Không được nhập ít hơn $min";
      if ((num.tryParse(value) ?? 0) > max)
        return errMsg ?? "Không được nhập nhiều hơn $max";
      return null;
    }));
    return this;
  }

  ValidateBuilder validate(Function validate, {bool skip = false}) {
    if (skip) return this;
    roles.add(ValidateRole("validate", validate: validate));
    return this;
  }

  ValidateBuilder transform(Function transform) {
    roles.add(ValidateRole('transform', transform: transform));
    return this;
  }

  ValidateBuilder parseNum() {
    roles
        .add(ValidateRole('transform', transform: (value) => num.parse(value)));
    return this;
  }
}
