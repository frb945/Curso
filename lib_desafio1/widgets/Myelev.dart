import 'package:flutter/material.dart';

class MyElevated extends StatefulWidget {
  const MyElevated({super.key});

  @override
  State<MyElevated> createState() => _MyElevatedState();
}

class _MyElevatedState extends State<MyElevated> {
  

  @override
  Widget build(BuildContext context) {
    return ElevatedButton
      (onPressed: (){},
      child: Text("ElevenButton")
    );
  }
}