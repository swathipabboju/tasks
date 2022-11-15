// import 'package:image_picker/image_picker.dart';

class CrickertModel1 {
  int? id;
  String? name;
  String? dob;
  String? gender;
  String? country;
  cricketerMap() {
    var mapping = <String, dynamic>{};
    mapping['id'] = id;
    mapping['name'] = name!;
    mapping['dob'] = dob!;
    mapping['gender'] = gender!;
    mapping['country'] = country!;
    return mapping;
  }
}
