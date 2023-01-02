import 'package:flexomatic/style/apptext_style.dart';
import 'package:flexomatic/widget/drawer/app_drawer.dart';
import 'package:flexomatic/widget/drawer/open_drawer.dart';
import 'package:flutter/material.dart';

import '../../widget/background_build.dart';

class Invoice extends StatelessWidget {
  Invoice({Key? key}) : super(key: key);
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
              pageName: 'Invoices',
              drawerIconColor: Colors.indigo,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Info about our pricing',
                        style:
                            AppTextStyle.loginFontStyle(14.0, Colors.indigo)),
                    const SizedBox(width: 10.0),
                    const Icon(
                      Icons.info_outline,
                      color: Colors.indigo,
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
