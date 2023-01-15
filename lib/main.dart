import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:petsbook/homepage.dart';
import 'package:petsbook/medical.dart';
import 'package:petsbook/profile.dart';
import 'package:petsbook/shopping.dart';
import 'package:petsbook/splashscreen.dart';


void main()
{
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash(),
  ));
}

class MyApp extends StatefulWidget
{
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int currentindex=0;
  final screens =
  [
    HomePage(),
    MedicalPage(),
    ShoppingPage(),
    ProfilePage()
    // VaccinationPage(),
    // DewormingPage()
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
        items:
        [
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

// class Palette {
//   // background gradient
//   static Color blueSky = Color(0xFF068FFA);
//   static Color greenLand = Color(0xFF89ED91);
//
//   // card gradient
//   static Color blueSkyLight = Color(0x40068FFA);
//   static Color greenLandLight = Color(0x4089ED91);
//
//   static Color blueSkyLighter = Color(0x10068FFA);
// }