import 'dart:ui';
import 'package:pinput/pinput.dart';

import 'package:flutter/material.dart';

class Otpscreen extends StatefulWidget {
  const Otpscreen({super.key});

  @override
  State<Otpscreen> createState() => _OtpscreenState();
}

class _OtpscreenState extends State<Otpscreen> {
  final pincontroller = TextEditingController();
  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  static const focusedBorderColor = Color.fromRGBO(23, 171, 144, 1);
  static const fillColor = Colors.white60;
  String mobile = "+91564728XXX";

  final defaultpintheme = PinTheme(
    width: 50,
    height: 50,
    textStyle: const TextStyle(
        fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      color: Colors.white,
      shape: BoxShape.rectangle,
      border: Border.all(color: Colors.black),
    ),
  );
  @override
  void dispose() {
    pincontroller.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
          child: Stack(
        fit: StackFit.expand,
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
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 0, 0, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Enter OTP",
                  style: TextStyle(
                      fontSize: 42,
                      color: Color.fromARGB(255, 132, 37, 2),
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "A 4-digit code has been sent to",
                  maxLines: 2,
                  style: TextStyle(fontSize: 17, color: Colors.white60),
                ),
                Text(
                  mobile,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Pinput(
                    focusNode: focusNode,
                    length: 4,
                    controller: pincontroller,
                    androidSmsAutofillMethod:
                        AndroidSmsAutofillMethod.smsUserConsentApi,
                    pinAnimationType: PinAnimationType.rotation,
                    listenForMultipleSmsOnAndroid: true,
                    defaultPinTheme: defaultpintheme,
                    focusedPinTheme: defaultpintheme.copyWith(
                      decoration: defaultpintheme.decoration!.copyWith(
                        border: Border.all(color: focusedBorderColor),
                      ),
                    ),
                    submittedPinTheme: defaultpintheme.copyWith(
                      decoration: defaultpintheme.decoration!.copyWith(
                        color: fillColor,
                        border: Border.all(color: focusedBorderColor),
                      ),
                    ),
                    errorPinTheme: defaultpintheme.copyBorderWith(
                      border: Border.all(color: Colors.redAccent),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
                Row(
                  children: [
                    const Text(
                      "Didn't Recieve OTP?",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Send again",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                  ],
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
