// ignore_for_file: prefer_interpolation_to_compose_strings, avoid_print

import 'package:flexomatic/screen/auth/login.dart';
import 'package:flexomatic/screen/home/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

import '../../style/apptext_style.dart';
import '../../widget/button/appbutton.dart';

class OTP extends StatelessWidget {
  const OTP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/login_bg.jpg'), fit: BoxFit.cover)),
        child: Stack(
          children: [
            // Container(

            //   child: null,
            // ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('OTP Verification',
                    style: AppTextStyle.loginFontStyle(26.0)),
                SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 0.0),
                  child: OTPTextField(
                    length: 4,
                    width: MediaQuery.of(context).size.width,
                    fieldWidth: 80,
                    style: const TextStyle(fontSize: 17),
                    textFieldAlignment: MainAxisAlignment.spaceAround,
                    fieldStyle: FieldStyle.underline,
                    otpFieldStyle: OtpFieldStyle(
                        borderColor: Colors.white,
                        disabledBorderColor: Colors.white,
                        enabledBorderColor: Colors.white,
                        focusBorderColor: Colors.white),
                    onCompleted: (pin) {
                      print("Completed: " + pin);
                    },
                  ),
                ),
                const SizedBox(height: 30.0),
                AppButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          CupertinoPageRoute(builder: (_) => const Home()));
                    },
                    buttonName: 'Confirm Phone Number',
                    color: Colors.white,
                    nameColor: Colors.indigo),
                const SizedBox(height: 10.0),
                AppButton(
                    onPressed: () {},
                    buttonName: 'Resend Code',
                    color: Colors.white,
                    nameColor: Colors.indigo)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
