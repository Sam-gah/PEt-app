import 'package:flutter/material.dart';
import 'package:petapp/config.dart';

class DrawApp extends StatefulWidget {
  const DrawApp({Key? key}) : super(key: key);

  @override
  State<DrawApp> createState() => _DrawAppState();
}

class _DrawAppState extends State<DrawApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
       color:primarycolor,
    );
  }
}
