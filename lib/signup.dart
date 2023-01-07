import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _phone = TextEditingController();
  final TextEditingController _name = TextEditingController();
  final bool _validate1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
            child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.white70,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.elliptical(230, 90),
                          bottomRight: Radius.elliptical(350, 150)),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height / 3,
                        width: window.physicalSize.width,
                        child: Image.network(
                            "https://images.unsplash.com/photo-1505628346881-b72b27e84530?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 1,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                      color: Colors.white,
                                    )),
                              ],
                            ),
                            const SizedBox(
                              height: 200,
                            ),
                            Row(children: const [
                              Text(
                                "Sign Up",
                                style: TextStyle(
                                    fontSize: 40,
                                    color: Color.fromARGB(255, 181, 56, 11),
                                    fontWeight: FontWeight.bold),
                              ),
                            ]),
                            const SizedBox(
                              height: 15,
                            ),
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
                                  Icons.person,
                                  color: Colors.grey.shade500,
                                  size: 30,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: TextField(
                                    controller: _name,
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold),
                                    decoration: InputDecoration(
                                        hintText: "  Full Name",
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
                                  Icons.call,
                                  color: Colors.grey.shade500,
                                  size: 30,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: TextField(
                                    controller: _phone,
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold),
                                    decoration: InputDecoration(
                                        hintText: "  Mobile",
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
                            const SizedBox(
                              height: 15,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  children: const [
                                    Text("By sigining up, you're agree to our"),
                                    Text(
                                      "Terms and Conditions",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 149, 42, 3)),
                                    )
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Text("and "),
                                    Text(
                                      "Privacy policy.",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 149, 42, 3)),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Container(
                              height: 58,
                              width: MediaQuery.of(context).size.width / 1.1,
                              decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 53, 14, 0),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "Continue",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 23,
                                        letterSpacing: 1.0),
                                  )),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Joined us before?",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      "Login",
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
                    )
                  ],
                )
              ],
            ),
          ],
        )),
      ),
    );
  }
}
