import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petsbook/signup.dart';
import 'otp.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _pass = TextEditingController();
  final bool _validate1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
              child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.white10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.elliptical(230, 100),
                            bottomRight: Radius.elliptical(300, 130)),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height / 3,
                          width: window.physicalSize.width,
                          child: Image.network(
                              "https://images.unsplash.com/photo-1537151608828-ea2b11777ee8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=394&q=80",
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 1,
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
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
                              const SizedBox(
                                height: 200,
                              ),
                              Row(children: const [
                                Text(
                                  "Login",
                                  style: TextStyle(
                                      fontSize: 40,
                                      color: Color.fromARGB(255, 181, 56, 11),
                                      fontWeight: FontWeight.bold),
                                ),
                              ]),
                              Row(
                                children: [
                                  Icon(
                                    Icons.email,
                                    color: Colors.grey.shade500,
                                    size: 30,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: TextField(
                                      controller: _email,
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold),
                                      decoration: InputDecoration(
                                          hintText: "  Email-id",
                                          errorText: _validate1
                                              ? 'Cant be empty?'
                                              : null,
                                          hintStyle: const TextStyle(
                                              color: Colors.grey,
                                              fontSize: 15.0)),
                                      keyboardType: TextInputType.text,
                                      cursorColor: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.lock,
                                    color: Colors.grey.shade500,
                                    size: 30,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: TextField(
                                      controller: _pass,
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold),
                                      decoration: InputDecoration(
                                          hintText: "  Password",
                                          errorText: _validate1
                                              ? 'Cant be empty?'
                                              : null,
                                          hintStyle: const TextStyle(
                                              color: Colors.grey,
                                              fontSize: 15.0)),
                                      keyboardType: TextInputType.text,
                                      cursorColor: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  TextButton(
                                      onPressed: () {
                                        Get.to(() => const Otpscreen(),
                                            transition:
                                                Transition.leftToRightWithFade,
                                            duration: const Duration(
                                                milliseconds: 600));
                                      },
                                      child: const Text(
                                        "Forgot Password?",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 149, 42, 3)),
                                      ))
                                ],
                              ),
                              Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width / 1.1,
                                decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 53, 14, 0),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      "Login",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          letterSpacing: 1.0),
                                    )),
                              ),
                              const Text(
                                "OR",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                  height: 50,
                                  width:
                                      MediaQuery.of(context).size.width / 1.1,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                      color: Colors.black26,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(20))),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        "assets/logo/google.png",
                                        height: 55,
                                        width: 55,
                                      ),
                                      const SizedBox(
                                        width: 29,
                                      ),
                                      TextButton(
                                          onPressed: () {},
                                          child: const Text(
                                            "Login with Google",
                                            style: TextStyle(
                                                fontSize: 18,
                                                letterSpacing: 1.0,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ))
                                    ],
                                  )),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Have PET account?",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        Get.to(() => const Signup(),
                                            transition:
                                                Transition.leftToRightWithFade,
                                            duration: const Duration(
                                                milliseconds: 600));
                                      },
                                      child: const Text(
                                        "Register",
                                        style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 149, 42, 3),
                                            fontWeight: FontWeight.bold),
                                      ))
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          )),
        ),
      ),
    );
  }
}
