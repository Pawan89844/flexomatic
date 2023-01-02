// ignore_for_file: avoid_print

import 'package:flexomatic/model/dummy_data.dart';
import 'package:flexomatic/screen/home/tab%20bar/tabcontent.dart';
import 'package:flexomatic/style/apptext_style.dart';
import 'package:flexomatic/widget/button/appbutton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widget/app_switch.dart';
import '../../widget/drawer/app_drawer.dart';
import '../../widget/drawer/open_drawer.dart';
import '../../widget/form/appform_field.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController? _tabController;
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  double _currentSliderValue = 20;
  double _currentSliderValue2 = 80;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 7, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var statusbarHeight = MediaQuery.of(context).padding;
    return Scaffold(
      key: _key,
      // appBar: AppBar(),
      drawer: const AppDrawer(),
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/home_bg.jpg'), fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              OpenDrawer(
                  statusbarHeight: statusbarHeight,
                  appkey: _key,
                  pageName: 'Home'),
              Column(
                children: [
                  SizedBox(height: statusbarHeight.top),
                  SizedBox(height: size.height * 0.06),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Text('Enable Flexone',
                            style: AppTextStyle.loginFontStyle(
                                14.0, Colors.white)),
                        Switch(
                          activeColor: Colors.white,
                          value: true,
                          onChanged: (value) {},
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.7,
                    child: AppButton(
                        onPressed: () {},
                        buttonName: 'Open Service Settings',
                        color: Colors.white,
                        nameColor: Colors.indigo),
                  ),
                  const SizedBox(height: 20.0),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        ExpansionTile(
                          leading: const Icon(Icons.calendar_month),
                          collapsedIconColor: Colors.white,
                          iconColor: Colors.white,
                          title: Text('Weekly Schedule',
                              style: AppTextStyle.loginFontStyle(
                                  14.0, Colors.white)),
                          children: [
                            TabBar(
                                isScrollable: true,
                                padding: const EdgeInsets.all(8.0),
                                controller: _tabController,
                                tabs: [
                                  Tab(
                                    child: Text('SUN',
                                        style: AppTextStyle.loginFontStyle(
                                            10.0, Colors.white)),
                                  ),
                                  Tab(
                                    child: Text('MON',
                                        style: AppTextStyle.loginFontStyle(
                                            10.0, Colors.white)),
                                  ),
                                  Tab(
                                    child: Text('TUE',
                                        style: AppTextStyle.loginFontStyle(
                                            10.0, Colors.white)),
                                  ),
                                  Tab(
                                    child: Text('WED',
                                        style: AppTextStyle.loginFontStyle(
                                            10.0, Colors.white)),
                                  ),
                                  Tab(
                                    child: Text('THU',
                                        style: AppTextStyle.loginFontStyle(
                                            10.0, Colors.white)),
                                  ),
                                  Tab(
                                    child: Text('FRI',
                                        style: AppTextStyle.loginFontStyle(
                                            10.0, Colors.white)),
                                  ),
                                  Tab(
                                    child: Text('SAT',
                                        style: AppTextStyle.loginFontStyle(
                                            10.0, Colors.white)),
                                  ),
                                ]),
                            SizedBox(
                              height: 150.0,
                              child: TabBarView(
                                  controller: _tabController,
                                  children: const [
                                    TabContent(day: 'SUNDAY'),
                                    TabContent(day: 'MONDAY'),
                                    TabContent(day: 'TUESDAY'),
                                    TabContent(day: 'WEDNESDAY'),
                                    TabContent(day: 'THURSDAY'),
                                    TabContent(day: 'FRIDAY'),
                                    TabContent(day: 'SATURDAY'),
                                  ]),
                            )
                          ],
                        ),
                        ExpansionTile(
                          leading: const Icon(Icons.warehouse_outlined),
                          collapsedIconColor: Colors.white,
                          iconColor: Colors.white,
                          title: Text('Warehouse Filters',
                              style: AppTextStyle.loginFontStyle(
                                  14.0, Colors.white)),
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 50.0, vertical: 0.0),
                              child: Column(
                                children: [
                                  const SizedBox(height: 10.0),
                                  Text(
                                    'You haven\'t configured any warehouse in Flexomatic so any of them will be matched',
                                    style: AppTextStyle.loginFontStyle(),
                                  ),
                                  const SizedBox(height: 20.0),
                                  AppButton(
                                    onPressed: () {},
                                    buttonName: 'Add Warehouse',
                                    color: Colors.white,
                                    nameColor: Colors.indigo,
                                  ),
                                  const SizedBox(height: 10.0),
                                ],
                              ),
                            )
                          ],
                        ),
                        ExpansionTile(
                          leading: Container(
                            height: 17.0,
                            width: 20.0,
                            margin: const EdgeInsets.symmetric(
                                horizontal: 3.0, vertical: 0.0),
                            alignment: Alignment.centerLeft,
                            child: Image.asset('assets/block_duration.png',
                                alignment: Alignment.center,
                                cacheHeight: 17,
                                color: Colors.white),
                          ),
                          collapsedIconColor: Colors.white,
                          iconColor: Colors.white,
                          title: Text('Block Duration',
                              style: AppTextStyle.loginFontStyle(
                                  14.0, Colors.white)),
                          children: [
                            const SizedBox(height: 20.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  child: const AppFormField(
                                    // controller: minStartTime,
                                    labelText: 'Min Start Time',
                                    // onTap: () => _selectTime(),
                                    labelTextColor: Colors.white,
                                    enabled: true,
                                    readOnly: true,
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.always,
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  child: const AppFormField(
                                    // controller: maxStartTime,
                                    labelText: 'Max Start Time',
                                    labelTextColor: Colors.white,
                                    enabled: true,
                                    readOnly: true,
                                    // onTap: () => _selectMaxTime(),
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.always,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 20.0),
                          ],
                        ),
                        ExpansionTile(
                          leading: Container(
                            height: 20.0,
                            width: 20.0,
                            margin: const EdgeInsets.symmetric(
                                horizontal: 3.0, vertical: 0.0),
                            alignment: Alignment.centerLeft,
                            child: Image.asset('assets/hours.png',
                                alignment: Alignment.center,
                                cacheHeight: 22,
                                color: Colors.white),
                          ),
                          collapsedIconColor: Colors.white,
                          iconColor: Colors.white,
                          title: Text('Block types & Hourly Wages',
                              style: AppTextStyle.loginFontStyle(
                                  14.0, Colors.white)),
                          // children: [

                          // ],
                        ),
                        ExpansionTile(
                          leading: Container(
                            height: 20.0,
                            width: 20.0,
                            margin: const EdgeInsets.symmetric(
                                horizontal: 3.0, vertical: 0.0),
                            alignment: Alignment.centerLeft,
                            child: Image.asset('assets/block_priority.png',
                                alignment: Alignment.center,
                                cacheHeight: 17,
                                color: Colors.white),
                          ),
                          collapsedIconColor: Colors.white,
                          iconColor: Colors.white,
                          title: Text('Block Priority',
                              style: AppTextStyle.loginFontStyle(
                                  14.0, Colors.white)),
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('Block selection priority',
                                    style: AppTextStyle.loginFontStyle()),
                                Text('Higher has highest priority',
                                    style: AppTextStyle.loginFontStyle()),
                              ],
                            ),
                            Theme(
                              data: Theme.of(context).copyWith(
                                  canvasColor: Colors.transparent,
                                  shadowColor: Colors.transparent,
                                  useMaterial3: true),
                              child: ReorderableListView.builder(
                                shrinkWrap: true,
                                itemExtent: 40.0,
                                itemCount: BLOCK_AND_HOURLY_WAGES.length,
                                onReorder: (oldIndex, newIndex) {
                                  setState(() {
                                    final index = newIndex > oldIndex
                                        ? newIndex - 1
                                        : newIndex;
                                    final item = BLOCK_AND_HOURLY_WAGES
                                        .removeAt(oldIndex);
                                    BLOCK_AND_HOURLY_WAGES.insert(index, item);
                                    // if (oldIndex < newIndex) {
                                    //   newIndex -= 1;
                                    // }
                                    // final int item =
                                    //     BLOCK_AND_HOURLY_WAGES.removeAt(oldIndex);
                                    // BLOCK_AND_HOURLY_WAGES.insert(newIndex, item);
                                  });
                                },
                                itemBuilder: (context, i) {
                                  return ListTile(
                                    key: ValueKey(BLOCK_AND_HOURLY_WAGES[i]),
                                    title: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 30.0, vertical: 0.0),
                                      child: Text(BLOCK_AND_HOURLY_WAGES[i],
                                          style: AppTextStyle.loginFontStyle()),
                                    ),
                                    trailing: const Icon(Icons.reorder,
                                        color: Colors.white),
                                  );
                                },
                              ),
                            ),
                            const SizedBox(height: 20.0),
                          ],
                        ),
                        ExpansionTile(
                          leading: const Icon(CupertinoIcons.wrench),
                          collapsedIconColor: Colors.white,
                          iconColor: Colors.white,
                          childrenPadding: const EdgeInsets.only(left: 30.0),
                          title: Text('Block Preferences',
                              style: AppTextStyle.loginFontStyle(
                                  14.0, Colors.white)),
                          children: [
                            AppSwitch(
                              title:
                                  'Grab reserved block that match my settings',
                              value: true,
                              onChanged: (value) {},
                            ),
                            AppSwitch(
                              title:
                                  'Decline Blocks not matching with Settings',
                              value: true,
                              onChanged: (value) {},
                            ),
                            AppSwitch(
                              title: 'Decline all reserved blocks',
                              value: true,
                              onChanged: (value) {},
                            ),
                            AppSwitch(
                              title:
                                  'Display settings while searching for blocks',
                              value: true,
                              onChanged: (value) {},
                            ),
                            AppSwitch(
                              title:
                                  'Interrupt the search once a block is found',
                              value: true,
                              onChanged: (value) {},
                            ),
                            AppSwitch(
                              title: 'Soft-Block protection (Beta)',
                              value: true,
                              onChanged: (value) {},
                            ),
                          ],
                        ),
                        ExpansionTile(
                          leading: const Icon(CupertinoIcons.speedometer),
                          collapsedIconColor: Colors.white,
                          iconColor: Colors.white,
                          title: Text('Speed Control',
                              style: AppTextStyle.loginFontStyle(
                                  14.0, Colors.white)),
                          childrenPadding: const EdgeInsets.only(
                              left: 30.0, top: 0.0, right: 0.0, bottom: 0.0),
                          children: [
                            const SizedBox(height: 10.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Refresh Delay(ms)',
                                  style: AppTextStyle.loginFontStyle(),
                                ),
                                Text(
                                  'The lower the faster',
                                  style: AppTextStyle.loginFontStyle(),
                                ),
                              ],
                            ),
                            Slider(
                              divisions: 50,
                              value: _currentSliderValue,
                              onChanged: (value) {
                                setState(() {
                                  _currentSliderValue = value;
                                });
                              },
                              min: 1,
                              max: 1000,
                              activeColor: Colors.indigo,
                              inactiveColor: Colors.white,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 0.0),
                              child: AppSwitch(
                                  value: true,
                                  onChanged: (p0) {},
                                  title: 'Randomize the refresh rate'),
                            ),
                            Slider(
                              divisions: 50,
                              value: _currentSliderValue2,
                              onChanged: (value) {
                                setState(() {
                                  _currentSliderValue2 = value;
                                });
                              },
                              min: 1,
                              max: 1000,
                              activeColor: Colors.indigo,
                              inactiveColor: Colors.white,
                            ),
                            const SizedBox(height: 10.0),
                          ],
                        ),
                        Container(),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      side: MaterialStateProperty.all(
                          const BorderSide(color: Colors.white)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                    ),
                    child: Text('Open Amazon Flex',
                        style: AppTextStyle.loginFontStyle(14.0, Colors.white)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
