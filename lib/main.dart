import 'package:flutter/material.dart';


import 'package:flutter_application_1/routes/appPages.dart';


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
    return MaterialApp(
     initialRoute: AllRoutes.initial,
     routes: AllPages.routes,
      );
  }
}





