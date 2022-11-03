import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/routes/ApiConstants.dart';
// import 'package:navigation_project/routes/api_constancts.dart';

class login_url extends StatefulWidget {
  const login_url({super.key});

  @override
  State<login_url> createState() => _login_urlState();
}

class _login_urlState extends State<login_url> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextField(
              controller: _emailController,
              keyboardType: TextInputType.none,
              //maxLines: 5,
              // maxLength: 10,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              obscureText: true,
              controller: _passwordController,
              //maxLines: 5,
              // maxLength: 10,
            ),
          ),

          TextButton(
            onPressed: () {
              print("button Action");
              //validateInputs();
              // Navigator.pushNamed(context, AllRoutes.otp);
              requestlogin(context);
            },
            child: const Text("Log In"),
            //style: ButtonStyle(backgroundColor:),
          ),

/*
           TextButton(
            onPressed: () {

              //to come back to previous screen
             //Navigator.pop(context);

            },
            child: Text("Back"),
            //style: ButtonStyle(backgroundColor:),
          )



*/

          //to get back to previous screen using navigator
/*
          
          
          TextButton(
            onPressed: () {
             Navigator.pop(context);
            },
            child: Text("Back"),
            //style: ButtonStyle(backgroundColor:),
          )

  */
        ],
      ),
    );
  }

  bool isValidEmail(String email) {
    return RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email);
  }

  bool isValidPassword(String password) {
    return RegExp(
            r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}')
        .hasMatch(password);
  }

  bool validateInputs() {
    if (_emailController.text.isEmpty) {
      showAlert("Please enter email");
      return false;
    } else if (isValidEmail(_emailController.text) == false) {
      showAlert("please enter valid email");
      return false;
    } else if (_passwordController.text.isEmpty) {
      showAlert("Please enter password");
      return false;
    } else if (isValidPassword(_passwordController.text) == false) {
      showAlert("please enter valid password");
      return false;
    }
    return true;
  }

  showAlert(String message, {String text = ""}) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(message + text),
            actions: [
              TextButton(
                onPressed: () {
                  print("clicked");
                  // print("button Action");
                  Navigator.pop(context);
                },
                child: Text("ok"),
                //style: ButtonStyle(backgroundColor:),
              )
            ],
          );
        }); //showDialog
  } //showAlert

  requestlogin(BuildContext context) async {
    
    // final requestUrl="http://uat9.cgg.gov.in/tsoilfed/serviceCalls/"+"getQualificationList";

    final requestUrl = ApiConstant.baseurl + ApiConstant.endpoint;
    final requestPayload = {
      "userid":"cgg@ghmc","password":"ghmc@cgg@2018"
    };

    final dio_obj = Dio();
    try {
      final response = await dio_obj.post(requestUrl,
          data: requestPayload
          );
          print("response data ${response.data}");
      
    } on DioError catch (e) {
      print("error in catch block $e");
      
      
    } 
  }
}
