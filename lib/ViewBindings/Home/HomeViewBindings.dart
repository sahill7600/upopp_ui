import 'package:demo_upopp/Controller/Home/HomeViewController.dart';
import 'package:get/get.dart';

class HomeViewBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeViewController());
  }
}
