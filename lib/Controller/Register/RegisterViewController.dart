
import 'package:demo_upopp/Constants/Enums/ViewState.dart';
import 'package:demo_upopp/Constants/Localization/LanguageConstants.dart';
import 'package:demo_upopp/Controller/BaseController.dart';
import 'package:demo_upopp/Routing/RouteNames.dart';
import 'package:demo_upopp/Utils/Utils.dart';
import 'package:flutter/material.dart';

class RegisterViewController extends BaseController {
  final formKey = GlobalKey<FormState>();

  TextEditingController phoneController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController rePasswordController = TextEditingController();

  FocusNode focusNode = FocusNode();
  bool isPasswordShow = true;
  bool isConfirmPasswordShow = true;

  bool isTermsAndConditionSelect = false;

  void registerUser() {
    registerUserApiCall();
  }

  bool isValidInput() {
    String message = "";
    bool isValid;
    if (firstNameController.text.isEmpty) {
      showMessageInSnackBar(LanguageConst.pleaseEnterFirstName, true);
      //Logger.get().log("name");
      isValid = false;
    } else if (lastNameController.text.isEmpty) {
      showMessageInSnackBar(LanguageConst.pleaseEnterLastName, true);
      //Logger.get().log("name");
      isValid = false;
    } else if (emailController.text.isEmpty) {
      showMessageInSnackBar(LanguageConst.pleaseEnterEmail, true);
      isValid = false;
    } else if (emailController.text.isNotEmpty &&
        !Utils.isValidateEmail(emailController.text.toString())) {
      showMessageInSnackBar(
          "${LanguageConst.enterValid} ${LanguageConst.emailAddress}", true);
      isValid = false;
    } else if (passwordController.text.isEmpty) {
      showMessageInSnackBar(LanguageConst.enterPassword, true);
      isValid = false;
    } else if (passwordController.text.length < 6) {
      showMessageInSnackBar(LanguageConst.passwordLength, true);
      isValid = false;
    } else if (rePasswordController.text.isEmpty) {
      showMessageInSnackBar(LanguageConst.repeatPassword, true);
      isValid = false;
    } else if ((passwordController.text.isNotEmpty ||
        rePasswordController.text.isNotEmpty) &&
        (passwordController.text != rePasswordController.text)) {
      showMessageInSnackBar(LanguageConst.passwordNotMatch, true);
      isValid = false;
    } else {
      isValid = true;
    }

    if (message != "") {
      showMessageInSnackBar(message, false);
    }

    return isValid;
  }

  void registerUserApiCall() {
  //  if (isValidInput()) {
      setLoaderState(ViewStateEnum.busy);
      redirectWithClearBackStack(loginViewRoute);
  //  }
  }

  ///Login Api Call
  void loginUserApiCall() {
   // if (isValidInput()) {
      setLoaderState(ViewStateEnum.busy);
      redirectWithClearBackStack(loginViewRoute);
   // }
  }

}
