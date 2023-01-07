import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login.dart';

class Start extends StatefulWidget {
  const Start({Key? key}) : super(key: key);

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Stack(children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white10,
          ),
          Stack(children: [
            Column(
              children: [
                Image.network(
                  "https://images.unsplash.com/photo-1560807707-8cc77767d783?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80",
                  height: MediaQuery.of(context).size.height / 1.7,
                  width: window.physicalSize.width,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 60,
                ),
                const Text(
                  "Ready to make a",
                  style: TextStyle(
                      color: Color.fromARGB(246, 194, 68, 22),
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "new friend?",
                  style: TextStyle(
                      color: Color.fromARGB(246, 194, 68, 22),
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "lorem ipsum  dsbh vdgd vdhcvj hvdhcvjv",
                  style: TextStyle(
                    height: 1.5,
                    color: Color.fromARGB(137, 52, 52, 52),
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                const Text(
                  "loremipsum  dsbhabbfh vdhcvj cvhscvc cbc",
                  style: TextStyle(
                    height: 1.5,
                    color: Color.fromARGB(137, 52, 52, 52),
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                const Text(
                  "loremipsum  dsbhabbfh hvdhcvjv xhav XV chvcahcv cv",
                  style: TextStyle(
                    height: 1.5,
                    color: Color.fromARGB(137, 52, 52, 52),
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width / 1.2,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 97, 41, 21),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: TextButton(
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => const Login()),
                        // );
                        Get.to(() => const Login());
                      },
                      child: const Text(
                        "Get Started",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            letterSpacing: 1.0),
                      )),
                )
              ],
            ),
          ]),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 140, 0, 0),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 4.0),
                        color: const Color.fromARGB(255, 38, 11, 1),
                        shape: BoxShape.circle),
                    child: const Icon(
                      Icons.favorite_border_sharp,
                      color: Colors.white,
                      size: 55,
                    ),
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
