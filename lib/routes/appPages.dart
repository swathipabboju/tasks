
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/checkbox_practice.dart';

import 'package:flutter_application_1/cricketers/create_cricketer.dart';
import 'package:flutter_application_1/cricketers/db.dart';
import 'package:flutter_application_1/imagepicker.dart';
import 'package:flutter_application_1/login_page_url.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/multi_checkbox.dart';
import 'package:flutter_application_1/notifier_list.dart';
import 'package:flutter_application_1/profile.dart';

import 'package:flutter_application_1/user_role_component.dart';
import 'package:flutter_application_1/version_check/version_check.dart';
import 'package:flutter_application_1/version_check/versionchecknew.dart';
import 'package:image_picker/image_picker.dart';




import 'allRoutes.dart';

class AllPages{
 static  Map<String,WidgetBuilder> get routes{
  return {


AllRoutes.ProfilePage:((context) => ProfilePage()),
AllRoutes.loginurl:((context) => login_url()),
AllRoutes.versionCheck:((context) =>VersionCheck()),
AllRoutes.imagePicker:((context) =>ImgPicker()),
AllRoutes.versionchecknew:((context) => VersionCheckNew()),
AllRoutes.checkbox:((context) => userRoleComponent()),
AllRoutes.practicecheckbox:((context) => CheckboxPractice()),


AllRoutes.cricketer:((context) => CreateCricketer()),
AllRoutes.multicheckbox: ((context) => MultiCheckbox()),


  };
  
 }
  
}