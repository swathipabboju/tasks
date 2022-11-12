


import 'package:flutter/material.dart';
import 'package:flutter_application_1/cricketers/cricketer_model.dart';
import 'package:flutter_application_1/cricketers/db.dart';
import 'package:flutter_application_1/cricketers/display_data.dart';

class UserRetrieveComponent extends StatefulWidget {
  const UserRetrieveComponent({super.key});

  @override
  State<UserRetrieveComponent> createState() => _UserRetrieveComponentState();
}

class _UserRetrieveComponentState extends State<UserRetrieveComponent> {

  List<CrickertModel> userData = [];
  //late CrickertModel? _CrickertModel;

  @override
  void initState() {
    super.initState();

    DatabaseHelper.instance.queryAllRows("Cricketers").then((value) {
      setState(() {
        value.forEach((element) {
          userData.add(CrickertModel(
           
            name: element['name'],
            dob: element["dob"],
            gender: element["gender"],
            country: element["country"]
             ));
          print(userData);
        });
      });
    }).catchError((error) {
      print(error);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cricketers List'),
      ),
      body: userData.isEmpty
          ? Center(child: Text('No Data found !!!'),)
          :Container(
        child: ListView.builder(
        itemCount: userData.length,
        
        itemBuilder: (context, index) {
          final CricketerData = userData[index];
          
            return CricketerListItem(details: CricketerData);
            
        },
      )),
          
    );
  }
}
