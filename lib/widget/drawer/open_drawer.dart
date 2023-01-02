// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

import '../../style/apptext_style.dart';

class OpenDrawer extends StatelessWidget {
  final String pageName;
  final Color drawerIconColor;
  const OpenDrawer(
      {Key? key,
      required this.statusbarHeight,
      required GlobalKey<ScaffoldState> appkey,
      this.drawerIconColor = Colors.white,
      required this.pageName})
      : _key = appkey,
        super(key: key);

  final EdgeInsets statusbarHeight;
  final GlobalKey<ScaffoldState> _key;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: statusbarHeight.top, bottom: 0.0, right: 0.0, left: 0.0),
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                print('pressed');
                _key.currentState?.openDrawer();
              },
              icon: Icon(
                Icons.menu,
                color: drawerIconColor,
              )),
          Text(
            pageName,
            style: AppTextStyle.loginFontStyle(15.0, drawerIconColor),
          )
        ],
      ),
    );
  }
}
