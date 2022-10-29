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
            Container(
              width: size.width*1,
              height: size.height*0.39,
              color: Colors.red,
            ),
            Container(
              width: size.width*1,
              height: size.height*0.39,
              color: Colors.blue,
            ),
          ],
        ),
    )
    );
  }
}
