import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ReusableTextField extends StatelessWidget {
  const ReusableTextField(
      {super.key,
      required this.reusablePrefixIcon,
      required this.reusableController,
      required this.reusableHintText,
      required this.reusableTextcolor,
      this.isVisible,
      this.reusableIsSecured,
      this.reusableSuffixIcon,
      this.ontap, this.reusableisVisble});
  final Widget reusablePrefixIcon;
  final Widget? reusableSuffixIcon;
  final TextEditingController reusableController;
  final String reusableHintText;
  final Color reusableTextcolor;
  final bool? reusableIsSecured;
  final bool? reusableisVisble;
  final bool? isVisible;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
            controller: reusableController,
            obscureText: reusableisVisble?? false,
            style: TextStyle(color: reusableTextcolor),
            cursorColor: Colors.blue,
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              hintText: reusableHintText,
              prefixIcon: reusablePrefixIcon,
              
              /* suffixIcon: this.reusableIsSecured == true
                  ? GestureDetector(
                      onTap: (() {
                        ontap!();
                      }),
                      child: Icon(reusableisVisble == true
                          ? Icons.remove_red_eye
                          : Icons.remove_red_eye_outlined),
                    )
                  : null, */
            )),
      ),
    );
  }
}
