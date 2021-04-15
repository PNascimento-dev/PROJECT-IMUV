import 'package:flutter/material.dart';
import 'package:flutter_apk/login_page.dart';

class FrontPage extends StatefulWidget {
  @override
  _FrontPageState createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xff4feba1), body: _body());
  }

  _body() {
    return Center(
        child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 65, horizontal: 30),
                          width: 230,
                          height: 190,
                          child: Image.asset('assets/images/logo04.png')),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 15),
                        width: 280,
                        height: 50,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(29),
                          child: FlatButton(
                              padding: EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 40),
                              color: Colors.white,
                              onPressed: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage())),
                              child: Text(
                                'LOGIN',
                                style: TextStyle(fontSize: 14),
                              )),
                        ),
                      )
                    ]))));
  }
}
