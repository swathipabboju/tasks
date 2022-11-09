import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';

class UserImageComponent extends StatefulWidget {
  const UserImageComponent({super.key});

  @override
  State<UserImageComponent> createState() => _UserImageComponentState();
}

class _UserImageComponentState extends State<UserImageComponent> {
  String imagepath = "";
  XFile? selectedimage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: (() async {
          final imagefile =
              await ImagePicker().pickImage(source: ImageSource.gallery);
          setState(() {
            selectedimage = imagefile;
          });
        }),
        child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            child:(selectedimage==null
                ? Image.asset("assets/cricketer.jpg")
                : Image.file(File(selectedimage!.path))),
      ),
      )
    );
  }
}
