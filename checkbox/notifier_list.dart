import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/checkbox/checkbox_items.dart';

// ignore: non_constant_identifier_names
ValueNotifier<bool> user_role = ValueNotifier(false);
ValueNotifier<List<CheckboxItems>> checkboxlist = ValueNotifier(
  [ 
  CheckboxItems(title: "batsman",status: false),
  CheckboxItems(title: "bowler", status: false)
]
);

ValueNotifier<Map<String, bool>> practice_user_role = ValueNotifier({
  'Apple': false,
  'Banana': false,
  'Cherry': false,
  'Mango': false,
  'Orange': false,
});
