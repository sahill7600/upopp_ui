import 'package:get/get.dart';
import 'package:demo_upopp/Controller/ConfirmOtpView/ConfirmOtpViewController.dart';

class ConfirmOtpViewBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => ConfirmOtpViewController());
  }

}