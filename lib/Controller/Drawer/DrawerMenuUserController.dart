import 'package:demo_upopp/Routing/RouteNames.dart';
import 'package:demo_upopp/Services/NavigationService.dart';
import 'package:demo_upopp/UI/Drawer/DrawerMenuUser.dart';
import 'package:demo_upopp/Utils/Utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerMenuUserController extends GetxController {
  void onClickMenu(MenuModel model) {
    switch (model.type) {
      case 1:
        Navigator.of(Get.context!).pop();
        NavigationService().navigateTo(homeViewRoute);

        break;
      case 2:
        Utils.logout();
        break;
      default:
        break;
    }
  }
}
