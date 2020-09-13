import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_netease_music/route/route_handlers.dart';

class Routes {
  static String root = "/";
  static String home = "/home";

  static void configureRoutes(Router router) {
    router.notFoundHandler = new Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        print("ROUTE WAS NOT FOUND !!!");
        // return Login
        return null;
      }
    );
    router.define(home, handler: homeHandler);
  }
}