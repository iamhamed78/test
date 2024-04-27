// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class Viewpage1 extends StatelessWidget {
  const Viewpage1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 184, 29, 18),
                    borderRadius: BorderRadius.circular(10.0)),
                width: MediaQuery.of(context).size.width,
                height: 80.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 5.0),
                      child: Text(
                        'Have a nice day ,Kate !',
                        style: TextStyle(fontSize: 30.0, color: Colors.white),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0.0, 0.0, 25.0, 5.0),
                      child: Icon(
                        Icons.cloud_done,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ),
                  ],
                ),
              ),
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}
