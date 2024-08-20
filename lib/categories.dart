import 'package:flutter/material.dart';

class categoriespage extends StatefulWidget {
  const categoriespage({Key? key}) : super(key: key);

  @override
  State<categoriespage> createState() => _categoriespageState();
}


class _categoriespageState extends State<categoriespage> {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(
        toolbarHeight: 25,
        backgroundColor: Colors.white,
        title: Text('Categories:', style: TextStyle( color: Colors.black, fontSize: 20,   ),),elevation: 0,),
        body: Center(
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              ),
              children: [
                      Image.asset('assets/c.jpg',height: 20, width: 10,),
                Image.asset('assets/f.jpg', height: 20, width: 10,),
                Image.asset('assets/j.jpg', height: 20, width: 10,),
                Image.asset('assets/k.jpg', height: 20, width: 10,),
                Image.asset('assets/s.jpg', height: 20,width: 10,),
                Image.asset('assets/t.jpg', width: 20, height: 10,),
              ],
            ),
          ),

      ),
    );

  }
}


