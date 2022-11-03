import 'dart:convert';
import 'dart:ffi';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/routes/ApiConstants.dart';

import 'package:flutter_application_1/version_details_model.dart';
import 'package:flutter_application_1/version_details_model.dart';
import 'package:flutter_application_1/version_details_model.dart';

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
            passingDetails("status code", _versionModel?.statusCode.toString()),
            passingDetails("status message", _versionModel?.statusMessage),
            passingDetails("paginated", _versionModel?.paginated.toString()),
            passingDetails("success", _versionModel?.success.toString()),
            const Padding(
              padding: EdgeInsets.only(right: 320),
              child: Text("data  :{}"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100),
              child: Column(
                children: [
                  datadetails(
                      "appname  :", _versionModel?.data?.appName?.toString()),
                  datadetails("lastUpdatedData  :",
                      _versionModel?.data?.lastUpdatedDate?.toString()),
                  datadetails("maxTimeCheck  :",
                      _versionModel?.data?.maxTimeChk?.toString()),
                  datadetails("version no  :",
                      _versionModel?.data?.versionNo?.toString()),
                ],
              ),
            )
          ],
        ));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchDetails();
  }

  fetchDetails() async {
    /* final requesturl =
        "https://uat3.cgg.gov.in/cmnwebservicesmobile/attwsapi/" +
            "versionCheck"; */
    final requesturl = ApiConstant.baseurl + ApiConstant.endpoint;

    final requestPayload = {"appName": "MJPHRMS", "mobileType": "Android"};
    final dio_obj = Dio();

    final _response = await dio_obj.post(requesturl, data: requestPayload);
    print(_response);
    // convertion from json to model
    setState(() {
      _versionModel = VersionModel.fromJson(_response.data);
    });
  }
}

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
}

passingDetails(String title, String? value) {
  return SizedBox(
    child: Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //children: [Text(title), Text(value!)],
          children: [Text(title), Text(value!)],
        ),
      ),
    ),
  );
}
