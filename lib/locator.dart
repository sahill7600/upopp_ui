import 'package:get_it/get_it.dart';
import 'Services/ApiService.dart';
import 'Services/NavigationService.dart';

GetIt locator = GetIt.instance;

void setupLocator() async {
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => ApiService());
  await ApiService.init();
}
