import 'package:flutter/cupertino.dart';

// ignore: non_constant_identifier_names
ValueNotifier<bool> user_role = ValueNotifier(false);
ValueNotifier<Map<String,bool>> practice_user_role = ValueNotifier({
    'Apple': false,
    'Banana': false,
    'Cherry': false,
    'Mango': false,
    'Orange': false,
  });

