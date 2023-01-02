import 'package:flexomatic/style/apptext_style.dart';
import 'package:flexomatic/widget/background_build.dart';
import 'package:flexomatic/widget/button/appbutton.dart';
import 'package:flexomatic/widget/drawer/app_drawer.dart';
import 'package:flexomatic/widget/drawer/open_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class WareHouse extends StatelessWidget {
  WareHouse({Key? key}) : super(key: key);
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
                pageName: 'Warehouse Filters',
                drawerIconColor: Colors.indigo,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'There is no warehouse at the moment... Click on the button below to add warehouses.',
                      style: AppTextStyle.loginFontStyle(18.0, Colors.indigo),
                    ),
                    const SizedBox(height: 15.0),
                    Text(
                      'Hint: as long as there is no selected warehouse, Flexomatic will match any of them.',
                      style: AppTextStyle.loginFontStyle(16.0, Colors.grey),
                    ),
                    const SizedBox(height: 10.0),
                    Text(
                      'if you can\'t find your warehouse on Flexomatic, please email us at support@flexomatic.app so we can add it.',
                      style: AppTextStyle.loginFontStyle(18.0, Colors.grey),
                    ),
                    const SizedBox(height: 10.0),
                    AppButton(
                        onPressed: () {},
                        buttonName: 'Search Warehouse',
                        color: Colors.indigo)
                  ],
                ),
              )
            ],
          )),
    );
  }
}
