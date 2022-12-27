// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bank.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Bank _$BankFromJson(Map<String, dynamic> json) {
  return _Bank.fromJson(json);
}

/// @nodoc
mixin _$Bank {
  String get bankName => throw _privateConstructorUsedError;
  String get bankIban => throw _privateConstructorUsedError;
  String get bankAccountName => throw _privateConstructorUsedError;
  String get descriptionNo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BankCopyWith<Bank> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankCopyWith<$Res> {
  factory $BankCopyWith(Bank value, $Res Function(Bank) then) =
      _$BankCopyWithImpl<$Res, Bank>;
  @useResult
  $Res call(
      {String bankName,
      String bankIban,
      String bankAccountName,
      String descriptionNo});
}

/// @nodoc
class _$BankCopyWithImpl<$Res, $Val extends Bank>
    implements $BankCopyWith<$Res> {
  _$BankCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bankName = null,
    Object? bankIban = null,
    Object? bankAccountName = null,
    Object? descriptionNo = null,
  }) {
    return _then(_value.copyWith(
      bankName: null == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      bankIban: null == bankIban
          ? _value.bankIban
          : bankIban // ignore: cast_nullable_to_non_nullable
              as String,
      bankAccountName: null == bankAccountName
          ? _value.bankAccountName
          : bankAccountName // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionNo: null == descriptionNo
          ? _value.descriptionNo
          : descriptionNo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BankCopyWith<$Res> implements $BankCopyWith<$Res> {
  factory _$$_BankCopyWith(_$_Bank value, $Res Function(_$_Bank) then) =
      __$$_BankCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String bankName,
      String bankIban,
      String bankAccountName,
      String descriptionNo});
}

/// @nodoc
class __$$_BankCopyWithImpl<$Res> extends _$BankCopyWithImpl<$Res, _$_Bank>
    implements _$$_BankCopyWith<$Res> {
  __$$_BankCopyWithImpl(_$_Bank _value, $Res Function(_$_Bank) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bankName = null,
    Object? bankIban = null,
    Object? bankAccountName = null,
    Object? descriptionNo = null,
  }) {
    return _then(_$_Bank(
      bankName: null == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      bankIban: null == bankIban
          ? _value.bankIban
          : bankIban // ignore: cast_nullable_to_non_nullable
              as String,
      bankAccountName: null == bankAccountName
          ? _value.bankAccountName
          : bankAccountName // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionNo: null == descriptionNo
          ? _value.descriptionNo
          : descriptionNo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Bank implements _Bank {
  const _$_Bank(
      {required this.bankName,
      required this.bankIban,
      required this.bankAccountName,
      required this.descriptionNo});

  factory _$_Bank.fromJson(Map<String, dynamic> json) => _$$_BankFromJson(json);

  @override
  final String bankName;
  @override
  final String bankIban;
  @override
  final String bankAccountName;
  @override
  final String descriptionNo;

  @override
  String toString() {
    return 'Bank(bankName: $bankName, bankIban: $bankIban, bankAccountName: $bankAccountName, descriptionNo: $descriptionNo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Bank &&
            (identical(other.bankName, bankName) ||
                other.bankName == bankName) &&
            (identical(other.bankIban, bankIban) ||
                other.bankIban == bankIban) &&
            (identical(other.bankAccountName, bankAccountName) ||
                other.bankAccountName == bankAccountName) &&
            (identical(other.descriptionNo, descriptionNo) ||
                other.descriptionNo == descriptionNo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, bankName, bankIban, bankAccountName, descriptionNo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BankCopyWith<_$_Bank> get copyWith =>
      __$$_BankCopyWithImpl<_$_Bank>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BankToJson(
      this,
    );
  }
}

abstract class _Bank implements Bank {
  const factory _Bank(
      {required final String bankName,
      required final String bankIban,
      required final String bankAccountName,
      required final String descriptionNo}) = _$_Bank;

  factory _Bank.fromJson(Map<String, dynamic> json) = _$_Bank.fromJson;

  @override
  String get bankName;
  @override
  String get bankIban;
  @override
  String get bankAccountName;
  @override
  String get descriptionNo;
  @override
  @JsonKey(ignore: true)
  _$$_BankCopyWith<_$_Bank> get copyWith => throw _privateConstructorUsedError;
}
