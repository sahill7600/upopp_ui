import 'package:demo_upopp/Controller/BaseController.dart';
import 'package:demo_upopp/UI/Pages/AboutView.dart';
import 'package:demo_upopp/UI/Pages/ContactView.dart';
import 'package:demo_upopp/UI/Pages/Home/HomeView.dart';

class BottomNavigationBarViewController extends BaseController {
  final pages = [
     HomeView(),
     AboutView(),
     ContactView(),
  ];

  String? version = "";
}
