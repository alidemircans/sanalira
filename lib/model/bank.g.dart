// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Bank _$$_BankFromJson(Map<String, dynamic> json) => _$_Bank(
      bankName: json['bankName'] as String,
      bankIban: json['bankIban'] as String,
      bankAccountName: json['bankAccountName'] as String,
      descriptionNo: json['descriptionNo'] as String,
    );

Map<String, dynamic> _$$_BankToJson(_$_Bank instance) => <String, dynamic>{
      'bankName': instance.bankName,
      'bankIban': instance.bankIban,
      'bankAccountName': instance.bankAccountName,
      'descriptionNo': instance.descriptionNo,
    };
