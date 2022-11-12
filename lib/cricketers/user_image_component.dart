







import 'dart:io';


import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/cricketers/notifier.dart';
import 'package:image_picker/image_picker.dart';

class UserImageComponent extends StatelessWidget {
  const UserImageComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() async {
        final imageFile =
            await ImagePicker().pickImage(source: ImageSource.gallery);
        userImagePath.value = imageFile;
      }),
      child: ValueListenableBuilder(
        valueListenable: userImagePath,
        builder: (context, value, child) {
          return value == null
              ? Image.asset("assets/cricket.jpg")
              : Image.file(File(value.path));
        },
      ),
    );
  }
}














/* import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';

class UserImageComponent extends StatefulWidget {
  const UserImageComponent({
    super.key,
    
  });
  // ignore: non_constant_identifier_names
  
  //final Function(String value) callbackValue;
  @override
  State<UserImageComponent> createState() => _UserImageComponentState();
}

class _UserImageComponentState extends State<UserImageComponent> {
  String imagepath = "";
  XFile? selectedimage;
// final Function(XFile pathIs) callbackImagePicked;
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
           // callbackImagePicked(selectedimage!.path);
          }),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            child: (selectedimage == null
                ? Image.asset("assets/cricketer.jpg")
                : Image.file(File(selectedimage!.path))),
          ),
        ));
  }
}
 */