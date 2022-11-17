import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/provider/task_with_provider.dart';
import 'package:flutter_application_1/routes/allRoutes.dart';
import 'package:provider/provider.dart';

class listviewScreen extends StatelessWidget {
  const listviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dataFromProvider = Provider.of<TaskNotifier>(context);
    return Scaffold(
      appBar: AppBar(title: Text("List of details")),
      body: Container(
            child: ListView.builder(
                itemCount: dataFromProvider.itemsList.length,
                itemBuilder: ((context, index) {
                  final UserName = dataFromProvider.itemsList[index]["name"];
                  final UserMobileNumber = dataFromProvider.itemsList[index]["number"];
                  return ListTile(
                    title: Text(UserName),
                    subtitle: Text(UserMobileNumber),
                  );
                })),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),onPressed: () {
            Navigator.pushNamed(context,AllRoutes.details_screen);
          },),
         
        
      
    );
  }
}
