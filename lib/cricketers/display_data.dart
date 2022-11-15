


import 'package:flutter/material.dart';
import 'package:flutter_application_1/cricketers/cricketer_model.dart';


class CricketerListItem extends StatelessWidget {
  const CricketerListItem({super.key, required this.details});
  final CrickertModel? details;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey,
      child: Column(
        children: [
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Name:  ${details?.name ?? ""}"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("DOB:  ${details?.dob ?? ""}"),
          ),
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("gender:  ${details?.gender ?? ""}",style: TextStyle(color: Colors.black),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("country:  ${details?.country ?? ""}"),
          ),
         
         Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: (){

                      
                  }, 
                  icon: const Icon(
                    Icons.edit, 
                  color: Colors.blue,)
                  ),
                  IconButton(
                    onPressed: (){
                      

                  }, icon: const Icon(
                    Icons.delete, 
                  color: Colors.red,))

                ],
              ),
        ],
      ),
    );
  }
}
