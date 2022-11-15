import 'package:flutter/material.dart';

import 'package:flutter_application_1/cricket_folder/details_of_cricketer.dart';

class ListOfCricketers extends StatefulWidget {
  const ListOfCricketers({super.key});

  @override
  State<ListOfCricketers> createState() => _ListOfCricketersState();
}

class _ListOfCricketersState extends State<ListOfCricketers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Of Cricketers")),
      body: Container(
        child: ListView.builder(itemBuilder: ((context, index) {
          return ListTile();
        })),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print("floating button pressed");
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => DetailsOfCricketer()));
        },
      ),
    );
  }
}
