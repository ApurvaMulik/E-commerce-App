import 'package:flutter/material.dart';

class createacc extends StatefulWidget {
  const createacc({Key? key}) : super(key: key);

  @override
  State<createacc> createState() => _createaccState();
}

class _createaccState extends State<createacc> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/5.jpg'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
            children: [
        Container(
        padding: EdgeInsets.only(left: 35, top: 100),
        child: Text(
          'Create\nAccount',
          style: TextStyle(color: Colors.black, fontSize: 33),
        ),
      ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.30, right: 35, left: 35),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            hintText: 'Name',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            hintText: 'Phone Number',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            hintText: 'Email',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            hintText: 'Create Password',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            hintText: 'Confirm Password',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                      SizedBox(
                        height: 30,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(onPressed: (){
                            Navigator.pushNamed(context, 'loginpage');
                          }, child: Text('Sign In', style: TextStyle(
                            decoration: TextDecoration.underline,
                              fontSize: 20,
                              color: Colors.black
                          ),))
                        ],
                      )
                    ],
                  ),
                ),
              )
      ]
      ),
    ),
    );
  }
}
