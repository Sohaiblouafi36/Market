import 'package:flutter/material.dart';
import 'package:untitled23/HomeBody.dart';
import 'package:untitled23/appBar.dart';
import 'package:untitled23/constants.dart';


class HomeSecrean extends StatelessWidget {
  const HomeSecrean({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar:homeappBar(),
      body: HomeBody(),
    );
  }
}
