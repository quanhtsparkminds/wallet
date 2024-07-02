// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_combo_box.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FormComboBox _$FormComboBoxFromJson(Map<String, dynamic> json) {
  return _FormComboBox.fromJson(json);
}

/// @nodoc
mixin _$FormComboBox {
  String? get title => throw _privateConstructorUsedError;
  dynamic get key => throw _privateConstructorUsedError;
  dynamic get id => throw _privateConstructorUsedError;
  int? get color => throw _privateConstructorUsedError;
  dynamic get callBack => throw _privateConstructorUsedError;
  String? get suffix => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FormComboBoxCopyWith<FormComboBox> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormComboBoxCopyWith<$Res> {
  factory $FormComboBoxCopyWith(
          FormComboBox value, $Res Function(FormComboBox) then) =
      _$FormComboBoxCopyWithImpl<$Res, FormComboBox>;
  @useResult
  $Res call(
      {String? title,
      dynamic key,
      dynamic id,
      int? color,
      dynamic callBack,
      String? suffix});
}

/// @nodoc
class _$FormComboBoxCopyWithImpl<$Res, $Val extends FormComboBox>
    implements $FormComboBoxCopyWith<$Res> {
  _$FormComboBoxCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? key = freezed,
    Object? id = freezed,
    Object? color = freezed,
    Object? callBack = freezed,
    Object? suffix = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as dynamic,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int?,
      callBack: freezed == callBack
          ? _value.callBack
          : callBack // ignore: cast_nullable_to_non_nullable
              as dynamic,
      suffix: freezed == suffix
          ? _value.suffix
          : suffix // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FormComboBoxImplCopyWith<$Res>
    implements $FormComboBoxCopyWith<$Res> {
  factory _$$FormComboBoxImplCopyWith(
          _$FormComboBoxImpl value, $Res Function(_$FormComboBoxImpl) then) =
      __$$FormComboBoxImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      dynamic key,
      dynamic id,
      int? color,
      dynamic callBack,
      String? suffix});
}

/// @nodoc
class __$$FormComboBoxImplCopyWithImpl<$Res>
    extends _$FormComboBoxCopyWithImpl<$Res, _$FormComboBoxImpl>
    implements _$$FormComboBoxImplCopyWith<$Res> {
  __$$FormComboBoxImplCopyWithImpl(
      _$FormComboBoxImpl _value, $Res Function(_$FormComboBoxImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? key = freezed,
    Object? id = freezed,
    Object? color = freezed,
    Object? callBack = freezed,
    Object? suffix = freezed,
  }) {
    return _then(_$FormComboBoxImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as dynamic,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int?,
      callBack: freezed == callBack
          ? _value.callBack
          : callBack // ignore: cast_nullable_to_non_nullable
              as dynamic,
      suffix: freezed == suffix
          ? _value.suffix
          : suffix // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FormComboBoxImpl implements _FormComboBox {
  const _$FormComboBoxImpl(
      {this.title, this.key, this.id, this.color, this.callBack, this.suffix});

  factory _$FormComboBoxImpl.fromJson(Map<String, dynamic> json) =>
      _$$FormComboBoxImplFromJson(json);

  @override
  final String? title;
  @override
  final dynamic key;
  @override
  final dynamic id;
  @override
  final int? color;
  @override
  final dynamic callBack;
  @override
  final String? suffix;

  @override
  String toString() {
    return 'FormComboBox(title: $title, key: $key, id: $id, color: $color, callBack: $callBack, suffix: $suffix)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormComboBoxImpl &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.color, color) || other.color == color) &&
            const DeepCollectionEquality().equals(other.callBack, callBack) &&
            (identical(other.suffix, suffix) || other.suffix == suffix));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(id),
      color,
      const DeepCollectionEquality().hash(callBack),
      suffix);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormComboBoxImplCopyWith<_$FormComboBoxImpl> get copyWith =>
      __$$FormComboBoxImplCopyWithImpl<_$FormComboBoxImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FormComboBoxImplToJson(
      this,
    );
  }
}

abstract class _FormComboBox implements FormComboBox {
  const factory _FormComboBox(
      {final String? title,
      final dynamic key,
      final dynamic id,
      final int? color,
      final dynamic callBack,
      final String? suffix}) = _$FormComboBoxImpl;

  factory _FormComboBox.fromJson(Map<String, dynamic> json) =
      _$FormComboBoxImpl.fromJson;

  @override
  String? get title;
  @override
  dynamic get key;
  @override
  dynamic get id;
  @override
  int? get color;
  @override
  dynamic get callBack;
  @override
  String? get suffix;
  @override
  @JsonKey(ignore: true)
  _$$FormComboBoxImplCopyWith<_$FormComboBoxImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
