import 'package:flutter/material.dart';
import 'package:sanalira/core/di/locator.dart';
import 'package:sanalira/helper/constants.dart';
import 'package:sanalira/helper/routes.dart';
import 'package:sanalira/service/shadred_preferences_services.dart';

class SplashViewModel extends ChangeNotifier {
  final SharedPreferencesServices _sharedPreferencesServices =
      locator.get<SharedPreferencesServices>();

  onInit(context) async {
    await _sharedPreferencesServices.instance();
    String? isOpened =
        _sharedPreferencesServices.getDataFromShared(Constants.registeredKey);
    if (isOpened == null || isOpened.trim() == "") {
      Navigator.pushNamedAndRemoveUntil(
          context, Routes.REGISTER_PAGE, (Route<dynamic> route) => false);
    } else {
      Navigator.pushNamedAndRemoveUntil(
          context, Routes.BANKS_PAGE, (Route<dynamic> route) => false);
    }
  }
}
