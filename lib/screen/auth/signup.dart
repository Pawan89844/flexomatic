import 'package:flexomatic/screen/auth/login.dart';
import 'package:flexomatic/screen/auth/provider/auth_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../style/apptext_style.dart';
import '../../widget/button/appbutton.dart';
import '../../widget/button/apptext_button.dart';
import '../../widget/form/appform_field.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

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
              Text('Create your account',
                  style: AppTextStyle.loginFontStyle(22.0)),
              const SizedBox(height: 10.0),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: AppFormField(
                  labelText: 'Full Name',
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
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                child: AppFormField(
                  labelText: 'Email',
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
              const SizedBox(height: 10.0),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: AppFormField(
                  labelText: 'Confirm Password',
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
              Consumer(
                builder: (_, ref, __) => SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: AppButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          CupertinoPageRoute(builder: (_) => const Login()));
                    },
                    buttonName: 'SIGN UP',
                    color: Colors.white,
                    nameColor: Colors.indigo,
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              AppButton(
                onPressed: () {},
                buttonName: 'Already have an account?',
                color: Colors.white,
                nameColor: Colors.indigo,
              )
            ],
          ),
        ),
      ),
    );
  }
}
