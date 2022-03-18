import 'package:flutter/material.dart';

class VerifyOtp extends StatelessWidget {
  const VerifyOtp({Key? key, required this.mobNumber}) : super(key: key);

  final String mobNumber;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.white,
        child: Column(children: [
          Expanded(
              flex: 4,
              child: Container(
                color: Colors.amber,
              )),
          Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.all(12.0),
                alignment: Alignment.centerLeft,
                child: Text.rich(TextSpan(children: [
                  const TextSpan(
                      text: 'OTP has been sent to\n',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                    text: mobNumber,
                    style: const TextStyle(
                        color: Colors.green,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold),
                  )
                ])),
              )),
          Expanded(flex: 2, child: Container()),
          Expanded(
              flex: 2,
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1575330736918-56f8e6a074a6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.fill)),
              )),
        ]),
      ),
    );
  }
}
