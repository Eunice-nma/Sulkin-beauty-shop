import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sukin/ui/screens/walk_through.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    startTimer();
    super.initState();
  }

  void startTimer() async {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(() => WalkThrough());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/sukin_logo.png', width: 300, height: 300,),
      ),
    );
  }
}
