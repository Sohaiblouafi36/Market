import 'package:flutter/material.dart';
import 'package:untitled23/constants.dart';

AppBar homeappBar(){
  return  AppBar(
    backgroundColor: kPrimaryColor,
    elevation: 0,
    title: Text('Welcom to your store',
      style: TextStyle(
        color: Colors.white,
        fontSize: 26,
        fontWeight: FontWeight.w400,
      ),
    ),
    centerTitle: false,
    actions: [
      IconButton(
        icon: Icon(Icons.menu,color: Colors.white,),
        onPressed: () {  },
      )
    ],
  );
}