import 'package:flutter/material.dart';
class MedicalPage extends StatefulWidget {
  const MedicalPage({Key? key}) : super(key: key);

  @override
  State<MedicalPage> createState() => _MedicalPageState();
}

class _MedicalPageState extends State<MedicalPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: size.width*1,
              height: size.height*0.1,
              padding: EdgeInsets.all(20.0),
              child:ElevatedButton(
                child: Text('Out Of Emergency', style: TextStyle(fontSize: 30,),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileDetailPage()));
                },
              ),
              decoration: BoxDecoration(
                // color: Colors.red,
              border: Border(bottom: BorderSide(width: 1,color: Colors.grey))
              ),
            ),
            Text("Vets Profile",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,decoration: TextDecoration.underline)),
            // SizedBox(height: 1,width: size.width*1,child: Text("Vets Profile",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))),
            Container(
              width: size.width*1,
              height: size.height*0.37,
              // color: Colors.red,
              padding: EdgeInsets.all(10),
              child: ListView(
                shrinkWrap: true,
                children: [
                  Vets(size),
                  Vets(size),
                  Vets(size),
                  Vets(size),
                  Vets(size),
                  Vets(size),
                  Vets(size),
                ],
              ),
              decoration: BoxDecoration(
                // color: Colors.red,
                  border: Border(bottom: BorderSide(width: 1,color: Colors.grey))
              ),
            ),
            Text("NGOs Profile",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            Expanded(
              child: ListView(
                padding: EdgeInsets.fromLTRB(25,0,10,0),
                children: [
                  NGO(size),
                  NGO(size),
                  NGO(size),
                  NGO(size),
                  NGO(size),
                  NGO(size),
                ],
              ),
            ),
          ],
        ),
    )
    );
  }

  //Vets Widget
  Widget Vets(Size size)
  {
    return Container(
      height: size.height*0.07,
      // color: Colors.yellow,
      child: Row(
        children: [
          SizedBox(width: 20),
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/pic.png'),
          ),
          SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Name of the Place",style: TextStyle(fontWeight: FontWeight.bold, wordSpacing: 2.5),),
              Text("Phone Number"),
            ],
          )
        ],
      ),
    );
  }

  //NGO Widget
  Widget NGO(Size size)
  {
    return Container(
      height: size.height*0.07,
      // color: Colors.yellow,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/pic.png'),
          ),
          // SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Name of the Place",style: TextStyle(fontWeight: FontWeight.bold, wordSpacing: 2.5),),
              Text("Phone Number"),
            ],
          ),
          Container(
              margin: EdgeInsets.all(5),
              height: size.height*0.04,
              width: size.width*0.4,
              // color: Colors.red,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star,color: Colors.amber),
                  Icon(Icons.star,color: Colors.amber),
                  Icon(Icons.star,color: Colors.amber),
                  Icon(Icons.star,color: Colors.amber),
                ],
              )
          )
        ],
      ),
    );
  }

}
class ProfileDetailPage extends StatelessWidget {
  const ProfileDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: size.height*0.3,
              width: size.height*1,
              // color:Colors.pink,
              child:ClipPath( clipper: ClipPathClass(),
                  child: SizedBox(
                  width: 320,
                  height: 240,
                  child: Image.asset(
                    "assets/images/dogprofile.jpeg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // decoration: BoxDecoration(
              //   color: Colors.red,
              //   image: DecorationImage(
              //     image: AssetImage('assets/images/dogprofile.jpeg')
              //   )
              // ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
              // color: Colors.red,
              height: size.height*0.13,
              width:size.width*1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Pluto Clinic",style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),),
                  Text("Khannagar,Infront of Shreekunj apartment",),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.phone),
                      Text("+91 9178885550"),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: size.height*0.1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Text("Ratings and Reviews",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w500),),
                    alignment: Alignment.centerLeft,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.star,color:Colors.amber,size: 20),
                          Icon(Icons.star,color:Colors.amber,size: 20),
                          Icon(Icons.star,color:Colors.amber,size: 20),
                        ],
                      ),
                      Text("20 Ratings and 12 Reviews")
                    ],
                  ),
                ],
              ),
            ),
            Divider(),
            Expanded(
                child: ListView(
                  children: [
                    Review(size),
                    Divider(),
                    Review(size),
                    Divider(),
                    Review(size)
                  ],
                )
            ),
          ],
        )
      ),
    );
  }
  Widget Review(Size size)
  {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                // color: Colors.red,
                padding: EdgeInsets.all(2),
                width: size.width*0.5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.star,color:Colors.amber,size: 15),
                    Icon(Icons.star,color:Colors.amber,size: 15),
                    Icon(Icons.star,color:Colors.amber,size: 15),
                    Text("Nice ")
                  ],
                ),
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.thumb_up_alt_outlined,size: 20,)),
                  IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.thumb_down_alt_outlined,size: 20,)),
                ],
              )
            ],
          ),
          Container(
            margin: EdgeInsets.fromLTRB(2, 2, 2, 2),
            width: size.width*1,
            height: size.height*0.09,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: size.width*0.4,
                  height: size.height*0.12,
                  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  decoration: BoxDecoration(
                    // color: Colors.red,
                      image: DecorationImage(image: AssetImage("assets/images/dogprofile.jpeg"),fit: BoxFit.cover)
                  ),
                ),
                Container(
                  width: size.width*0.4,
                  height: size.height*0.12,
                  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  decoration: BoxDecoration(
                    // color: Colors.red,
                      image: DecorationImage(image: AssetImage("assets/images/dogprofile.jpeg"),fit: BoxFit.cover)
                  ),
                ),
                Container(
                  width: size.width*0.4,
                  height: size.height*0.12,
                  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  decoration: BoxDecoration(
                    // color: Colors.red,
                      image: DecorationImage(image: AssetImage("assets/images/dogprofile.jpeg"),fit: BoxFit.cover)
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 30);

    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstPoint = Offset(size.width / 2, size.height);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstPoint.dx, firstPoint.dy);

    var secondControlPoint = Offset(size.width - (size.width / 4), size.height);
    var secondPoint = Offset(size.width, size.height - 30);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondPoint.dx, secondPoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}