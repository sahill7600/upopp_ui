import 'package:demo_upopp/Controller/Login/LoginViewController.dart';
import 'package:get/get.dart';

class LoginViewBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginViewController());
  }
}
