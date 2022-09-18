import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title:Text("PetsBook"),
      //   actions: [
      //     IconButton(
      //         icon: Icon(Icons.search),
      //         tooltip: "Search",
      //         onPressed: (){})
      //   ],
      //   leading: Text("Dogo",style: TextStyle(fontSize: 20),)
      //   // toolbarHeight: 50.2,
      //   // toolbarOpacity: 0.7,
      //   // elevation: 3.00,
      //   // shape: const RoundedRectangleBorder(
      //   //   borderRadius: BorderRadius.only(
      //   //       bottomRight: Radius.circular(25),
      //   //       bottomLeft: Radius.circular(25)),
      //   // ),
      //   ),
      body:SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("PetsBook"),
                Text("NewFeed"),
                Icon(Icons.search)
              ],
            ),
            SingleChildScrollView(
              child: Column(
                children:[
                ]
              ),
            )
          ],
        ),
      )
    );
  }
}
