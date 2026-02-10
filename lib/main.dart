import 'package:flutter/material.dart';
import 'package:untitled23/HomeSecrean.dart';
import 'package:untitled23/constants.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Eleectric Store',
         theme: ThemeData(
           primaryColor: kBackgroundColor,
         ),
         home: HomeSecrean(),
    );
  }
}



