// import 'package:image_picker/image_picker.dart';

class CrickertModel {
  String? name;
 

 

  CrickertModel(
      {this.name,
     
     
      });

  CrickertModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
   
    
   
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
   
   
    return data;
  }
}
