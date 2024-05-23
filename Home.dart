import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(161, 163, 158, 100),
        body: Column(children: [
          Container(
            padding: EdgeInsets.only(left: 40, top: 100),
            child: Text('HOME PAGE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                )),
          ),
        ]));
  }
}
