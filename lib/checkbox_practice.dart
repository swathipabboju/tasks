import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/notifier_list.dart';

class CheckboxPractice extends StatelessWidget {
  const CheckboxPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("checkbox")),
      body: Column(
        children: [
          Column(
            children: [
              ValueListenableBuilder(
                  valueListenable: practice_user_role,
                  builder: ((context, val, child) {
                    //print(val["Apple"]);
                    return Row(
                      children: [
                        Checkbox(
                            value: val["Apple"],
                            onChanged: ((valuee) {
                              practice_user_role.value["Apple"] = valuee!;
                              print(practice_user_role.value);
                              print(practice_user_role.value["Apple"]);
                            })),

                      ],
                    );
                  })),
              
            ],
          )
        ],
      ),
    );
  }
}
