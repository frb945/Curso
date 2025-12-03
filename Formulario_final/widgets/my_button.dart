import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final String? title;
  final IconData? icon;
  final VoidCallback? onclick;

  const Mybutton({super.key , required this.title, required this.icon , required this.onclick});

  @override
  Widget build(BuildContext context) {
    return SizedBox( 
      width: double.infinity,
      child:ElevatedButton.icon(
        onPressed: onclick!, 
        label:Text(title!),
        icon: Icon(icon!),
        ),
    );
  }
}