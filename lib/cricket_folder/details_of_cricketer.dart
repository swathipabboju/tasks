import 'package:flutter/material.dart';
import 'package:flutter_application_1/cricket_folder/cricketer_model.dart';

import 'package:flutter_application_1/cricket_folder/service.dart';
import 'package:intl/intl.dart';
import '../cricketers/notifier.dart';
import '../cricketers/user_country_component.dart';
import '../cricketers/user_dob_component.dart';
import '../cricketers/user_gender_component.dart';
import '../cricketers/user_image_component.dart';

class DetailsOfCricketer extends StatefulWidget {
  const DetailsOfCricketer({super.key});

  @override
  State<DetailsOfCricketer> createState() => _DetailsOfCricketerState();
}

class _DetailsOfCricketerState extends State<DetailsOfCricketer> {
  TextEditingController _name = TextEditingController();

  //
  var _service = Service();

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
          Row(
            children: [
              TextButton(
                  onPressed: () async {
                    final date =
                        DateFormat("dd/MMM/yyyy").format(userDob.value);
                    var model = CrickertModel1();
                    model.id = 0;
                    model.name = _name.text;
                    model.country = selectedCountry.value;
                    model.dob = userDob.value.toString();
                    model.gender = userGender.value;
                    print("model details ${model}");
                    print("model details ${model.country}");
                    print("model details ${model.dob}");
                    print("model details ${model.gender}");
                    print("model details ${model.name}");
                    print("model details ${model.id}");
                    print(model.cricketerMap());
                    var result =
                        await _service.saveCricketDetails(model.cricketerMap());
                    print(result);
                  },
                  child: Text("Save Details")),
              TextButton(
                onPressed: () async {
                  /*  Navigator.pushNamed(context, AllRoutes.userdata); */
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => UserRetrieveComponent()),
                  // );
                },
                child: Text("View Details"),
              ),
              TextButton(onPressed: (() {}), child: Text("Clear All"))
            ],
          ),
        ]),
      ),
    );
  }
}
