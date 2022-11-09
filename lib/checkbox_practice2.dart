




import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/checkbox_items.dart';
import 'package:flutter_application_1/notifier_list.dart';

class CheckboxPractice2 extends StatelessWidget {
  CheckboxPractice2({super.key});
  final items = [CheckboxItems(title: "bowler"),
    CheckboxItems(title: "batsman")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("checkbox")),
      body: Column(
        children: [
          ValueListenableBuilder(
              valueListenable: user_role,
              builder: ((context, val, child) {
                return Column(
                  children: [
                    CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    value: user_role.value,
                    title: Text("Allow"),
                    onChanged: ((value) {
                      user_role.value = value!;
                    })),
                  ],
                );
              })),
              ValueListenableBuilder(
              valueListenable: user_role,
              builder: ((context, val, child) {
                return Column(
                  children: [
                    CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        value: user_role.value,
                        title: Text("Allow"),
                        onChanged: ((value) {
                          user_role.value = value!;
                        })),
                  ],
                );
              }))
        ],
      ),
    );
  }

  Widget calling(CheckboxItems items) {
    return CheckboxListTile(
        controlAffinity: ListTileControlAffinity.leading,
        value: items.status,
        title: Text(items.title),
        onChanged: ((value) {
          items.status=value!;
        }));
  }
}
 


/* import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/checkbox_items.dart';
import 'package:flutter_application_1/notifier_list.dart';

class CheckboxPractice2 extends StatelessWidget {
  CheckboxPractice2({super.key});
  final items = [CheckboxItems(title: "bowler"),
    CheckboxItems(title: "batsman")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("checkbox")),
      body: Column(
        children: [
          ValueListenableBuilder(
              valueListenable: user_role,
              builder: ((context, val, child) {
                return Column(
                  children: [
                    ...items.map(calling).toList(),
                    /* CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    value: user_role.value,
                    title: Text("Allow"),
                    onChanged: ((value) {
                      user_role.value = value!;
                    })), */
                  ],
                );
              }))
        ],
      ),
    );
  }

  Widget calling(CheckboxItems items) {
    return CheckboxListTile(
        controlAffinity: ListTileControlAffinity.leading,
        value: items.status,
        title: Text(items.title),
        onChanged: ((value) {
          items.status=value!;
        }));
  }
}
 */