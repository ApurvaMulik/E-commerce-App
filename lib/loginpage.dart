import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final formKey = GlobalKey<FormState>();
  String name = " ";
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Container(

      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/4.jpg'), fit : BoxFit.cover)),
      child: Form(
        key: formKey,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(left: 35, top: 130),


                child: Text(
                  'A&P\nGarments',
                  style: TextStyle(color: Colors.black, fontSize: 33),
                ),),


              SingleChildScrollView(
                child: Container(
                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.35, right: 35, left: 35),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              hintText: 'Enter email or phone number',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          validator:(value){
                            if(value!.isEmpty ||RegExp(r'^[a-z A-Z]+$').hasMatch(value)){
                              return "Enter correct name";
                            } else{
                              return null;
                            }
                          },
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              hintText: 'Enter password',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          validator:(value){
                            if(value!.isEmpty ||RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]+$').hasMatch(value)){
                              return "Enter correct password";
                            } else{
                              return null;
                            }
                          },
                        ),

                        SizedBox(
                          height: 30,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(onPressed: (){
                                Navigator.pushNamed(context, 'productspage');
                                if(formKey.currentState!.validate()){
                                  final snackbar = SnackBar(content: Text("You're logged in"));
                                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                                }
                              }, child: Text('Login' , style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 18,
                                  color: Colors.black
                              ),)),
                              TextButton(onPressed: (){
                                Navigator.pushNamed(context, 'createaccount');
                              }, child: Text('Register or\n   Sign Up' , style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 18,
                                  color: Colors.black
                              ),)),

                              TextButton(onPressed: (){
                                Navigator.pushNamed(context, 'password');
                              }, child: Text('  Forgot\nPassword?' , style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 18,
                                  color: Colors.black
                              ),)),
                            ]
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Column(mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              TextButton(onPressed: (){
                                Navigator.pushNamed(context, 'aboutus');
                              },
                                  child: Text('About Us' , style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      fontSize: 18,
                                      color: Colors.black

                                  ),)),
                            ]
                        ),

                      ],
                    )

                ),
              ),
            ],
          ),
        ),
      ),
    );


  }
}
