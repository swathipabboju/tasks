import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';

// import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/cricketers/cricketer_model.dart';
import 'package:flutter_application_1/cricketers/db.dart';
import 'package:flutter_application_1/cricketers/notifier.dart';
import 'package:flutter_application_1/cricketers/user_country_component.dart';
import 'package:flutter_application_1/cricketers/retrieve.dart';
import 'package:flutter_application_1/cricketers/user_dob_component.dart';
import 'package:flutter_application_1/cricketers/user_gender_component.dart';
import 'package:flutter_application_1/cricketers/user_image_component.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

import '../routes/allRoutes.dart';

class CreateCricketer extends StatefulWidget {
  const CreateCricketer({super.key});
  //final UserImageComponent userImagePath;
  @override
  State<CreateCricketer> createState() => _CreateCricketerState();
}

class _CreateCricketerState extends State<CreateCricketer> {
  final TextEditingController _name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cricketers Data")),
      body: SingleChildScrollView(
        child: Column(children: [
          UserImageComponent(),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              controller: _name,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
                hintText: 'Enter cricketer name',
              ),
            ),
          ),
          UserGenderComponent(),
          UserDobComponent(),
          DropDownComponent(),
          TextButton(
              onPressed: () async {
                final date = DateFormat("dd/MMM/yyyy").format(userDob.value);
                final cricketerData = CrickertModel(
                    name: _name.text,
                    gender: userGender.value,
                    dob: date,
                    country: selectedCountry.value,
                    userId: const Uuid().v1(),
                    userimage: userImagePath.value?.path ?? "");

                final DatabaseHelper _databaseService = DatabaseHelper.instance;

                final saved = await _databaseService.insertInto(
                    cricketerData.toJson(), "Cricketers");
                print("data saved $saved");

               

                // print(userGender.value);
                // print("name is ${_name.text}");
                //  print(userDob.value);
                //   print(selectedCountry.value);
                //   print("print image file ${userImagePath.value?.path}");
                // print("print dob ${userDob.value}");
                // print("print country ${selectedCountry.value}");
              },
              child: Text("Submit")),
          TextButton(
            onPressed: () async {
              print("submit buttton pressed");
              Navigator.pushNamed(context, AllRoutes.userdata);
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => UserRetrieveComponent()),
              );
            },
            child: Text("View"),

          ),
           /* TextButton(
            onPressed: () async {
              print("delete buttton pressed");


             final DatabaseHelper _databaseService = DatabaseHelper.instance;

              final saved = await _databaseService.deleteDataByName(
                  );
              print("data saved $saved");


              /* Navigator.pushNamed(context, AllRoutes.userdata);
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => UserRetrieveComponent()),
              ); */
            },
            child: Text("delete"),
          ) */
        ]),
      ),
    );
  }
}
