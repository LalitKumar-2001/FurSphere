import 'package:flutter/material.dart';


class statusScreen extends StatefulWidget {
  const statusScreen({Key? key}) : super(key: key);

  @override
  State<statusScreen> createState() => _statusScreenState();
}

class _statusScreenState extends State<statusScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 80,
      child:Column(
        children: [
          // ListTile(
          //   focusColor: Colors.red,
          //   leading: CircleAvatar(
          //     radius: 30,
          //     backgroundImage: AssetImage("assets/images/pic.png"),
          //   ),
          //   title:Text("Name",style: TextStyle(fontWeight: FontWeight.bold),),
          //   onTap: () => Navigator.push(
          //          context,
          //          MaterialPageRoute(
          //              builder: (context) => StoryPageView())),
          //    ),
          CircleAvatar(
            backgroundImage: NetworkImage("https://picsum.photos/id/11/800"),
            radius: 30,
          ),
          Text("Name")
        ],
      ),
      // child: ListView(
      //   children: <Widget>[
      //     ListTile(
      //       leading: CircleAvatar(
      //         radius: 30,
      //         backgroundImage: NetworkImage(
      //             "https://images.unsplash.com/photo-1581803118522-7b72a50f7e9f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bWFufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
      //       ),
      //       title: Text(
      //         "Logan Veawer",
      //         style: TextStyle(fontWeight: FontWeight.bold),
      //       ),
      //       subtitle: Text("Today, 20:16 PM",style: TextStyle(color:Colors.red.withOpacity(0.5)),),
      //       onTap: () => Navigator.push(
      //           context,
      //           MaterialPageRoute(
      //               builder: (context) => StoryPageView())),
      //     ),
      //   ],
      // ),
    );
  }
}
