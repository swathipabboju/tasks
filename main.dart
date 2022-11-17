import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/task_with_provider.dart';

import 'package:flutter_application_1/routes/appPages.dart';
import 'package:provider/provider.dart';

import 'cricketers/db.dart';
import 'routes/allRoutes.dart';
//import 'package:navigation_project/routes/listview_page.dart';
//import 'package:navigation_project/routes/listview_page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final db = DatabaseHelper.instance.database;
    return MultiProvider(
        providers: [ChangeNotifierProvider(create: (_) => TaskNotifier())],
        child: MaterialApp(
          initialRoute: AllRoutes.initial,
          routes: AllPages.routes,
        )
        );
  }
}
// MaterialApp(
    //   initialRoute: AllRoutes.initial,
    //   routes: AllPages.routes,
    // );