import 'package:flutter/material.dart';

import 'main.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async{
    await Future.delayed(Duration(milliseconds: 2000),() {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyApp()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: const Text('PetsBook',style: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.w800,
          fontFamily: 'Inspiration',
        ),
        ),
      ),
    );
  }
}

