import 'package:demo_upopp/Controller/Forgot%20Password/ForgotPasswordViewController.dart';
import 'package:get/get.dart';

class ForgotPasswordViewBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgotPasswordViewController());
  }
}
