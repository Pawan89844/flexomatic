import 'package:flexomatic/screen/auth/otp.dart';
import 'package:flexomatic/screen/auth/signup.dart';
import 'package:flexomatic/screen/home/home.dart';
import 'package:flexomatic/style/apptext_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widget/button/appbutton.dart';
import '../../widget/button/apptext_button.dart';
import '../../widget/form/appform_field.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Container(
        height: height,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/login_bg.jpg'), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('User Login', style: AppTextStyle.loginFontStyle(22.0)),
                const SizedBox(height: 10.0),
                Text('Login to your account',
                    style: AppTextStyle.loginFontStyle()),
                const SizedBox(height: 20.0),
                const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                  child: AppFormField(
                    labelText: 'Username or e-mail',
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: AppFormField(
                    labelText: 'Password',
                    prefixIcon: Icon(
                      Icons.key,
                      color: Colors.white,
                    ),
                    suffix: Icon(
                      Icons.remove_red_eye_rounded,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                      right: 30.0, left: 0.0, top: 0.0, bottom: 0.0),
                  child: Align(
                      alignment: Alignment.centerRight, child: AppTextButton()),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: AppButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          CupertinoPageRoute(builder: (_) => const OTP()));
                    },
                    buttonName: 'SIGN IN',
                    color: Colors.white,
                    nameColor: Colors.indigo,
                  ),
                ),
                const SizedBox(height: 20.0),
                const Text(
                  'Or',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20.0),
                AppButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => SignUp(),
                      )),
                  buttonName: 'Don\'t Have An Account? Right Now',
                  color: Colors.white,
                  nameColor: Colors.indigo,
                )
              ],
            ),
          ),
        )
        // return Scaffold(
        //   body: Container(
        //     height: height,
        //     width: double.infinity,
        //     decoration: const BoxDecoration(
        //         image: DecorationImage(
        //             image: AssetImage('assets/login_bg.jpg'), fit: BoxFit.cover)),

        //     child: Stack(
        //       children: [
        //         Column(
        //           children: [
        //             SizedBox(height: height * 0.16),
        //             Text('User Login', style: AppTextStyle.loginFontStyle(22.0)),
        //             const SizedBox(height: 10.0),
        //             Text('Login to your account',
        //                 style: AppTextStyle.loginFontStyle()),
        //             const SizedBox(height: 20.0),
        //             const Padding(
        //               padding:
        //                   EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
        //               child: AppFormField(
        //                 labelText: 'Username or e-mail',
        //                 prefixIcon: Icon(
        //                   Icons.person,
        //                   color: Colors.white,
        //                 ),
        //               ),
        //             ),
        //             const Padding(
        //               padding: EdgeInsets.symmetric(horizontal: 30.0),
        //               child: AppFormField(
        //                 labelText: 'Password',
        //                 prefixIcon: Icon(
        //                   Icons.key,
        //                   color: Colors.white,
        //                 ),
        //                 suffix: Icon(
        //                   Icons.remove_red_eye_rounded,
        //                   color: Colors.white,
        //                 ),
        //               ),
        //             ),
        //             const Padding(
        //               padding: EdgeInsets.only(
        //                   right: 30.0, left: 0.0, top: 0.0, bottom: 0.0),
        //               child: Align(
        //                   alignment: Alignment.centerRight, child: AppTextButton()),
        //             ),
        //             SizedBox(
        //               width: MediaQuery.of(context).size.width * 0.5,
        //               child: AppButton(
        //                 onPressed: () {
        //                   Navigator.of(context).push(
        //                       CupertinoPageRoute(builder: (_) => const OTP()));
        //                 },
        //                 buttonName: 'SIGN IN',
        //                 color: Colors.white,
        //                 nameColor: Colors.indigo,
        //               ),
        //             ),
        //             const SizedBox(height: 20.0),
        //             const Text(
        //               'Or',
        //               style: TextStyle(
        //                   color: Colors.white, fontWeight: FontWeight.bold),
        //             ),
        //             const SizedBox(height: 20.0),
        //             AppButton(
        //               onPressed: () {},
        //               buttonName: 'Don\'t Have An Account? Right Now',
        //               color: Colors.white,
        //               nameColor: Colors.indigo,
        //             )
        //           ],
        //         ),
        //       ],
        //     ),
        //   ),
        );
  }
}
