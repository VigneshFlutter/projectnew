

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:projectnew/login.dart';
import 'authentication.dart';
import 'package:flutter/services.dart';
import 'package:projectnew/fourth.dart';

import 'package:get/get.dart';



import 'package:flutter/material.dart';
import 'package:projectnew/firstpage.dart';


import 'package:flutter/material.dart';
import 'package:projectnew/main.dart';
import 'package:projectnew/secondpage.dart';

import 'package:projectnew/thirdpage.dart';

import 'package:image_picker/image_picker.dart';
import 'package:flutter/services.dart';

import 'dart:io';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
  }
      //   child: Column(
      //     children: [
      //       Container(
      //           padding: EdgeInsets.only(top: 40, left: 20, right: 20),
      //           child: Center(
      //               child: RichText(
      //             text: TextSpan(
      //               text: "Dont have an account? ",
      //               style: TextStyle(
      //                 color: Colors.white,
      //                 fontSize: 15,
      //               ),
      //               children: [
      //                 TextSpan(
      //                     text: " Register here",
      //                     style: TextStyle(
      //                         color: Colors.blue, fontWeight: FontWeight.bold),
      //                     recognizer: new TapGestureRecognizer()
      //                       ..onTap = () => {
      //                             Navigator.push(
      //                               context,
      //                               MaterialPageRoute(
      //                                   builder: (context) =>SignupPage()),
      //                             )
      //                           }),
      //               ],
      //             ),
      //           )))
      //     ],
      //   ),
      // ),
    //   home: new Scaffold(
    //     appBar: new AppBar(
    //       title: new Text("Title"),
    //     ),
    //     body: new Center(child: new Text("Click Me")),
    //     floatingActionButton: new FloatingActionButton(
    //       child: new Icon(Icons.add),
    //       backgroundColor: Colors.orange,
    //       onPressed: () {
    //         print("Clicked");
    //         Navigator.push(
    //           context,
    //           new MaterialPageRoute(builder: (context) => new LoginScreen()),
    //         );
    //       },
    //     ),
    //   ),
 