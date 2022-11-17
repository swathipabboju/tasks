import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/checkbox/checkbox_items.dart';
import 'package:flutter_application_1/checkbox/notifier_list.dart';

class MultiCheckbox extends StatelessWidget {
  const MultiCheckbox({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("checkbox")),
      // displaying list items
      body: ListView.builder(
          itemCount: checkboxlist.value.length,
          itemBuilder: ((context, index) {
            return ValueListenableBuilder(
                // calling notifier
                valueListenable: checkboxlist,
                builder: ((context, val, child) {

                  return CheckboxListTile(
                      title: Text(val[index].title),
                      value: val[index].status,
                      
                      onChanged: ((valuee) {
                        checkboxlist.value[index].status = valuee!;
                          
                        
                      }));
                }));
          })),
    );
  }
}



/* if (value == true) {
                          checkboxlist.value[index].status = false;
                        } else {
                          checkboxlist.value[index].status = true;
                        } */


//checkboxlist.value.= value!;

    // print("hiii");
     // print("${checkboxlist.value[0].status}");
    // print("${val[index].status}");

    /*  return ListTile(
                    
                    title: Text("${value[index].title}"),
                    
                  ); */