// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ErrorModel _$ErrorModelFromJson(Map<String, dynamic> json) {
  return _ErrorModel.fromJson(json);
}

/// @nodoc
mixin _$ErrorModel {
  String get errorName => throw _privateConstructorUsedError;
  String get errorDescription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorModelCopyWith<ErrorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorModelCopyWith<$Res> {
  factory $ErrorModelCopyWith(
          ErrorModel value, $Res Function(ErrorModel) then) =
      _$ErrorModelCopyWithImpl<$Res, ErrorModel>;
  @useResult
  $Res call({String errorName, String errorDescription});
}

/// @nodoc
class _$ErrorModelCopyWithImpl<$Res, $Val extends ErrorModel>
    implements $ErrorModelCopyWith<$Res> {
  _$ErrorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorName = null,
    Object? errorDescription = null,
  }) {
    return _then(_value.copyWith(
      errorName: null == errorName
          ? _value.errorName
          : errorName // ignore: cast_nullable_to_non_nullable
              as String,
      errorDescription: null == errorDescription
          ? _value.errorDescription
          : errorDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ErrorModelCopyWith<$Res>
    implements $ErrorModelCopyWith<$Res> {
  factory _$$_ErrorModelCopyWith(
          _$_ErrorModel value, $Res Function(_$_ErrorModel) then) =
      __$$_ErrorModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String errorName, String errorDescription});
}

/// @nodoc
class __$$_ErrorModelCopyWithImpl<$Res>
    extends _$ErrorModelCopyWithImpl<$Res, _$_ErrorModel>
    implements _$$_ErrorModelCopyWith<$Res> {
  __$$_ErrorModelCopyWithImpl(
      _$_ErrorModel _value, $Res Function(_$_ErrorModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorName = null,
    Object? errorDescription = null,
  }) {
    return _then(_$_ErrorModel(
      errorName: null == errorName
          ? _value.errorName
          : errorName // ignore: cast_nullable_to_non_nullable
              as String,
      errorDescription: null == errorDescription
          ? _value.errorDescription
          : errorDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ErrorModel implements _ErrorModel {
  const _$_ErrorModel(
      {required this.errorName, required this.errorDescription});

  factory _$_ErrorModel.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorModelFromJson(json);

  @override
  final String errorName;
  @override
  final String errorDescription;

  @override
  String toString() {
    return 'ErrorModel(errorName: $errorName, errorDescription: $errorDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorModel &&
            (identical(other.errorName, errorName) ||
                other.errorName == errorName) &&
            (identical(other.errorDescription, errorDescription) ||
                other.errorDescription == errorDescription));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, errorName, errorDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorModelCopyWith<_$_ErrorModel> get copyWith =>
      __$$_ErrorModelCopyWithImpl<_$_ErrorModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ErrorModelToJson(
      this,
    );
  }
}

abstract class _ErrorModel implements ErrorModel {
  const factory _ErrorModel(
      {required final String errorName,
      required final String errorDescription}) = _$_ErrorModel;

  factory _ErrorModel.fromJson(Map<String, dynamic> json) =
      _$_ErrorModel.fromJson;

  @override
  String get errorName;
  @override
  String get errorDescription;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorModelCopyWith<_$_ErrorModel> get copyWith =>
      throw _privateConstructorUsedError;
}
