import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'DrawApp.dart';
import 'config.dart';
void main()  => runApp(MaterialApp(home: Homepage(),));

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Stack(
       children: <Widget> [
        DrawApp(),
         HomeScreen(),
       ],
     ),
    );
  }
}
