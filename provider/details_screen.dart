import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/provider/listview_screen.dart';
import 'package:flutter_application_1/provider/task_with_provider.dart';
import 'package:flutter_application_1/reusable_widgets/reusable_button.dart';
import 'package:flutter_application_1/reusable_widgets/reusable_textfield.dart';
import 'package:provider/provider.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final providerdata = Provider.of<TaskNotifier>(context);
    TextEditingController name = TextEditingController();
    TextEditingController mobileNumber = TextEditingController();
    var isPasswordVisble = false;

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ReusableTextField(
                reusablePrefixIcon: const Icon(Icons.person),
                reusableController: name,
                reusableHintText: "Enter your name",
                reusableTextcolor: Colors.black,
              ),
              ReusableTextField(
                reusablePrefixIcon: const Icon(Icons.mobile_off_outlined),
                reusableController: mobileNumber,
                reusableHintText: "Enter your mobile number",
                reusableTextcolor: Colors.black,
                reusableIsSecured: true,
                reusableisVisble: true,
                isVisible: isPasswordVisble,
                ontap: (() {
                  setState(){
                    isPasswordVisble=!isPasswordVisble;
                  }
                }),
                
                
              ),
              TextButton(
                onPressed: () {
                  final data = {"name": name.text, "number": mobileNumber.text};
                  providerdata.onAdd(data);
                  Navigator.pop(context);

                  // providerdata.onAdd(name.text);
                  // Navigator.pop(context);
                },
                child: Text("submit"),
              )
            ],
          ),
        ),
      ),
    );
  }
}




 /*  Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  controller: name,
                  cursorColor: Colors.blue,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter your Name",
                  )),
            ), */ 
//width: MediaQuery.of(context).size.width*0.8,