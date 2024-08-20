import 'package:flutter/material.dart';
import 'package:internship_proj/pro1_details.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  var product_list =[
    {
      "name" : "T-shirt ",
      "picture" : "assets/tshirt.jpg",
      "price" : 3.67
    },
    {
      "name" : " One piece ",
      "picture" : "assets/dress.jpg",
      "price" : 9.79
    },

    {
      "name" : " Kid's t-shirt ",
      "picture" : "assets/kids.jpg",
      "price" : 3.67
    },
    {
      "name" : "Lehenga",
      "picture" : "assets/lehenga.jpg",
      "price" : 48.94
    },
    {
      "name" : "Jeans",
      "picture" : "assets/jeans.jpg",
      "price" : 12.24
    },
    {
      "name" : "Frock",
      "picture" : "assets/frock.jpg",
      "price" : 9.97
    },
    {
      "name" : "Paithani",
      "picture" : "assets/Paithani.jpg",
      "price" : 61.18
    },
    {
      "name" : "IndoWestern",
      "picture" : "assets/Indowestern.jpg",
      "price" : 36.71
    },
    {
      "name" : "Sweater",
      "picture" : "assets/sweater.jpg",
      "price" : 11.05
    },
    {
      "name" : "Dryfit",
      "picture" : "assets/dryfit.jpg",
      "price" : 10.76
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2),
    itemBuilder: (BuildContext context, int index){
          return single_pro(
       pro_name:product_list[index]['name'],
       pro_picture:product_list[index]['picture'],
       pro_price:product_list[index]['price']
          );
    });

  }
}

class single_pro extends StatelessWidget {

  final pro_name;
  final pro_picture;
  final pro_price;

  single_pro({
    required this.pro_name,
    required this.pro_picture,
    required this.pro_price
});

  @override
  Widget build(BuildContext context) {

    return Card(
      child : Hero(tag: pro_name,
          child: Material(
        child: InkWell(onTap: ()=>Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> new prodetails(
          product_detail_name: pro_name,
          product_detail_pic: pro_picture,
          product_detail_price: pro_price,
        ))),
        child: GridTile(
          footer: Container(
            color: Colors.white60,
            child: ListTile(
              leading: Text(pro_name, style: TextStyle(fontWeight: FontWeight.bold),),
              title: Text("\$$pro_price", style: TextStyle(color: Colors.black),),

            ),
          ),
          child: Image.asset(pro_picture, fit: BoxFit.fitHeight,),
        ),
        )
      ))
    );
  }
}


