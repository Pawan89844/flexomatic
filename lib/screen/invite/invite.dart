import 'package:flexomatic/style/apptext_style.dart';
import 'package:flexomatic/widget/background_build.dart';
import 'package:flexomatic/widget/drawer/app_drawer.dart';
import 'package:flexomatic/widget/drawer/open_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Invite extends StatelessWidget {
  Invite({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var statusbarHeight = MediaQuery.of(context).padding;
    return Scaffold(
      key: _key,
      drawer: const AppDrawer(),
      body: BackgroundBuild(
          size: size,
          image: 'assets/warehouse_bg.jpg',
          child: Stack(
            children: [
              OpenDrawer(
                statusbarHeight: statusbarHeight,
                appkey: _key,
                pageName: 'Invite new freind',
                drawerIconColor: Colors.indigo,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: statusbarHeight.top),
                    Text(
                      'Share the app with your friend ask him to use the referal code while sign up',
                      style: AppTextStyle.loginFontStyle(14.0, Colors.indigo),
                    ),
                    const SizedBox(height: 15.0),
                    Text(
                      'FLEXFIRST',
                      style: AppTextStyle.loginFontStyle(18.0, Colors.black),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
