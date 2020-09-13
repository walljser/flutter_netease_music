import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_netease_music/pages/home_page/home_page.dart';

var homeHandler = new Handler(
  handlerFunc: (BuildContext context, Map<String, List<Object>> params) {
    return HomePage();
  }
);
