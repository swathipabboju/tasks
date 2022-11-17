// import 'package:image_picker/image_picker.dart';



class CrickertModel {
  String? name;
  String? userId;
 
  String? gender;
  String? dob;
  String? userimage;
  String? country;

  CrickertModel(
      {this.name,
      this.userId,
     
      this.gender,
      this.dob,
      this.userimage,
      this.country});

  CrickertModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    userId = json['userId'];
    
    gender = json['gender'];
    dob = json['dob'];
    userimage = json['userimage'];
    country = json['country'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['userId'] = this.userId;
    data['gender'] = this.gender;
    data['dob'] = this.dob;
    data['userimage'] = this.userimage;
    data['country'] = this.country;
    return data;
  }


}


/* class CrickertModel {
  String? name;
 

 

  CrickertModel(
      {this.name, required String gender,
     
     
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
 */