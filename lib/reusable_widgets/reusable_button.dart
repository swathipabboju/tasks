import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ReusableButton extends StatelessWidget {
  const ReusableButton({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 55,
          width: 244,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.blue,
          ),
          child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  //foregroundColor: Colour.textColor,,
                  textStyle: const TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  )),
              child: const Text("Get Start")),
        ),
      ),
    );
  }
}
