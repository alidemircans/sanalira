import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:sanalira/core/di/locator.dart';
import 'package:sanalira/model/bank.dart';
import 'package:sanalira/model/error_model.dart';
import 'package:sanalira/repository/bank_repository.dart';

class BankViewModel extends ChangeNotifier {
  BankViewModel() {
    getAllBank();
  }

  BankRepository service = locator.get<BankRepository>();

  List<Bank>? allBank;

  getAllBank() async {
    final Either<ErrorModel, List<Bank>> getAllBankResult =
        await service.getAllBank();

    getAllBankResult.fold((error) {
      print(error.errorName);
    }, (List<Bank> banks) {
      print(banks.length);
      allBank = banks;
      notifyListeners();
    });
  }
}
