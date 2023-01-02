import 'package:flexomatic/screen/account/account.dart';
import 'package:flexomatic/screen/home/home.dart';
import 'package:flexomatic/screen/invite/invite.dart';
import 'package:flexomatic/screen/invoice/invoice.dart';
import 'package:flexomatic/screen/troubleshooting/troubleshoot.dart';
import 'package:flexomatic/screen/warehouse/warehourse.dart';
import 'package:flexomatic/style/app_colors.dart';
import 'package:flexomatic/style/apptext_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'drawer_options.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: kAppDrawerHeaderColor),
              child: Column(
                children: [
                  Container(
                    height: 50.0,
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 0.0),
                    alignment: Alignment.centerLeft,
                    child: Image.asset(
                      'assets/appLogo.png',
                      // cacheHeight: 50,
                    ),
                  ),
                  ListTile(
                    leading: const CircleAvatar(child: Icon(Icons.person)),
                    title: Text('YOUR NAME',
                        style: AppTextStyle.loginFontStyle(13.0)),
                    subtitle: Text('youremail@.com',
                        style: AppTextStyle.loginFontStyle(11.0)),
                  )
                ],
              ),
            ),
            DrawerMenuOptions(
              icon: Icons.home,
              title: 'Home',
              onTap: (() => Navigator.of(context).pushReplacement(
                  CupertinoPageRoute(builder: (_) => const Home()))),
            ),
            DrawerMenuOptions(
              icon: Icons.receipt,
              title: 'Invoices',
              onTap: () => Navigator.of(context)
                  .push(CupertinoPageRoute(builder: (_) => Invoice())),
            ),
            DrawerMenuOptions(
              icon: Icons.menu,
              title: 'Warehouse Filters',
              onTap: () => Navigator.of(context)
                  .push(CupertinoPageRoute(builder: (_) => WareHouse())),
            ),
            DrawerMenuOptions(
              icon: Icons.person,
              title: 'Account',
              onTap: () => Navigator.of(context)
                  .push(CupertinoPageRoute(builder: (_) => const Account())),
            ),
            DrawerMenuOptions(
              icon: Icons.troubleshoot,
              title: 'Troubleshoot',
              onTap: () => Navigator.of(context)
                  .push(CupertinoPageRoute(builder: (_) => TroubleShoot())),
            ),
            const SizedBox(height: 30.0),
            DrawerMenuOptions(
              icon: Icons.people_alt_sharp,
              title: 'Invite new friends',
              onTap: () => Navigator.of(context)
                  .push(CupertinoPageRoute(builder: (_) => Invite())),
            ),
            DrawerMenuOptions(
              icon: Icons.message_sharp,
              title: 'Send feedback',
              onTap: () {},
            ),
            DrawerMenuOptions(
                icon: Icons.star_border, title: 'Rate us', onTap: () {}),
            const SizedBox(height: 30.0),
            DrawerMenuOptions(
                icon: Icons.facebook, title: 'Facebook', onTap: () {}),
            DrawerMenuOptions(
                icon: Icons.facebook, title: 'Twitter', onTap: () {}),
            DrawerMenuOptions(
                icon: Icons.facebook, title: 'Instagram', onTap: () {}),
          ],
        ),
      ),
    );
  }
}
