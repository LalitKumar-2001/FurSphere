import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:petsbook/homepage.dart';
import 'package:petsbook/medical.dart';
import 'package:petsbook/profile.dart';
import 'package:petsbook/shopping.dart';
import 'package:petsbook/splashscreen.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash(),
  ));
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int currentindex=1;
  final screens =[
    HomePage(),
    MedicalPage(),
    ShoppingPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentindex,
        backgroundColor: Colors.grey,
        unselectedItemColor: Colors.black12.withOpacity(0.7),
        selectedItemColor: Colors.black,
        selectedLabelStyle: TextStyle(fontSize: 11),
        onTap: (index)=>setState(()=>currentindex = index),
        items:[
          BottomNavigationBarItem(
              icon: Icon(Icons.home,color:HexColor("#25262d")),
              label: 'Profile'),
          BottomNavigationBarItem(
              icon: Icon(Icons.medical_services, color:HexColor("#25262d")),
              label:'Medical'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,color:HexColor("#25262d")),
              label: 'Shopping'),
          BottomNavigationBarItem(icon: Icon(Icons.person_rounded,color:HexColor("#25262d")),
              label: 'Profile'),
        ],
      ),
    );
  }
}

