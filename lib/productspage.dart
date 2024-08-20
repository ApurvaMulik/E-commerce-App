

import 'package:flutter/material.dart';
import 'package:internship_proj/categories.dart';
import 'package:internship_proj/fav.dart';
import 'package:internship_proj/home.dart';
import 'package:internship_proj/myaccount.dart';
import 'package:internship_proj/settings.dart';

class products extends StatefulWidget {
  const products({Key? key}) : super(key: key);

  @override
  State<products> createState() => _productsState();
}

class _productsState extends State<products> {

  List pages = [
    homepage(),
    categoriespage(),
    favpage(),
    settingspage(),
    myaccpage()

  ];
  int currentIndex = 0;
   void onTap(int index){
      setState(() {
        currentIndex = index;
      });
   }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: new AppBar(
        backgroundColor: Colors.grey,
        title: Text('A&P Garments', style: TextStyle(color: Colors.black),),
        actions: [
          new IconButton(onPressed:() {}, icon: Icon(
              Icons.search, color : Colors.black
          )),

          new IconButton(onPressed:() {
            Navigator.pushNamed(context, 'cart');
          }, icon: Icon(
                  Icons.shopping_cart, color : Colors.black
              )),



        ],
      ),


      body:
      pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,

        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.black,),
              label: 'Home',
              backgroundColor: Colors.grey
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.category_outlined, color: Colors.black,),
              label: 'Categories',
              backgroundColor: Colors.grey
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.favorite, color: Colors.black,),
              label: 'Favorites',
              backgroundColor: Colors.grey
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: Colors.black,),
            label: 'Settings',
            backgroundColor: Colors.grey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.black,),
            label: 'My Profile',
            backgroundColor: Colors.grey
          ),

        ],


      ),


    );

  }
}