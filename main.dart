import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Regi.dart';
import 'Home.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My project"),
          backgroundColor: Colors.grey,
        ),
        backgroundColor: Color.fromRGBO(190, 194, 191, 100),
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 40, top: MediaQuery.of(context).size.height / 100),
              child: Text('LOG IN PAGE',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  )),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 2,
                  right: 40,
                  left: 40,
                ),
                child: Column(
                  children: [
                    TextField(
                        decoration: InputDecoration(
                          fillColor: Color.fromRGBO(190, 194, 191, 125),
                          filled: true,
                          hintText: 'Your email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          fillColor: Color.fromRGBO(190, 194, 191, 125),
                          filled: true,
                          hintText: 'Enter Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        )),
                    SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Get.to(Home(),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(190, 194, 191, 125),
                        elevation: 4,
                      ),
                      child: const Text(
                        'Log in',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Do not have an account?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Get.to(
                          Regi(),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(190, 194, 191, 125),
                        elevation: 2,
                      ),
                      child: Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
