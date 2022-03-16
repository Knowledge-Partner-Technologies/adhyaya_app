import 'package:adhyaya_application_new/presentation_web/home_page.dart';
import 'package:adhyaya_application_new/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VerifyOtp extends StatelessWidget {
  VerifyOtp({Key? key}) : super(key: key);

  final TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.transparent,
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12.0),
                        topLeft: Radius.circular(12.0))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Verify OTP',
                      style: Styles.loginStyle,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        controller: numberController,
                        decoration:
                            const InputDecoration(hintText: 'Enter Otp'),
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 48.0, right: 48.0),
                        child: Align(
                            alignment: Alignment.centerRight,
                            child: Text('Resend',
                                style: Styles.generalTextGreen))),
                    Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.lightGreen,
                              borderRadius: BorderRadius.circular(12.0)),
                          height: 56.0,
                          alignment: Alignment.center,
                          child: Text(
                            'Verify OTP',
                            style: Styles.buttonStyle,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(12.0),
                        topRight: Radius.circular(12.0))),
                alignment: Alignment.center,
                padding: const EdgeInsets.all(24.0),
                child: Padding(
                  padding: const EdgeInsets.all(48.0),
                  child: SvgPicture.asset(
                    'assets/phone.svg',
                    alignment: Alignment.center,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.transparent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
