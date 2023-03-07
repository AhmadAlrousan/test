import 'dart:io';

import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:test22/mobile.dart';
import 'package:test22/web.dart';


void main()async {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      //Give each size and its own widget
      home:LayoutBuilder(builder: (context , BoxConstraints constraint){

        if(constraint.minWidth.toInt() <= 550)
          return MobileScreen();

        return WebScreen();
      })
    );
  }
}

