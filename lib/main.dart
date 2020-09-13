import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_netease_music/route/routes.dart';
import 'package:provider/provider.dart';
import 'application.dart';

void main() {
  Router router = Router();
  Routes.configureRoutes(router);
  Application.router = router;
  Application.setupLocator();
  runApp(MultiProvider(
    providers: [],
    child: NeteaseMusicApp()
  ));
}

class NeteaseMusicApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('Main');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Netease Music',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.white,
        splashColor: Colors.transparent,
        tooltipTheme: TooltipThemeData(verticalOffset: -100000),
      ),
      home: Center(child: Text('网易云音乐')),
      onGenerateRoute: Application.router.generator,
    );
  }
}