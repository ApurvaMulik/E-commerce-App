import 'package:flutter/material.dart';

class abtus extends StatefulWidget {
  const abtus({Key? key}) : super(key: key);

  @override
  State<abtus> createState() => _abtusState();
}

class _abtusState extends State<abtus> {
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
          new IconButton(onPressed:() {}, icon: Icon(
              Icons.shopping_cart, color : Colors.black
          ))
        ],
      ),
      body: ListView(
        children: [

          new Container(
            padding: EdgeInsets.only( top: 10),
            child: ListTile(
              title: new Text('About Us:', style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 18,
              ),),

              subtitle: new Text("\nA&P Group (abbreviated A&P) is a multinational clothing company based in India that focuses on fast-fashion clothing for men, women, teenagers, and children."
                  "\n\nAddress: A&P Garments, Near Bhagali Hospital, Satara Road, Pune - 411037"
                  "\n\nTimings: 11:00 AM to 9:00 AM"
                , style: TextStyle(
                    color: Colors.black, fontSize: 18
                ),),

            ),

          )
        ],
      ),
    );
  }
}
