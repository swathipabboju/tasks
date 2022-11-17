import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart';

/*
Base Url:https://uat3.cgg.gov.in/cmnwebservicesmobile/attwsapi/
endpoint : versionCheck
type: POST
headders: {'Content-Type': 'application/json; charset=UTF-8'}
parameters:null
body:  {
    "appName": "MJPHRMS",
    "mobileType": "Android"
   
}
autherization: null
 */

class VersionCheckNew extends StatefulWidget {
  const VersionCheckNew({super.key});

  @override
  State<VersionCheckNew> createState() => _VersionCheckNewState();
}

class _VersionCheckNewState extends State<VersionCheckNew> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Version Check"),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchVersionDetailFromApi();
  }

  fetchVersionDetailFromApi() async {
    final requestUrl =
        "https://uat3.cgg.gov.in/cmnwebservicesmobile/attwsapi/" +
            "versionCheck";
    final headersnew = {'Content-Type': 'application/json; charset=UTF-8'};
    final payoload = {"appName": "MJPHRMS", "mobileType": "Android"};

    final Diorequest = Dio();
    final response = await Diorequest.post(requestUrl,
        data: payoload, options: Options(headers: headersnew));
    print(response.data);
  }
}
