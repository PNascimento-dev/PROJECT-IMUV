import 'package:flutter/material.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String dominio = '';
  String usuario = '';
  String senha = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff4feba1),
        resizeToAvoidBottomInset: false,
        body: _body());
  }

  _body() {
    return Scaffold(
        backgroundColor: Color(0xff4feba1),
        body: SingleChildScrollView(
            child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              width: 170,
                              height: 160,
                              child: Image.asset('assets/images/logo04.png')),
                          Container(
                              margin: EdgeInsets.symmetric(vertical: 0),
                              height: 1),
                          Container(
                            margin: EdgeInsets.symmetric(
                              vertical: 2,
                              horizontal: 2,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                  onChanged: (text) {
                                    dominio = text;
                                  },
                                  autofocus: true,
                                  keyboardType: TextInputType.url,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                  decoration: InputDecoration(
                                    labelText: 'Dominio',
                                    labelStyle: TextStyle(color: Colors.black),
                                  )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              onChanged: (text) {
                                usuario = text;
                              },
                              autofocus: true,
                              keyboardType: TextInputType.text,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 24),
                              decoration: InputDecoration(
                                  labelText: 'Usuario',
                                  labelStyle: TextStyle(
                                      color: Colors.black, fontSize: 20)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                                onChanged: (text) {
                                  senha = text;
                                },
                                autofocus: true,
                                obscureText: true,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                                decoration: InputDecoration(
                                  labelText: 'Senha',
                                  labelStyle: TextStyle(color: Colors.black),
                                )),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                vertical: 24,
                              ),
                              width: 265,
                              height: 30,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(29),
                                child: RaisedButton(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 15, horizontal: 40),
                                    color: Colors.white,
                                    onPressed: () => Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => HomePage())),
                                    child: Text(
                                      'LOGIN',
                                      style: TextStyle(fontSize: 14),
                                    )),
                              ),
                            ),
                          )
                        ])))));
  }
}
