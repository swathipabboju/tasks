


import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/cricketers/notifier.dart';

class DropDownComponent extends StatelessWidget {
  const DropDownComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Select Country",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
        ),
        ValueListenableBuilder(
          valueListenable: selectedCountry,
          builder: (context, value, child) {
            return DropdownButton(
              hint: value == null
                  ? Text('Please Select Country')
                  : Text(
                      value,
                      style: TextStyle(color: Colors.blue),
                    ),
              isExpanded: true,
              iconSize: 30.0,
              style: TextStyle(color: Colors.blue),
              items: ["Bangladesh", "Bangladesh",  "South-Central Asia","India","Netherland"].map(
                (val) {
                  return DropdownMenuItem<String>(
                    value: val,
                    child: Text(val),
                  );
                },
              ).toList(),
              onChanged: (val) {
               
                selectedCountry.value = val;
              },
            );
          },
        ),
      ],
    );
  }
}
