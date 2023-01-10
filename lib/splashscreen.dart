import 'dart:async';

import 'package:flutter/material.dart';
import 'package:petsbook/login.dart';
import 'package:petsbook/onboarding.dart';

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
    Timer(Duration(seconds: 3),
            ()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Start()
        )
        )
    );
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

