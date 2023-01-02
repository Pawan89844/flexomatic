import 'package:flexomatic/style/apptext_style.dart';
import 'package:flexomatic/widget/button/appbutton.dart';
import 'package:flexomatic/widget/drawer/app_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../widget/drawer/open_drawer.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var statusbarHeight = MediaQuery.of(context).padding;
    return Scaffold(
      key: _key,
      drawer: const AppDrawer(),
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/account_bg.png'), fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              OpenDrawer(
                  statusbarHeight: statusbarHeight,
                  appkey: _key,
                  pageName: 'Account',
                  drawerIconColor: Colors.indigo),
              // Image.asset('assets/account_bg.png', fit: BoxFit.cover),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: size.height * 0.1),
                    Text('You are currently logged as:',
                        style:
                            AppTextStyle.loginFontStyle(14.0, Colors.indigo)),
                    Text('Your mail id',
                        style:
                            AppTextStyle.loginFontStyle(14.0, Colors.indigo)),
                    const SizedBox(height: 20.0),
                    AppButton(
                        onPressed: () {},
                        buttonName: 'Change Password',
                        color: Colors.indigo),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                    Text('Credit Card',
                        style:
                            AppTextStyle.loginFontStyle(14.0, Colors.indigo)),
                    Text('You don\'t have any payment methods.',
                        style:
                            AppTextStyle.loginFontStyle(14.0, Colors.indigo)),
                    const SizedBox(height: 20.0),
                    AppButton(
                        onPressed: () {},
                        buttonName: 'Add Payment Method',
                        color: Colors.indigo),
                    const SizedBox(height: 30.0),
                    const Text(
                      'Free Blocks',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 30.0),
                    SwitchListTile(
                      value: true,
                      onChanged: (value) {},
                      title: const Text(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
                      activeColor: Colors.indigo,
                    ),
                    SwitchListTile(
                      value: true,
                      onChanged: (value) {},
                      title: const Text(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
                      activeColor: Colors.indigo,
                    ),
                    SwitchListTile(
                      value: true,
                      onChanged: (value) {},
                      title: const Text(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
                      activeColor: Colors.indigo,
                    ),
                    SwitchListTile(
                      value: true,
                      onChanged: (value) {},
                      title: const Text(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
                      activeColor: Colors.indigo,
                    ),
                    SwitchListTile(
                      value: true,
                      onChanged: (value) {},
                      title: const Text(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
                      activeColor: Colors.indigo,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
