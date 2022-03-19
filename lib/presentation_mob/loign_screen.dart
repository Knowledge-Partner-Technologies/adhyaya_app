import 'package:adhyaya_application_new/presentation_mob/verify_otp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.white,
        child: Container(
          decoration: const BoxDecoration(
            // gradient: LinearGradient(colors: [Colors.blue, Colors.green])
              ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.transparent,
                      padding: const EdgeInsets.all(4.0),
                      child: const Text.rich(TextSpan(children: [
                        TextSpan(
                            text: 'Welcome to',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                          text: ' Adhyaya Admin',
                          style: TextStyle(
                              // color: Colors.deepPurple,
                              color: Colors.green,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold),
                        )
                      ])),
                    )),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12.0),
                          topLeft: Radius.circular(12.0))),
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(24.0),
                  child: Padding(
                    padding: const EdgeInsets.all(48.0),
                    child: SvgPicture.asset(
                      'assets/verify_mob.svg',
                      alignment: Alignment.center,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 12.0, left: 20.0, right: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 54.0,
                        color: Colors.transparent,
                        padding: const EdgeInsets.all(4.0),
                        child: CupertinoTextField(
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.done,
                          controller: numberController,
                          placeholder: 'Phone Number',
                          placeholderStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500),
                          maxLength: 10,
                          prefix: const Icon(
                            Icons.phone_android_sharp,
                            color: Colors.black,
                            size: 24.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Align(
                          alignment: Alignment.center,
                          child: CupertinoButton(
                              // color: Colors.deepPurple,
                              color: Colors.green,
                              child: const Text(
                                'LOGIN',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18.0),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => VerifyOtp(
                                              mobNumber: numberController
                                                          .text.isEmpty ==
                                                      true
                                                  ? 'Phone Number'
                                                  : numberController.text
                                                      .toString(),
                                            )));
                              }),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
