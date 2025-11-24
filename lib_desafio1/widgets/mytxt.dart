import 'package:flutter/material.dart';

class MyTxt extends StatefulWidget {
  const MyTxt({super.key});

  @override
  State<MyTxt> createState() => _MyTxtState();
}

class _MyTxtState extends State<MyTxt> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){},
      child: Text("Text button")
    );
  }
}