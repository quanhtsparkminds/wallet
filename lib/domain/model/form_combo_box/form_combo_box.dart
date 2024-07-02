import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_combo_box.freezed.dart';
part 'form_combo_box.g.dart';

@freezed
class FormComboBox with _$FormComboBox {
  const factory FormComboBox({
    String? title,
    dynamic key,
    dynamic id,
    int? color,
    dynamic callBack,
    String? suffix,
  }) = _FormComboBox;
  factory FormComboBox.fromJson(Map<String, Object?> json) =>
      _$FormComboBoxFromJson(json);
}
