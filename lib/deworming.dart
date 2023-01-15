import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class DewormingPage extends StatefulWidget {
  const DewormingPage({Key? key}) : super(key: key);

  @override
  State<DewormingPage> createState() => _DewormingPageState();
}

class _DewormingPageState extends State<DewormingPage> {
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
                    Text("Deworming",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 36,color: HexColor("631212"),)),
                    Divider(color: HexColor("631212"),thickness: 2,indent: 15,endIndent: 15,),
                    Container(
                      // color: Colors.yellow,
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text("Upcoming",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600))
                    ),
                    // Container(
                    //   child: ListView(
                    //     prototypeItem: vaccine(size),
                    //     padding: EdgeInsets.all(10),
                    //     shrinkWrap: true,
                    //     children: [
                    //       vaccine(size)
                    //     ],
                    //   ),
                    // ),
                    vaccine(size),
                    Container(
                      // color: Colors.yellow,
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.fromLTRB(20, 5, 0, 5),
                        child: Text("My Records",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600))
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Vaccination",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,decoration: TextDecoration.underline),),
                          Text("Date",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,decoration: TextDecoration.underline),),
                          Text("Status",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,decoration: TextDecoration.underline),)
                        ],
                      ),
                    ),
                    Container(
                      width: size.width*0.8,
                      height: size.height*0.26,
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          vaccine(size),
                          vaccine(size),
                          vaccine(size),
                          vaccine(size),
                          vaccine(size),
                          vaccine(size),
                        ],
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
  Widget vaccine (Size size)
  {
    return Container(
      // color: Colors.red,
        height: size.height*0.05,
        width: size.width*0.8,
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
            Text("Vaccine Name"),
            Text("29-08-2022",style: TextStyle(fontSize: 12)),
            Text("Completed",style: TextStyle(fontSize: 12 ,color: Colors.green),)
            // IconButton(onPressed: (){}, icon: Icon(Icons.add_alert,size: 20,semanticLabel: "Add Remainder"))
          ],
        )
    );
  }
}

