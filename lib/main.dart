import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:sukin/ui/screens/details.dart';
import 'package:sukin/ui/screens/loading.dart';
// import 'package:sukin/ui/screens/home.dart';
import 'package:sukin/utilities/constant.dart';

void main() {
  runApp(MyApp(

  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: new ThemeData(
          scaffoldBackgroundColor: kScaffoldColor,
        iconTheme: IconThemeData(color: kPrimaryColor),
      ),
      home: Loading(),
    );
  }
}

