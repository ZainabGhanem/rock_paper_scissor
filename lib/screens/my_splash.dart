import 'dart:async';

import 'package:flutter/material.dart';

import 'log_in.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class MySplash extends StatefulWidget {
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MySplash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LogIn()));
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xff848890),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 250,),
            Image.asset(
              'assets/images/rps.jpg',
              height: 150,
              width: 150,
            ),
            SizedBox(height:15),
            SpinKitFadingCircle(
              color: Colors.white,
              size: 50.0,
            )
          ],
        ),
      ),
    );
  }
}
