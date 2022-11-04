
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/imagepicker.dart';
import 'package:flutter_application_1/login_page_url.dart';
import 'package:flutter_application_1/profile.dart';
import 'package:flutter_application_1/version_check.dart';
import 'package:image_picker/image_picker.dart';




import 'allRoutes.dart';

class AllPages{
 static  Map<String,WidgetBuilder> get routes{
  return {


AllRoutes.ProfilePage:((context) => ProfilePage()),
AllRoutes.loginurl:((context) => login_url()),
AllRoutes.versionCheck:((context) =>VersionCheck()),
AllRoutes.imagePicker:((context) =>ImgPicker()),


  };
  
 }
  
}