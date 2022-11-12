import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

ValueNotifier<String> userGender = ValueNotifier("");

ValueNotifier<XFile?> userImagePath = ValueNotifier(null);
ValueNotifier<DateTime> userDob = ValueNotifier(DateTime.now());
ValueNotifier<String?> selectedCountry = ValueNotifier(null);

