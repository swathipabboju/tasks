import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/cricketers/db.dart';
import 'package:flutter_application_1/cricketers/user_image_component.dart';

class CreateCricketer extends StatefulWidget {
  const CreateCricketer({super.key});

  @override
  State<CreateCricketer> createState() => _CreateCricketerState();
}

class _CreateCricketerState extends State<CreateCricketer> {
  TextEditingController _name = TextEditingController();
  final Db _dbfile = Db.obj;
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
        ]),
      ),
    );
  }
}
