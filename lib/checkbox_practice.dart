import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/multi_checkbox.dart';
import 'package:flutter_application_1/notifier_list.dart';

class CheckboxPractice extends StatelessWidget {
  const CheckboxPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("checkbox")),
      body: Column(
        children: [
          MultiCheckbox(),
          
        ],
      ),
    );
  }
}
