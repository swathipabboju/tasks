import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/profile.dart';




import 'allRoutes.dart';

class AllPages{
 static  Map<String,WidgetBuilder> get routes{
  return {


AllRoutes.ProfilePage:((context) => ProfilePage()),


  };
  
 }
  
}