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
                onPressed: () {},
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
                  Vets(),
                  Vets(),
                  Vets(),
                  Vets(),
                  Vets(),
                  Vets(),
                  Vets(),
                ],
              ),
              decoration: BoxDecoration(
                // color: Colors.red,
                  border: Border(bottom: BorderSide(width: 1,color: Colors.grey))
              ),
            ),
            Text("NGOs Profile",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            Container(
              width: size.width*0.9,
              height: size.height*0.32,
              // color: Colors.blue,
              child:ListView(
                children: [
                  ngo(),
                  ngo(),
                  ngo(),
                  ngo(),
                  ngo(),
                  ngo(),
                  ngo(),
                ],
              ),
            ),
          ],
        ),
    )
    );
  }
}
class Vets extends StatefulWidget {
  const Vets({Key? key}) : super(key: key);

  @override
  State<Vets> createState() => _VetsState();
}

class _VetsState extends State<Vets> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
}

class ngo extends StatefulWidget {
  const ngo({Key? key}) : super(key: key);

  @override
  State<ngo> createState() => _ngoState();
}

class _ngoState extends State<ngo> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
