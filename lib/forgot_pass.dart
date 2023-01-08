import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'otp.dart';


class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  final TextEditingController _phone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
          child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "https://images.unsplash.com/photo-1553736026-ff14d158d222?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                    ))),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
              child: Container(
                  decoration:
                      BoxDecoration(color: Colors.white.withOpacity(0.0))),
            ),
          ),
          Column(
            children: [
              Stack(children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 25, 0, 0),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            size: 35,
                            color: Colors.black,
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0, 0, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 250,
                      ),
                      const Text(
                        "Forgot Your Password?",
                        style: TextStyle(
                            fontSize: 39,
                            color: Color.fromARGB(255, 154, 43, 2),
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Enter your phone number below to recieve your password reset instruction.",
                        maxLines: 2,
                        style: TextStyle(fontSize: 17, color: Colors.white70),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.phone,
                            color: Colors.white70,
                            size: 30,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 1.5,
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(color: Colors.white54))),
                            child: Expanded(
                              child: TextField(
                                controller: _phone,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold),
                                decoration: const InputDecoration(
                                    hintText: "  Phone-No",
                                    hintStyle: TextStyle(
                                        color: Colors.white, fontSize: 15.0)),
                                keyboardType: TextInputType.text,
                                cursorColor: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ]),
              SizedBox(
                height: 250,
              ),
              Container(
                height: 55,
                width: MediaQuery.of(context).size.width / 1.1,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 35, 9, 0),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: TextButton(
                    onPressed: () {
                      Get.to(() => const Otpscreen(),
                          transition: Transition.leftToRightWithFade,
                          duration: const Duration(milliseconds: 600));
                    },
                    child: const Text(
                      "Continue",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          letterSpacing: 1.0),
                    )),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
