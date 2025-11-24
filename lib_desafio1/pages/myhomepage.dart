import 'package:flutter/material.dart';
import 'package:projf_desafio/widgets/Myelev.dart';
import 'package:projf_desafio/widgets/myappbar.dart';
import 'package:projf_desafio/widgets/mycontainer.dart';
import 'package:projf_desafio/widgets/myfab.dart';
import 'package:projf_desafio/widgets/mytxt.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Desafio flutter",
      home: Scaffold(
        appBar:PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight), 
          child: MyAppBar()
          ),
          body:Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [MyFab(),MyElevated(),MyTxt(),MyContainer()],
          )
      ),
    );
  }
}