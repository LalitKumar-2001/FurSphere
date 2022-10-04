import 'package:flutter/material.dart';
class ShoppingPage extends StatefulWidget {
  const ShoppingPage({Key? key}) : super(key: key);

  @override
  State<ShoppingPage> createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<ShoppingPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(5.0, 0, 5.0, 0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Petshop",style: TextStyle(fontWeight: FontWeight.w900),),
                    IconButton(onPressed: (){}, icon:Icon(Icons.shopping_cart),)
                  ],
                ),
            ),
            Container(
              height: size.height*0.05,
              width: size.width*0.9,
              // color: Colors.blue,
              child: TextField(
                decoration: InputDecoration(
                  // labelText: 'Search',
                  hintText: 'Search',
                  border: OutlineInputBorder(),
                ),
              )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(onPressed: (){}, child:Text("Food"), style: TextButton.styleFrom(foregroundColor: Colors.red),),
                TextButton(onPressed: (){}, child:Text("Clothes") ),
                TextButton(onPressed: (){}, child:Text("Toys") ),
                TextButton(onPressed: (){}, child:Text("Medicine") ),
                TextButton(onPressed: (){}, child:Text("Others") )
              ],
            ),
            Container(
              // color: Colors.red,
              height: size.height*0.28,
              // width: size.width*0.98,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: [
                  ItemCard(),
                  ItemCard(),
                  ItemCard(),
                  ItemCard(),
                ],
              ),
            ),
            Row(
              children: [Text("data")],
            )
          ],
        ),
      ),
    );
  }
}
class ItemCard extends StatefulWidget {
  const ItemCard({Key? key}) : super(key: key);

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        height: size.height*0.8,
        width: size.width*0.4,
      // color: Colors.red,
      child:Column(
        children: [
          Container(
            width: 140,
            height: size.height*0.20,
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(10.0),
                border: Border.all(color: Colors.black, width: 2)
            ),
            child: Image.network("https://picsum.photos/200"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text("Item Name"),
                  Text("Price"),
                ],
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.add_circle))

            ],
          )
        ],
      )
    );
  }
}
