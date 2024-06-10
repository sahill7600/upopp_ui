import 'package:demo_upopp/UI/Widgets/BottomNavigationBarViewController.dart';
import 'package:get/get.dart';

class BottomNavigationBarViewBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BottomNavigationBarViewController());
  }
}
