// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_combo_box.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FormComboBoxImpl _$$FormComboBoxImplFromJson(Map<String, dynamic> json) =>
    _$FormComboBoxImpl(
      title: json['title'] as String?,
      key: json['key'],
      id: json['id'],
      color: json['color'] as int?,
      callBack: json['callBack'],
      suffix: json['suffix'] as String?,
    );

Map<String, dynamic> _$$FormComboBoxImplToJson(_$FormComboBoxImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'key': instance.key,
      'id': instance.id,
      'color': instance.color,
      'callBack': instance.callBack,
      'suffix': instance.suffix,
    };
