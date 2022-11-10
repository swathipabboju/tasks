import 'dart:convert';
import 'dart:ffi';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/routes/ApiConstants.dart';

import 'package:flutter_application_1/version_check/version_details_model.dart';
import 'package:flutter_application_1/version_check/version_details_model.dart';
import 'package:flutter_application_1/version_check/version_details_model.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'version_details_model.dart';

class VersionCheck extends StatefulWidget {
  const VersionCheck({super.key});

  @override
  State<VersionCheck> createState() => _VersionCheckState();
}

class _VersionCheckState extends State<VersionCheck> {
  VersionModel? _versionModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Version check API")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Padding(
              padding: EdgeInsets.only(bottom: 50),
              child: Text(
                "Response for VersionCheck API",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: "roboto",
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 320),
            ),
            // passingDetails("status code", _versionModel?.statusCode?.toString()),
            /*  passingDetails(
                "status message", _versionModel?.statusMessage ?? ""),
            passingDetails(
                "paginated", _versionModel?.paginated.toString() ?? ""),
            passingDetails("success", _versionModel?.success.toString() ?? ""), */
            Padding(
              padding: EdgeInsets.only(right: 320),
              child: Text("data  :{}"),
            ),

            /* Padding(
              padding: const EdgeInsets.only(left: 100),
              child: Column(
                children: [
                  
                  datadetails(
                      "appname  :", _versionModel?.data?.appName),
                  datadetails("lastUpdatedData  :",
                      _versionModel?.data?.lastUpdatedDate?.toString()),
                  datadetails("maxTimeCheck  :",
                      _versionModel?.data?.maxTimeChk?.toString()),
                  datadetails("version no  :",
                      _versionModel?.data?.versionNo?.toString()),
                ],
              ),
            ) */
          ],
        ));
  } //build

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchDetails();
  }

  fetchDetails() async {
    final url = "https://uat3.cgg.gov.in/cmnwebservicesmobile/attwsapi/" +
        "versionCheck";
    final payload = {"appName": "MJPHRMS", "mobileType": "Android"};

    final dio_obj = Dio();

    try {
      final _response = await dio_obj.post(
        url,data: payload
      );
      final versionmodel = VersionModel.fromJson(_response.data);
      print(_response.data);
      setState(() {
        _versionModel = versionmodel;
      });

      //print(versionmodel.statusMessage);

    } on DioError catch (e) {
      print(e.message);
    }
  }
}
/* 
    datadetails(tit, String? val) {
      return Row(
        children: [
          Text(tit),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(val!),
          )
        ],
      );
    } */

passingDetails(String s, String t) {
  return SizedBox(
    child: Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text(s), Text(t)],
        ),
      ),
    ),
  );
}




/* import 'dart:convert';
import 'dart:ffi';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/routes/ApiConstants.dart';

import 'package:flutter_application_1/version_details_model.dart';
import 'package:flutter_application_1/version_details_model.dart';
import 'package:flutter_application_1/version_details_model.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'version_details_model.dart';

class VersionCheck extends StatefulWidget {
  const VersionCheck({super.key});

  @override
  State<VersionCheck> createState() => _VersionCheckState();
}

class _VersionCheckState extends State<VersionCheck> {
  VersionModel? _versionModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Version check API")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 50),
              child: Text(
                "Response for VersionCheck API",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: "roboto",
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 320),
            ),
            // passingDetails("status code", _versionModel?.statusCode.toString()),
            /*  passingDetails(
                "status message", _versionModel?.statusMessage ?? ""),
            passingDetails(
                "paginated", _versionModel?.paginated.toString() ?? ""),
            passingDetails("success", _versionModel?.success.toString() ?? ""), */
            const Padding(
              padding: EdgeInsets.only(right: 320),
              child: Text("data  :{}"),
            ),

            /* Padding(
              padding: const EdgeInsets.only(left: 100),
              child: Column(
                children: [
                  
                  datadetails(
                      "appname  :", _versionModel?.data?.appName),
                  datadetails("lastUpdatedData  :",
                      _versionModel?.data?.lastUpdatedDate?.toString()),
                  datadetails("maxTimeCheck  :",
                      _versionModel?.data?.maxTimeChk?.toString()),
                  datadetails("version no  :",
                      _versionModel?.data?.versionNo?.toString()),
                ],
              ),
            ) */
          ],
        ));
  } //build

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchDetails();
  }

  fetchDetails() async {
    final url = "https://uat3.cgg.gov.in/cmnwebservicesmobile/attwsapi/" +
        "versionCheck";
    final payload = {"appName": "MJPHRMS", "mobileType": "Android"};

    final dio_obj = Dio();

    try {
      final _response = await dio_obj.post(
        url,
      );
      final versionmodel = VersionModel.fromJson(_response.data);
      //print(_response.data);
      setState(() {
        _versionModel = versionmodel;
      });

      //print(versionmodel.statusMessage);

    } on DioError catch (e) {
      print(e.message);
    }
  }
}
/* 
    datadetails(tit, String? val) {
      return Row(
        children: [
          Text(tit),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(val!),
          )
        ],
      );
    } */

passingDetails(String s, String t) {
  return SizedBox(
    child: Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text(s), Text(t!)],
        ),
      ),
    ),
  );
}
 */