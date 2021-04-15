import 'package:flutter/material.dart';
import 'package:flutter_apk/front_page.dart';
import 'package:flutter_apk/login_page.dart';
import 'home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: FrontPage(),
    );
  }
}
