import 'package:demo_upopp/Constants/Enums/ViewState.dart';
import 'package:demo_upopp/Constants/Localization/LanguageConstants.dart';
import 'package:demo_upopp/Controller/BaseController.dart';
import 'package:demo_upopp/Routing/RouteNames.dart';
import 'package:demo_upopp/Utils/Utils.dart';
import 'package:flutter/material.dart';

class ForgotPasswordViewController extends BaseController {
  final formKey = GlobalKey<FormState>();
  FocusNode focusNode = FocusNode();

  // TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  // void forgotPassword() {
  //   if (formKey.currentState!.validate()) {}
  //   update();
  // }

  void forgotPasswordUser() {
    forgotPasswordUserApiCall();
  }

  bool isValidInput() {
    String message = "";
    bool isValid;

    if (emailController.text.isEmpty) {
      showMessageInSnackBar(LanguageConst.enterEmailAddress, true);
      isValid = false;
    } else if (!Utils.isValidateEmail(emailController.text.trim())) {
      showMessageInSnackBar(
          "${LanguageConst.enterValid} ${LanguageConst.emailAddress}!", true);
      isValid = false;
    } else {
      isValid = true;
    }

    if (message != "") {
      showMessageInSnackBar(message, false);
    }

    return isValid;
  }

  void forgotPasswordUserApiCall() {
   // if (isValidInput()) {
      setLoaderState(ViewStateEnum.busy);
      redirectWithClearBackStack(confirmOtpScreenRoute);
   // }
  }
}
