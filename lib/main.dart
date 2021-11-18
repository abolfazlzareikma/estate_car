import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping/Material/MaterialDetail.dart';
import 'package:shopping/Material/MaterialEstate.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: '/materialEstate',
      defaultTransition: Transition.downToUp,
      getPages: [
  new GetPage(name: '/materialEstate', page: () => new MaterialEstate()),
      ],
      theme: ThemeData(
        primarySwatch: Colors.grey,
        primaryColor: Colors.grey,
      ),
    );
  }
}































































































