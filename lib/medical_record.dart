import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class MedicalRecordPage extends StatefulWidget {
  const MedicalRecordPage({Key? key}) : super(key: key);

  @override
  State<MedicalRecordPage> createState() => _MedicalRecordPageState();
}

class _MedicalRecordPageState extends State<MedicalRecordPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: size.width*1,
              height: size.height*0.35,
              decoration: BoxDecoration(
                image:DecorationImage(image: AssetImage("assets/images/dogprofile.jpeg"),fit: BoxFit.contain),
              ),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios),color: Colors.white70,),
                  IconButton(
                      onPressed: (){},
                      icon:Icon(Icons.add,size: 30,),color: Colors.white70)
                ],
              ),
            ),
            Container(
              //width: size.width*1,
                height: size.height*0.49,
                //color: Colors.red,
                decoration: BoxDecoration(
                  // color: Colors.red,
                  // border: Border.all(style: BorderStyle.solid,width: 2,color: Colors.black),
                    borderRadius: BorderRadius.only(
                        topLeft:Radius.circular(40.0),
                        topRight: Radius.circular(40.0)
                    )
                ),
                child:Column(
                  children: [
                    Text("Medical Record",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 36,color: HexColor("631212"),)),
                    Divider(color: HexColor("631212"),thickness: 2,indent: 15,endIndent: 15,),
                    Expanded(
                      child: Container(
                        width: size.width*0.9,
                        height: size.height*0.30,
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            record(size),
                            record(size),
                            record(size),
                            record(size),
                            record(size),
                            record(size),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
  Widget record (Size size)
  {
    return Container(
      // color: Colors.red,
        height: size.height*0.1,
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          // border: Border.all(style: BorderStyle.solid,width: 2),
            borderRadius: BorderRadius.circular(10),
            color: HexColor("E8E5E5")
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.calendar_month),
                Text("24/07/2001"),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Disease"),
                Text("Medicine Name"),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(onPressed: (){}, icon:  Icon(Icons.edit)),
                IconButton(onPressed: (){}, icon: Icon(Icons.delete))
              ],
            ),
          ],
        )
    );
  }
}

