import 'dart:async';

import 'package:demo_upopp/Controller/BaseController.dart';
// import 'package:demo_upopp/Model/UserData.dart';
import 'package:demo_upopp/Routing/RouteNames.dart';

class SplashViewController extends BaseController {
  bool? _isLogin;

  startTime() async {
    var duration = Duration(seconds: 5);

    return Timer(duration, route);
  }

  void route() {
    openLandingScreen();
    // checkPermissionMicAudio();
  }

  Future<void> openLandingScreen() async {
    //_isLogin = StorageHelper.instance.getBoolValue(PrefKeys.isLogin);
    // bool isFirstTime =
    //     StorageHelper.instance.getBoolValue(PrefKeys.isFirstTime);
    // int tripID = StorageHelper.instance.getIntValue(PrefKeys.tripId);
    //
    // Logger.get().log("tripID >>>> $tripID");
    // tripID != null && tripID != 0
    //     ? redirectWithClearBackStack(homeViewRoute)
    //     : isFirstTime
    //         ? redirectWithClearBackStack(loginViewRoute)
    //         : redirectWithClearBackStack(loginViewRoute);
     redirectWithClearBackStack(loginViewRoute);
    // redirectWithClearBackStack(goalMasterViewRoute);
    // redirectWithClearBackStack(groupGoalSelectionViewRoute);
    //redirectWithClearBackStack(chooseTripTypeViewRoute);
    // if (isFirstTime) {
    //   redirectWithClearBackStack(loginViewRoute);
    // } else {
    //   redirectWithClearBackStack(onBoardingViewRoute);
    // }
  }
}
