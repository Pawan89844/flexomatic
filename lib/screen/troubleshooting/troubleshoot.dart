import 'package:flexomatic/style/apptext_style.dart';
import 'package:flexomatic/widget/drawer/app_drawer.dart';
import 'package:flutter/material.dart';

import '../../widget/drawer/open_drawer.dart';

class TroubleShoot extends StatelessWidget {
  TroubleShoot({Key? key}) : super(key: key);
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
                image: AssetImage('assets/trableshoot_bg.png'),
                fit: BoxFit.cover)),
        child: Stack(
          children: [
            // Container(

            //   child: null,
            // ),
            OpenDrawer(
                statusbarHeight: statusbarHeight,
                appkey: _key,
                pageName: 'Troubleshoot',
                drawerIconColor: Colors.indigo),
            // Image.asset('assets/trableshoot_bg.png', fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Card(
                    child: ListTile(
                        title: Text(
                            'lorem ipsum is simple dummy text of the printing and type setting industry. Lorem Ipsum has'),
                        trailing: Icon(Icons.computer)),
                  ),
                  const Card(
                    child: ListTile(
                        title: Text(
                            'lorem ipsum is simple dummy text of the printing and type setting industry. Lorem Ipsum has'),
                        trailing: Icon(Icons.computer)),
                  ),
                  const Card(
                    child: ListTile(
                        title: Text(
                            'lorem ipsum is simple dummy text of the printing and type setting industry. Lorem Ipsum has'),
                        trailing: Icon(Icons.computer)),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
