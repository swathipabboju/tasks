import 'package:flutter_application_1/cricket_folder/all_functions.dart';
import 'package:flutter_application_1/cricket_folder/cricketer_model.dart';


class Service {
  late AllFunctions _allFunctions;
  Service() {
    _allFunctions = AllFunctions();
   // CrickertModel _cricketModel;
  }
  saveCricketDetails(CrickertModel1 data) async {
    return await _allFunctions.insertDetails(
        "cricketerTable",data.cricketerMap());
  }

  /*  SaveDetails(CrickertModel modelDetails) async {
    return await _allFunctions.insertDetails("cricketersTable", modelDetails.crickertModelMap());
  } */
}
