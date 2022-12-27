import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:sanalira/core/network/dio_client.dart';
import 'package:sanalira/model/bank.dart';
import 'package:sanalira/model/error_model.dart';
import 'package:sanalira/service/base/bank_service_base.dart';

class BankService extends BankServiceBaseClass {
  final DioClient dioClient;
  BankService({required this.dioClient});

  @override
  Future<Either<ErrorModel, List<Bank>>> getAllBank() async {
    Response response =
        await dioClient.get('https://api.sanalira.com/assignment');
    print(response.statusCode.toString());
    if (response.statusCode == 200) {
      List<Bank> banks = [];
      for (var x in response.data["data"]) {
        print(x);
        banks.add(Bank.fromJson(x));
      }
      return right(banks);
    } else {
      return left(
        ErrorModel(
          errorName: response.statusCode!.toString(),
          errorDescription: "",
        ),
      );
    }
  }
}
