import 'package:dartz/dartz.dart';
import 'package:sanalira/model/bank.dart';
import 'package:sanalira/model/error_model.dart';

abstract class BaseBankService {
  Future<Either<ErrorModel, List<Bank>>> getAllBank();
}
