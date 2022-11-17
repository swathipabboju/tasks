import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/checkbox/notifier_list.dart';

class userRoleComponent extends StatelessWidget {
  const userRoleComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("checkbox")),
      body: Column(
        children: [
          Column(
            children: [
              ValueListenableBuilder(
                  valueListenable: user_role,
                  builder: ((context, val, child) {
                    return Row(
                      children: [
                        Checkbox(
                            value: val,
                            onChanged: ((value) {
                              user_role.value = value!;
                            })),
                        Text("Batsman"),
                        Checkbox(
                            value: val,
                            onChanged: ((value) {
                              user_role.value = value!;
                            })),
                        Text("Bowler"),
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
