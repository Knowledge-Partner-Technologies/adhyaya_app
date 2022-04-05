import 'dart:async';

import 'package:adhyaya_application_new/presentation_mob/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class VerifyOtp extends StatefulWidget {
  const VerifyOtp({Key? key, required this.mobNumber}) : super(key: key);

  final String mobNumber;

  @override
  State<VerifyOtp> createState() => _VerifyOtpState();
}

class _VerifyOtpState extends State<VerifyOtp> {
  Timer? timer;
  int seconds = 30;

  bool isButton = false;

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (seconds == 0) {
        timer.cancel();
        setState(() {
          isButton = true;
        });
      } else {
        setState(() {
          seconds--;
        });
      }
    });
  }

  @override
  void initState() {
    // BlocProvider.of<TimerCubit>(context).startTimer();
    startTimer();

    super.initState();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Material(
            child: Column(children: [
      Expanded(
          flex: 3,
          child: Container(
            color: Colors.transparent,
          )),
      Expanded(
          flex: 4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: const EdgeInsets.all(24.0),
                alignment: Alignment.centerLeft,
                child: Text.rich(TextSpan(children: [
                  const TextSpan(
                      text: 'OTP has been sent to\n',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                    text: widget.mobNumber,
                    style: const TextStyle(
                        // color: Colors.deepPurple,
                        color: Colors.green,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold),
                  )
                ])),
              ),
              const Pinput(length: 6),
              Padding(
                padding: const EdgeInsets.only(right: 24.0),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: !isButton
                        ? Text(
                            '$seconds',
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          )
                        : InkWell(
                            onTap: () {
                              setState(() {
                                seconds = 60;
                                isButton = false;
                                startTimer();
                              });
                            },
                            child: const Text(
                              'Resend',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
              ),
              SizedBox(
                height: 54.0,
                child: CupertinoButton(
                    // color: Colors.deepPurple,
                    color: Colors.green,
                    child: const Text(
                      'SUBMIT',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const HomeScreen())));
                    }),
              ),
            ],
          )),
      Expanded(flex: 3, child: Container())
    ])));
  }
}
