import 'package:demo_upopp/Controller/Register/RegisterViewController.dart';
import 'package:get/get.dart';

class RegisterViewBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterViewController());
  }
}
