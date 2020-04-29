import 'package:easyroutes/view/home_page.dart';
import 'package:easyroutes/view/second_page.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    Widget route;

    switch (settings.name) {
      case "/":
        route = HomePage();
        break;
      case "/second":
        route = SecondPage(data: arguments);
        break;
      // default:
      //   route =  NotFoundPage();  AQUI VOCÊ POE SUA PÁGINA 404
    }

    return MaterialPageRoute(builder: (_) => route);
  }
}
