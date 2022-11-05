import 'package:flutter/material.dart';
import 'package:petsbook/status_screen.dart';
import "package:story_view/story_view.dart";


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body:SafeArea(
        child: Column(
          children: [
            Container(
              // color: Colors.red,
              margin: EdgeInsets.all(2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("PetsBook"),
                  Text("NewFeed"),
                  IconButton(onPressed: (){}, icon: Icon(Icons.search),)
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    height: 80,
                    width:size.width*0.9,
                    color: Colors.white30,
                    child: ListView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: [
                        statusScreen(),
                        statusScreen(),
                        statusScreen(),
                        statusScreen(),
                        statusScreen(),
                        statusScreen(),
                        statusScreen(),
                        statusScreen(),

                        // Text("Hello")
                      ],
                    ),
                  ),
                  ListView(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                      children:[
                        PostWidget(),
                        PostWidget(),
                        PostWidget(),
                        PostWidget(),
                        PostWidget(),
                        PostWidget(),]
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}

class PostWidget extends StatefulWidget {
  const PostWidget({Key? key}) : super(key: key);

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    CircleAvatar(radius:20,backgroundImage:AssetImage("assets/images/pic.png")),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: [Text("Name"),Text("Location")])
                  ],
                ),
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.menu_outlined),
                iconSize: 30,
                color: Colors.brown,
                tooltip: 'Increase volume by 5',  )
            ],
          ),
          Container(
            height: size.height*0.4,
            width: size.width*0.9,
            child: Image.network('https://picsum.photos/400',fit: BoxFit.fill),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(130)
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                    children:[
                      IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border)),
                      IconButton(onPressed: (){}, icon: Icon(Icons.comment))
                    ]
                ),
              ),
              Text("Likes: 100")
            ],
          ),
          Text("Caption",textAlign: TextAlign.start,),
        ],
      ),
    );
  }
}



