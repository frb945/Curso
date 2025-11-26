import 'package:flutter/material.dart';
import 'package:projf_formulario/pages/form_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Formulário Flutter",
      theme: ThemeData(
        primarySwatch: Colors.grey
      ),
      home: FormPage(),
    );
  }
}