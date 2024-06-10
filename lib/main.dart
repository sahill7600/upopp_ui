import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'Constants/AppColors.dart';
import 'Constants/Localization/Language.dart';
import 'Constants/PrefKeys.dart';
import 'DataHandler/Local/storage_helper.dart';
import 'Routing/RouteNames.dart';
import 'Routing/Router.dart';
import 'Services/NavigationService.dart';
import 'locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: AppColors.transparent,
  ));

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  await GetStorage.init();

  setupLocator();
  debugPrint(
      "Is login >>>> ${StorageHelper.instance.getBoolValue(PrefKeys.isLogin)}");
  runApp(const MyApp(defaultRoute: splashViewRoute));
  // runApp(const MyApp(defaultRoute: homeViewRoute));
}

class MyApp extends StatelessWidget {
  final String defaultRoute;

  const MyApp({Key? key, required this.defaultRoute}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: defaultRoute,
      translations: Languages(),
      navigatorKey: NavigationService().navigationKey,
      onGenerateRoute: generateRoute,
      title: 'Demo_UPOPP',
      locale: AppLanguagesConstant.defaultLocalization,
      fallbackLocale: AppLanguagesConstant.defaultLocalization,
      debugShowCheckedModeBanner: false,
      // theme: appTheme(),
    );
  }
}
