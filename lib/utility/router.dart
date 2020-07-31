import 'package:get/get.dart';
import 'package:getx_app/view/login_view.dart';
import 'package:getx_app/view/home_view.dart';

class Router {
  static final route = [
GetPage(
      name: '/loginView',
      page: () => LoginView(),
    ),
    GetPage(
      name: '/homeView',
      page: () => HomeView(),
    ),
  ];
}
