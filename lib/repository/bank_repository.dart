import 'package:dartz/dartz.dart';
import 'package:sanalira/base/base_bank_service.dart';
import 'package:sanalira/model/bank.dart';
import 'package:sanalira/model/error_model.dart';
import 'package:sanalira/service/bank_service.dart';

class BankRepository implements BaseBankService {
  final BankService bankService;

  BankRepository(this.bankService);

  @override
  Future<Either<ErrorModel, List<Bank>>> getAllBank() async {
    return await bankService.getAllBank();
  }
}
