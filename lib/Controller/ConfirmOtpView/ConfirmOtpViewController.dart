import 'package:flutter/cupertino.dart';
import 'package:demo_upopp/Controller/BaseController.dart';
import 'package:demo_upopp/Routing/RouteNames.dart';
import 'package:demo_upopp/Utils/Logger.dart';

class ConfirmOtpViewController extends BaseController {

  TextEditingController emailController = TextEditingController();
  TextEditingController pincodeOTPController = TextEditingController();


  void confirmOtpViewUser(String email) {
    ConfirmOtpView(email);
  }


  bool isValidInput() {
    String message = "";
    bool isValid;

    if (pincodeOTPController.text.isEmpty) {
    //  showMessageInSnackBar(LanguageConst.pincode, true);
      isValid = false;
    }  else {
      isValid = true;
    }

    if (message != "") {
      showMessageInSnackBar(message, false);
    }

    return isValid;
  }


  void ConfirmOtpView(String email) {
    Logger.get().log("Params >>>>>>>> ${pincodeOTPController.text}");
    redirectWithClearBackStack(loginViewRoute);
    // if (isValidInput()) {
    //   setLoaderState(ViewStateEnum.busy);
    //   try {
    //
    //     Logger.get().log("hello>>>>>>${email}");
    //     ApiManager.get()
    //         .confirmOtpViewUser(email,pincodeOTPController.text)
    //         .then((response) async {
    //       if (response.isOk() && response.body.isSuccess()) {
    //            setLoaderState(ViewStateEnum.idle);
    //
    //         redirectToPage(changePasswordScreenRoute, arguments: email );
    //
    //       }
    //
    //       else {
    //         showMessageInSnackBar(response.body.getMessage(), true);
    //         Logger.get().log("data >>>>> ${pincodeOTPController.text}");
    //         setLoaderState(ViewStateEnum.idle);
    //       }
    //     });
    //   } catch (e) {
    //     setLoaderState(ViewStateEnum.idle);
    //     Logger.get().log(e);
    //   }
    // }
  }
}