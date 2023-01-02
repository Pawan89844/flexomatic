// ignore_for_file: avoid_print

import 'package:flexomatic/style/app_colors.dart';
import 'package:flexomatic/style/apptext_style.dart';
import 'package:flexomatic/widget/form/appform_field.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TabContent extends StatefulWidget {
  final String day;
  const TabContent({Key? key, required this.day}) : super(key: key);

  @override
  State<TabContent> createState() => _TabContentState();
}

class _TabContentState extends State<TabContent> {
  TimeOfDay selectedMinTime = TimeOfDay.now();
  TimeOfDay selectedMaxTime = TimeOfDay.now();
  TextEditingController minStartTime = TextEditingController();
  TextEditingController maxStartTime = TextEditingController();
  String selectedMinTimeInText = '';
  String selectedMaxTimeInText = '';
  bool isLoaded = false;

  Future<void> _selectTime() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime:
          selectedMinTime.replacing(hour: selectedMinTime.hourOfPeriod),
      builder: (context, child) {
        return Theme(
          data: ThemeData.light().copyWith(
            colorScheme: const ColorScheme.light(
              // change the border color
              primary: kAppDrawerHeaderColor,
              // change the text color
              onSurface: kAppDrawerHeaderColor,
            ),
            // button colors
            buttonTheme: const ButtonThemeData(
              colorScheme: ColorScheme.light(
                primary: kAppDrawerHeaderColor,
              ),
            ),
          ),
          child: child!,
        );
      },
    );

    if (picked != null && picked != selectedMinTime) {
      setState(() {
        selectedMinTime = picked;
        dateFormat();
      });
    }
  }

  Future<void> _selectMaxTime() async {
    final TimeOfDay? pickedMax = await showTimePicker(
        context: context,
        initialTime:
            selectedMaxTime.replacing(hour: selectedMaxTime.hourOfPeriod));
    if (pickedMax != null && pickedMax != selectedMaxTime) {
      setState(() {
        selectedMaxTime = pickedMax;
        dateFormatMax();
      });
    }
  }

  void dateFormat() {
    // if (picked != null) {
    var df = DateFormat("h:mm a");
    var dt = df.parse(selectedMinTime.format(context));
    var finaltime = DateFormat('HH').format(dt);
    selectedMinTimeInText = finaltime;
    // setState(() {
    minStartTime.text = selectedMinTimeInText;
    //print(finaltime)
    // this will return 13:30 only
    // });
    // }
  }

  void dateFormatMax() {
    // if (picked != null) {
    var df = DateFormat("h:mm a");
    var dtMax = df.parse(selectedMaxTime.format(context));

    var finaltimeMax = DateFormat('HH').format(dtMax);
    selectedMaxTimeInText = finaltimeMax;
    // setState(() {
    maxStartTime.text = selectedMaxTimeInText;
    //print(finaltime)
    // this will return 13:30 only
    // });
    // }
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      dateFormat();
      dateFormatMax();
    });
  }

  // @override
  // void didChangeDependencies() {
  //   super.didChangeDependencies();
  //   if (isLoaded) {
  //     print('loaded $isLoaded');
  //     dateFormat();
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    // isLoaded = true;
    print('selected time:- $selectedMinTime');
    print('selected max time:- $selectedMaxTime');
    return Wrap(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Checkbox(
                  activeColor: Colors.white,
                  checkColor: Colors.black,
                  value: true,
                  onChanged: (value) {},
                ),
                Text(
                  'Activated',
                  style: AppTextStyle.loginFontStyle(14.0, Colors.white),
                ),
              ],
            ),
            const SizedBox(width: 30.0),
            Padding(
              padding: const EdgeInsets.only(
                  right: 12.0, left: 0.0, top: 0.0, bottom: 0.0),
              child: Text(
                widget.day,
                style: AppTextStyle.loginFontStyle(14.0, Colors.white),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
                child: AppFormField(
                  controller: minStartTime,
                  labelText: 'Min Start Time',
                  onTap: () => _selectTime(),
                  labelTextColor: Colors.white,
                  enabled: true,
                  readOnly: true,
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
                child: AppFormField(
                  controller: maxStartTime,
                  labelText: 'Max Start Time',
                  labelTextColor: Colors.white,
                  enabled: true,
                  readOnly: true,
                  onTap: () => _selectMaxTime(),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
