import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:petsbook/vaccination.dart';
import 'deworming.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
                image:DecorationImage(image: AssetImage("assets/images/dogprofile.jpeg"),fit: BoxFit.fill),
              ),
              // child: Image.asset('assets/images/dogprofile.jpeg',fit: BoxFit.fill),
            ),
            Container(
              //width: size.width*1,
              height: size.height*0.49,
              //color: Colors.red,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft:Radius.circular(40.0),
                    //topRight: Radius.circular(10.0)
                )
              ),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin:EdgeInsets.only(left: 5,right: 0,top:5,bottom: 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("BRAVO",style: TextStyle(fontSize: 20,color: HexColor("592518"),fontWeight: FontWeight.bold,letterSpacing: 1)),
                            Text("Labrodor",style: TextStyle(fontSize: 15,letterSpacing: 0)),
                            Text("16/10/2019",style: TextStyle(fontSize: 15,letterSpacing:0))
                          ],
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.favorite_outlined,color: Colors.red,),
                          Container(
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.all(5),
                            child: Text("124"),
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 5,right: 0,top: 10,bottom: 2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("About Alex",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                          Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore ullamco laboris nisi ut aliquip ex ea commodo consequat. t nulla pariatur.",
                              textAlign: TextAlign.left,
                              overflow: TextOverflow.ellipsis,
                              softWrap: true,
                              maxLines: 4)
                        ],
                      )
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    width: size.width*0.8,
                    height: size.height*0.05,
                    child:ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 7,
                          backgroundColor: HexColor("314655"),
                        // shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5))
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const VaccinationPage()),);
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Vaccination",style: TextStyle(fontSize: 20),),
                          Icon(Icons.vaccines)
                        ],
                      ),
                    )
                  ),
                  Container(
                      margin: EdgeInsets.all(10),
                      width: size.width*0.8,
                      height: size.height*0.05,
                      child:ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 7,
                          backgroundColor: HexColor("314755")
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const DewormingPage()),);
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Deworming",style: TextStyle(fontSize: 20),),
                            Icon(Icons.add_alert_sharp)
                          ],
                        ),
                      )
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    width: size.width*0.8,
                    height: size.height*0.05,
                    child:ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 7,
                          backgroundColor: HexColor("314755")
                      ),
                      onPressed: (){

                        // print("Deworming Done!!");
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Medical History",style: TextStyle(fontSize: 20),),
                          Icon(Icons.medical_services_rounded)
                        ],
                      ),
                    )
                  ),
                  TextButton.icon(
                    onPressed: (){},
                    icon: Icon(Icons.logout,size: 20,),
                    label: Text("Log Out"),
                    style: TextButton.styleFrom(
                      textStyle: TextStyle(fontSize: 20),
                      foregroundColor: HexColor("592518")
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
}
