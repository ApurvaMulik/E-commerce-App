

import 'package:flutter/material.dart';
import 'package:internship_proj/aboutus.dart';

import 'package:internship_proj/createaccount.dart';
import 'package:internship_proj/loginpage.dart';
import 'package:internship_proj/password.dart';
import 'package:internship_proj/productspage.dart';



void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

      return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'loginpage',
        routes: {
          'loginpage' : (context) => Loginpage(),
          'createaccount' : (context) => createacc(),
          'productspage' : (context) => products(),
          'password' : (context) => pass(),
          'aboutus' : (context) => abtus(),

        },
      );
    }

  }

