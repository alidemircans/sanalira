import 'package:flutter/material.dart';
import 'package:sanalira/core/di/locator.dart';
import 'package:sanalira/helper/constants.dart';
import 'package:sanalira/helper/routes.dart';
import 'package:sanalira/service/shadred_preferences_services.dart';

class RegisterViewModel extends ChangeNotifier {
  final SharedPreferencesServices _sharedPreferencesServices =
      locator.get<SharedPreferencesServices>();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController? nameTextEditingController;
  TextEditingController? surNameTextEditingController;
  TextEditingController? eEmailTextEditingController;
  TextEditingController? phoneTextEditingController;

  FocusNode? nameFocusNode;
  FocusNode? surNameFocusNode;
  FocusNode? eMailFocusNode;
  FocusNode? phoneFocusNode;

  RegisterViewModel() {
    _sharedPreferencesServices.instance();
    nameTextEditingController = TextEditingController();
    surNameTextEditingController = TextEditingController();
    eEmailTextEditingController = TextEditingController();
    phoneTextEditingController = TextEditingController();

    nameFocusNode = FocusNode();
    surNameFocusNode = FocusNode();
    eMailFocusNode = FocusNode();
    phoneFocusNode = FocusNode();
  }

  onRegisterPressed(context) async {
    bool isValid = formKey.currentState!.validate();

    if (isValid) {
      bool isOkay = await _sharedPreferencesServices.setToShared(
          Constants.registeredKey, "true");

      if (isOkay) {
        Navigator.pushNamedAndRemoveUntil(
            context, Routes.BANKS_PAGE, (Route<dynamic> route) => false);
      }
    }
  }
}
