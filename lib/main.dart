import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pyco_test_vl/data/service/user_service.dart';
import 'package:pyco_test_vl/view/home_view.dart';
import 'package:logging/logging.dart';

void main() {
  _setupLogging();
  runApp(MultiProvider(
    providers: [
      Provider<UserService>(
        create: (_) => UserService(),
        dispose: (_, userService) => userService.dispose(),
      ),
    ],
    child: MyApp(),
  ));
}

void _setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    print('${rec.level.name}: ${rec.time}: ${rec.message}');
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeView(),
    );
  }
}