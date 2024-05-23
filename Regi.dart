import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Home.dart';
class Regi extends StatelessWidget {
  const Regi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(161, 163, 158, 100),
        body: Stack(children: [
      Container(
        padding: EdgeInsets.only(left: 40, top: 150),
        child: Text('Registration Page',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            )),
      ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                top: 240,
                right: 40,
                left: 40,
              ),
              child: Column(
                children: [
                  TextField(
                      decoration: InputDecoration(
                        fillColor: Color.fromRGBO(190, 194, 191, 125),
                        filled: true,
                        hintText: 'User Name',
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
                        hintText: 'Enter Email',
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
                    height: 20,
                  ),
                  TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: Color.fromRGBO(190, 194, 191, 125),
                        filled: true,
                        hintText: 'Re-enter Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      )),
                  SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Get.to(Home());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(190, 194, 191, 125),
                      elevation: 4,
                    ),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
    ]
        ));
  }
}
