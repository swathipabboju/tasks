import 'package:flutter/cupertino.dart';

class TaskNotifier with ChangeNotifier {
  var itemsList = [];

  onAdd(item) {
    itemsList.add(item);
    notifyListeners();
  }

  onDelete(item) {
    itemsList.remove(item);
    notifyListeners();
  }
}
