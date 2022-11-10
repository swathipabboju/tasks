import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/cricketers/cricketer_model.dart';
import 'package:flutter_application_1/cricketers/db.dart';
import 'package:flutter_application_1/cricketers/user_image_component.dart';

class CreateCricketer extends StatefulWidget {
  const CreateCricketer({super.key});
  //final UserImageComponent userImagePath;
  @override
  State<CreateCricketer> createState() => _CreateCricketerState();
}

class _CreateCricketerState extends State<CreateCricketer> {
  TextEditingController _name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cricketers Data")),
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
          TextButton(
              onPressed: () async {
                final cricketerData = CrickertModel(
                  name: _name.text,
                );

                final DatabaseHelper _databaseService = DatabaseHelper.instance;

                final saved = await _databaseService.insertInto(
                    cricketerData.toJson(), "Cricketers");
                print("data saved $saved");
                print("name is ${_name.text}");
              },
              child: Text("Submit"))
        ]),
      ),
    );
  }
}
