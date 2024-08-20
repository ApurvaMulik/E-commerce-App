import 'package:flutter/material.dart';

class prodetails extends StatefulWidget {

  final product_detail_name;
  final product_detail_pic;
  final product_detail_price;

  prodetails({
    required this.product_detail_name,
    required this.product_detail_pic,
    required this.product_detail_price
});

  @override
  State<prodetails> createState() => _prodetailsState();
}

class _prodetailsState extends State<prodetails> {
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

            new IconButton(onPressed: (){},icon: Icon(
              Icons.add_shopping_cart, color: Colors.black,
            )),
        ],
      ),
      body: ListView(
        children: [
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_pic),
              ),
            footer: new Container(
              color: Colors.white60,
              child: ListTile(
                leading: new Text(widget.product_detail_name, style: TextStyle(
                  fontWeight: FontWeight.bold
                ),),
                title: new Row(
                  children: [
                    Expanded(child: new Text("\$${widget.product_detail_price}", style: TextStyle(
                      color: Colors.black
                    ),))
                  ],
                ),
              ),
            ),
            ),
          ),
          Row(
            children: [
              Expanded(child: MaterialButton(
                onPressed: (){},
                color: Colors.white, textColor: Colors.black,
                elevation: 0.2,
                child: Row(
                  children: [
                    Expanded(child: new Text('Size')),
                    Expanded(child: new Icon(Icons.arrow_drop_down))
                  ],
                ),
              )),
              Expanded(child: MaterialButton(
                onPressed: (){},
                color: Colors.white, textColor: Colors.black,
                elevation: 0.2,
                child: Row(
                  children: [
                    Expanded(child: new Text('Color')),
                    Expanded(child: new Icon(Icons.arrow_drop_down))
                  ],
                ),
              )),
              Expanded(child: MaterialButton(
                onPressed: (){},
                color: Colors.white, textColor: Colors.black,
                elevation: 0.2,
                child: Row(
                  children: [
                    Expanded(child: new Text('Qty')),
                    Expanded(child: new Icon(Icons.arrow_drop_down))
                  ],
                ),

              ))
            ],

          ),
          Row(
            children: [
              Expanded(child: MaterialButton(
                onPressed: (){},
                color: Colors.black,
                textColor: Colors.white,
                elevation: 0.2,
                child: new Text('Buy Now'),
              )),
              new IconButton(onPressed:(){}, icon: Icon(Icons.add_shopping_cart, color: Colors.black,)),
              new IconButton(onPressed:(){}, icon: Icon(Icons.favorite, color: Colors.black,)),
            ],
          ),
          Divider(),
          new ListTile(
            title: Text('Product Details'),
            subtitle: new Text("LEOTUDE Cotton Blend Half Sleeve Oversized Back Printed Women's T-Shirt. "
                "Do not rub it with brush Hand wash only. Its fit type is oversized and neck style is Round"
                "Its color is Navy blue and is back printed. Sleeves are boxy sleeves."),
          ),
            Divider(),
            new Row(
              children:[Padding
                (padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product name", style: TextStyle(
                  color: Colors.grey),),),

                Padding (padding: EdgeInsets.all(5.0),
                  child: new Text(widget.product_detail_name),)
              ],
            ),

            new Row(
              children:[Padding
                (padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product Brand" , style: TextStyle(color: Colors.grey),),),
                    Padding(padding: EdgeInsets.all(5.0),
                child: new Text("Brand X"),)
              ],
            ),

            new Row(
              children:[Padding
                (padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product Condition" , style: TextStyle(color: Colors.grey),),),
                    Padding(padding: EdgeInsets.all(5.0),
                child: new Text("New"),)
              ],
            ),

        ],
    ),
    );
  }
}

