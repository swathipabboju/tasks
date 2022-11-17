
import 'dart:convert';



import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  dynamic jsonResult;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile")
        ),
        body: Card(
          color: Colors.grey,
          child: Center(
            child: Column(
              children:  [
                const CircleAvatar(
                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1604072366595-e75dc92d6bdc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8cHJvZmlsZSUyMHBob3RvfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                radius: 90,
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "Swathi",style: TextStyle(color: Colors.black),
                  ),
              ),

             jsondetails("Full Name :",jsonResult["details"]["name"]),
              jsondetails("Designation :",jsonResult["details"]["designation"]),
              jsondetails("Emp Id :",jsonResult["details"]["id"]),
               jsondetails("Email :",jsonResult["details"]["email"]),
                jsondetails("Contact no:",jsonResult["details"]["contact no"]),

            ],
            ),
          )
          )
        );
  }


jsondetails(String k,String v){
  return SizedBox(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(k,style: TextStyle(color: Colors.black),),
        Text(v,style: TextStyle(color: Colors.black),),
      ],
    ),
  );
  
}
 

@override
  void initState(){
  super.initState();
  fetchjsondata();
  print("Hello World");
}

  fetchjsondata() async{
    String jsondata=await rootBundle.loadString('assets/profile_details.json');
    
    setState(() {
     jsonResult = json.decode(jsondata);
    

    });
    
    
    
    
  }





}